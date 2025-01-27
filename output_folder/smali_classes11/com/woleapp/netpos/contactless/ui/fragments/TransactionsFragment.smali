.class public final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionsFragment;
.source "TransactionsFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionsFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,526:1\n77#2,6:527\n77#2,6:533\n77#2,6:539\n*S KotlinDebug\n*F\n+ 1 TransactionsFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment\n*L\n68#1:527,6\n75#1:533,6\n76#1:539,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010G\u001a\u0002032\u0006\u0010H\u001a\u00020I2\u0008\u0008\u0002\u0010J\u001a\u00020KH\u0002J\u0016\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020?2\u0006\u0010O\u001a\u00020PJ\'\u0010Q\u001a\u0002032\u0006\u0010R\u001a\u00020?2\u0008\u0010S\u001a\u0004\u0018\u00010\u000e2\u0006\u0010:\u001a\u00020;H\u0002\u00a2\u0006\u0002\u0010TJ\u0008\u0010U\u001a\u000203H\u0002J\u0008\u0010V\u001a\u000203H\u0002J\u0012\u0010W\u001a\u0002032\u0008\u0010X\u001a\u0004\u0018\u00010YH\u0016J$\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020]2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010X\u001a\u0004\u0018\u00010YH\u0016J\u0008\u0010`\u001a\u000203H\u0016J\u0008\u0010a\u001a\u000203H\u0016J\u0008\u0010b\u001a\u000203H\u0016J\u001a\u0010c\u001a\u0002032\u0006\u0010d\u001a\u00020[2\u0008\u0010X\u001a\u0004\u0018\u00010YH\u0016J\u0008\u0010e\u001a\u000203H\u0002J\u0010\u0010f\u001a\u0002032\u0006\u0010:\u001a\u00020;H\u0002J\u0008\u0010g\u001a\u000203H\u0002J)\u0010h\u001a\u0002032\u0006\u0010i\u001a\u00020?2\u0012\u0010j\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020?0k\"\u00020?H\u0002\u00a2\u0006\u0002\u0010lJ\u0008\u0010m\u001a\u000203H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001b\u0010\u0002\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020!X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010&\u001a\u00020\u001a8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\'\u0010\u0002\u001a\u0004\u0008(\u0010\u001d\"\u0004\u0008)\u0010\u001fR\u001b\u0010*\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\n\u001a\u0004\u0008,\u0010-R\"\u0010/\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020201\u0012\u0004\u0012\u000203\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000205X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u00010;X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020?X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010@\u001a\u00020A8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010\n\u001a\u0004\u0008B\u0010CR\u000e\u0010E\u001a\u00020FX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006n"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "_binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;",
        "accountDeletionViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "getAccountDeletionViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "accountDeletionViewModel$delegate",
        "Lkotlin/Lazy;",
        "adapter",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;",
        "amountToPayInDouble",
        "",
        "Ljava/lang/Double;",
        "binding",
        "getBinding",
        "()Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "getCompositeDisposable",
        "()Lio/reactivex/disposables/CompositeDisposable;",
        "setCompositeDisposable",
        "(Lio/reactivex/disposables/CompositeDisposable;)V",
        "ioScheduler",
        "Lio/reactivex/Scheduler;",
        "getIoScheduler$annotations",
        "getIoScheduler",
        "()Lio/reactivex/Scheduler;",
        "setIoScheduler",
        "(Lio/reactivex/Scheduler;)V",
        "layoutAccountBinding",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;",
        "layoutAccountDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "loader",
        "Landroid/app/AlertDialog;",
        "mainThreadScheduler",
        "getMainThreadScheduler$annotations",
        "getMainThreadScheduler",
        "setMainThreadScheduler",
        "nfcCardReaderViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        "getNfcCardReaderViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        "nfcCardReaderViewModel$delegate",
        "observer",
        "Lkotlin/Function1;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
        "",
        "progressDialog",
        "Landroid/app/ProgressDialog;",
        "qrAmountDialog",
        "qrAmountDialogForVerveCard",
        "qrAmoutDialogBinding",
        "Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;",
        "qrData",
        "Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;",
        "qrPinBlock",
        "Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;",
        "requestNarration",
        "",
        "scanQrViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "getScanQrViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "scanQrViewModel$delegate",
        "verveCardQrAmountDialogBinding",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;",
        "checkBalance",
        "cardData",
        "Lcom/danbamitale/epmslib/entities/CardData;",
        "accountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "colorizeString",
        "Landroid/text/SpannableStringBuilder;",
        "originalString",
        "color",
        "",
        "formatPinAndSendToServer",
        "pin",
        "amountDouble",
        "(Ljava/lang/String;Ljava/lang/Double;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V",
        "getBalance",
        "logout",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onDetach",
        "onStop",
        "onViewCreated",
        "view",
        "setService",
        "showAmountDialog",
        "showAmountDialogForVerveCard",
        "showMessage",
        "s",
        "messageString",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)V",
        "showPreAuthDialog",
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

.field private _binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

.field private final accountDeletionViewModel$delegate:Lkotlin/Lazy;

.field private adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

.field private amountToPayInDouble:Ljava/lang/Double;

.field public compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public ioScheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

.field private layoutAccountDialog:Landroidx/appcompat/app/AlertDialog;

.field private loader:Landroid/app/AlertDialog;

.field public mainThreadScheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final nfcCardReaderViewModel$delegate:Lkotlin/Lazy;

.field private observer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

.field private qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

.field private qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

.field private qrData:Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

.field private final qrPinBlock:Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;

.field private requestNarration:Ljava/lang/String;

.field private final scanQrViewModel$delegate:Lkotlin/Lazy;

.field private verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;


# direct methods
.method public static synthetic $r8$lambda$-M7SJIjoT5TAYbLR54OwVJNropU(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->onCreateView$lambda-10(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1hy3LgKknW64D-O0fIyiDaF5TyI(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->onCreateView$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cm8r-3b16yI-4YnzxVgWVk2qXm4(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getBalance$lambda-21(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Han2mK9-VFndBB5OFYZJJRWCRRc(Lkotlin/jvm/functions/Function1;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getBalance$lambda-23$lambda-22(Lkotlin/jvm/functions/Function1;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KIBPCMX8bSxnVO7OOb_Z7UJk6Ao(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->showPreAuthDialog$lambda-16$lambda-15(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-z-EOg8mOKKn0uDylwUrIWX6oU(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->showAmountDialogForVerveCard$lambda-19(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RRTNeuSPEn-CYlEUbCESNWF6z64(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->showAmountDialog$lambda-18(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKjOKEU5yDSzMXDKvwXTtHMSlak(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->checkBalance$lambda-26(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gnv_tYas5EK6jO10Z_cZkwh_jT0(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->showMessage$lambda-28$lambda-27(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uGrN434jf2JnABDsN668qJm-VwA(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->showPreAuthDialog$lambda-16$lambda-14(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xIVIGmsqBcE2gVD5shuu_HZOrS8(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->showPreAuthDialog$lambda-16$lambda-13(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xnrmat878h7VKjGsQlTT-9LAxYk(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->onCreateView$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y7bnhuv2PkubcVFcJbPasO4yjBw(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->onCreateView$lambda-9$lambda-8(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionsFragment;-><init>()V

    .line 68
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 527
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 528
    const/4 v1, 0x0

    .line 527
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 529
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 531
    nop

    .line 529
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 532
    nop

    .line 68
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->scanQrViewModel$delegate:Lkotlin/Lazy;

    .line 75
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 533
    .restart local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 534
    const/4 v1, 0x0

    .line 533
    .restart local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 535
    .restart local v2    # "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 537
    nop

    .line 535
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$4;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 538
    nop

    .line 75
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->nfcCardReaderViewModel$delegate:Lkotlin/Lazy;

    .line 76
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 539
    .restart local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 540
    const/4 v1, 0x0

    .line 539
    .restart local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 541
    .restart local v2    # "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$5;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 543
    nop

    .line 541
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$6;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$special$$inlined$activityViewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 544
    nop

    .line 76
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->accountDeletionViewModel$delegate:Lkotlin/Lazy;

    .line 78
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrPinBlock:Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;

    .line 79
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->amountToPayInDouble:Ljava/lang/Double;

    .line 62
    return-void
.end method

.method public static final synthetic access$checkBalance(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/danbamitale/epmslib/entities/CardData;Lcom/danbamitale/epmslib/utils/IsoAccountType;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .param p2, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->checkBalance(Lcom/danbamitale/epmslib/entities/CardData;Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    return-void
.end method

.method public static final synthetic access$getBalance(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    .line 61
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getBalance()V

    return-void
.end method

.method public static final synthetic access$getLayoutAccountBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    .line 61
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    return-object v0
.end method

.method public static final synthetic access$getLayoutAccountDialog$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    .line 61
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public static final synthetic access$showPreAuthDialog(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    .line 61
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->showPreAuthDialog()V

    return-void
.end method

.method private final checkBalance(Lcom/danbamitale/epmslib/entities/CardData;Lcom/danbamitale/epmslib/utils/IsoAccountType;)V
    .locals 12
    .param p1, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .param p2, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 388
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Terminal not configured"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 390
    return-void

    .line 393
    :cond_0
    new-instance v0, Lcom/danbamitale/epmslib/entities/HostConfig;

    .line 394
    sget-object v1, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    .line 395
    sget-object v2, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConnectionData()Lcom/danbamitale/epmslib/entities/ConnectionData;

    move-result-object v2

    .line 396
    sget-object v3, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 397
    sget-object v4, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 393
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/danbamitale/epmslib/entities/HostConfig;-><init>(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V

    .line 400
    .local v0, "hostConfig":Lcom/danbamitale/epmslib/entities/HostConfig;
    new-instance v11, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    sget-object v2, Lcom/danbamitale/epmslib/entities/TransactionType;->BALANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    move-object v1, v11

    move-object v7, p2

    invoke-direct/range {v1 .. v10}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 399
    nop

    .line 401
    .local v1, "requestData":Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    const-string v4, "progressDialog"

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    const-string v5, "Checking Balance..."

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 403
    new-instance v2, Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    invoke-direct {v2, v0}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;-><init>(Lcom/danbamitale/epmslib/entities/HostConfig;)V

    .line 405
    .local v2, "processor":Lcom/danbamitale/epmslib/processors/TransactionProcessor;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, p1}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->processTransaction(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;

    move-result-object v3

    .line 406
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 407
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    .line 405
    const-string v4, "processor.processTransac\u2026          }\n            }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    .local v3, "disposable":Lio/reactivex/disposables/Disposable;
    return-void
.end method

.method static synthetic checkBalance$default(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/danbamitale/epmslib/entities/CardData;Lcom/danbamitale/epmslib/utils/IsoAccountType;ILjava/lang/Object;)V
    .locals 0

    .line 384
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 386
    sget-object p2, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 384
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->checkBalance(Lcom/danbamitale/epmslib/entities/CardData;Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    return-void
.end method

.method private static final checkBalance$lambda-26(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Throwable;)V
    .locals 17
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "response"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    const-string v3, "progressDialog"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 411
    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    move-object/from16 v2, p2

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 412
    .local v3, "$i$a$-let-TransactionsFragment$checkBalance$disposable$1$1":I
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    .line 415
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 416
    nop

    .line 413
    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 417
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 418
    nop

    .line 411
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-TransactionsFragment$checkBalance$disposable$1$1":I
    nop

    .line 420
    :cond_3
    if-eqz p1, :cond_7

    move-object/from16 v2, p1

    .local v2, "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v3, 0x0

    .line 421
    .local v3, "$i$a$-let-TransactionsFragment$checkBalance$disposable$1$2":I
    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "A3"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 422
    const-string v4, "pref_config_data"

    invoke-static {v4}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 423
    const-string v4, "pref_keyholder"

    invoke-static {v4}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 424
    sget-object v4, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "requireContext().applicationContext"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    nop

    .line 424
    invoke-virtual {v4, v6, v5}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->init(Landroid/content/Context;Z)V

    .line 430
    :cond_4
    const-string v4, "Account Balance Check"

    invoke-static {v2, v4}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSText(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 432
    .local v4, "me":Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponseKt;->isApproved(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 433
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account Balance:\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponseKt;->getAccountBalances(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Ljava/util/List;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Iterable;

    const-string v7, "\n"

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v7, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$checkBalance$disposable$1$2$messageString$1;->INSTANCE:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$checkBalance$disposable$1$2$messageString$1;

    move-object v14, v7

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/16 v15, 0x1e

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 439
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 432
    :goto_1
    nop

    .line 442
    .local v6, "messageString":Ljava/lang/String;
    nop

    .line 443
    invoke-static {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponseKt;->isApproved(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "Approved"

    goto :goto_2

    :cond_6
    const-string v7, "Declined"

    .line 444
    :goto_2
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v6, v8, v1

    .line 445
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "me.toString()"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v8, v5

    .line 444
    nop

    .line 442
    invoke-direct {v0, v7, v8}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->showMessage(Ljava/lang/String;[Ljava/lang/String;)V

    .line 447
    nop

    .line 420
    .end local v2    # "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v3    # "$i$a$-let-TransactionsFragment$checkBalance$disposable$1$2":I
    .end local v4    # "me":Ljava/lang/StringBuilder;
    .end local v6    # "messageString":Ljava/lang/String;
    nop

    .line 448
    :cond_7
    return-void
.end method

.method private final formatPinAndSendToServer(Ljava/lang/String;Ljava/lang/Double;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V
    .locals 29
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "amountDouble"    # Ljava/lang/Double;
    .param p3, "qrData"    # Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    .line 481
    move-object/from16 v0, p0

    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->stringToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "formattedPadding":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 483
    if-eqz p2, :cond_2

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    .local v15, "it":D
    const/4 v3, 0x0

    .line 484
    .local v3, "$i$a$-let-TransactionsFragment$formatPinAndSendToServer$1":I
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "qrAmountDialogForVerveCard"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_0
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 485
    new-instance v17, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    .line 486
    nop

    .line 487
    invoke-virtual/range {p3 .. p3}, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;->getData()Ljava/lang/String;

    move-result-object v7

    .line 485
    const/4 v8, 0x0

    .line 488
    sget-object v4, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_MERCHANT_ID()Ljava/lang/String;

    move-result-object v9

    .line 485
    const/4 v10, 0x0

    .line 489
    nop

    .line 490
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requestNarration:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "requestNarration"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v5

    goto :goto_0

    :cond_1
    move-object v12, v4

    .line 485
    :goto_0
    const/16 v13, 0x14

    const/4 v14, 0x0

    move-object/from16 v4, v17

    move-wide v5, v15

    move-object v11, v1

    invoke-direct/range {v4 .. v14}, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 492
    .local v4, "qrDataToSendToBackend":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->setScannedQrIsVerveCard(Z)V

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v5

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget-object v6, Lcom/woleapp/netpos/contactless/util/AppConstants;->INSTANCE:Lcom/woleapp/netpos/contactless/util/AppConstants;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/util/AppConstants;->getGUID()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x6f

    const/16 v28, 0x0

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v28}, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;->copy$default(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->saveTheQrToSharedPrefs(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->postScannedQrRequestToServer(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)V

    .line 495
    sget-object v6, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v7, v0

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getSendQrToServerResponseVerve()Landroidx/lifecycle/LiveData;

    move-result-object v8

    .line 497
    new-instance v9, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

    invoke-direct {v9}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;-><init>()V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v10

    const-string v5, "requireActivity().supportFragmentManager"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$formatPinAndSendToServer$1$1;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$formatPinAndSendToServer$1$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v6 .. v11}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    .line 504
    nop

    .line 506
    .end local v3    # "$i$a$-let-TransactionsFragment$formatPinAndSendToServer$1":I
    .end local v4    # "qrDataToSendToBackend":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    .end local v15    # "it":D
    :cond_2
    return-void
.end method

.method private final getAccountDeletionViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->accountDeletionViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    return-object v0
.end method

.method private final getBalance()V
    .locals 5

    .line 359
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    .line 360
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/CardExtKt;->showCardDialog(Landroid/app/Activity;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 366
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$getBalance$2;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$getBalance$2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->observer:Lkotlin/jvm/functions/Function1;

    .line 378
    nop

    .local v0, "it":Lkotlin/jvm/functions/Function1;
    const/4 v1, 0x0

    .line 379
    .local v1, "$i$a$-let-TransactionsFragment$getBalance$3":I
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "add obs"

    invoke-static {v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getIccCardHelperLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 381
    nop

    .line 378
    .end local v0    # "it":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$i$a$-let-TransactionsFragment$getBalance$3":I
    nop

    .line 382
    return-void
.end method

.method private static final getBalance$lambda-21(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 7
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    if-eqz v6, :cond_0

    .local v6, "it":Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    const/4 v0, 0x0

    .line 363
    .local v0, "$i$a$-let-TransactionsFragment$getBalance$1$1":I
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v1

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->initiateNfcPayment(JJLcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V

    .line 364
    nop

    .line 362
    .end local v0    # "$i$a$-let-TransactionsFragment$getBalance$1$1":I
    .end local v6    # "it":Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    nop

    .line 365
    :cond_0
    return-void
.end method

.method private static final getBalance$lambda-23$lambda-22(Lkotlin/jvm/functions/Function1;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 1
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function1;
    .param p1, "p0"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getBinding()Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->_binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic getIoScheduler$annotations()V
    .locals 0
    .annotation runtime Ljavax/inject/Named;
        value = "io-scheduler"
    .end annotation

    return-void
.end method

.method public static synthetic getMainThreadScheduler$annotations()V
    .locals 0
    .annotation runtime Ljavax/inject/Named;
        value = "main-scheduler"
    .end annotation

    return-void
.end method

.method private final getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->nfcCardReaderViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    return-object v0
.end method

.method private final getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->scanQrViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    return-object v0
.end method

.method private final logout()V
    .locals 3

    .line 464
    const-string v0, "user_token"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 465
    const-string v0, "authenticated"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 466
    const-string v0, "pref_keyholder"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 467
    const-string v0, "pref_config_data"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 468
    const-string v0, "user"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 469
    sget-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->disconnect()V

    .line 470
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 472
    nop

    .line 471
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 474
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 475
    return-void
.end method

.method private static final onCreateView$lambda-10(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v0, "layoutAccountDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 223
    return-void
.end method

.method private static final onCreateView$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    const/4 v1, 0x0

    const-string v2, "layoutAccountBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->loadingDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->enterPhoneNumberLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 185
    return-void
.end method

.method private static final onCreateView$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->loader:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "loader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 189
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    if-nez v0, :cond_1

    const-string v0, "layoutAccountBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "username":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 191
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "Email cannot be empty"

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 192
    return-void

    .line 195
    :cond_3
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getAccountDeletionViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v1

    sget-object v2, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->deleteAccount(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 196
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 197
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 198
    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 195
    const-string v2, "accountDeletionViewModel\u2026      }\n                }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v2

    invoke-static {v1, v2}, Lio/reactivex/rxkotlin/DisposableKt;->addTo(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/Disposable;

    .line 219
    return-void
.end method

.method private static final onCreateView$lambda-9$lambda-8(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "resource"    # Lcom/woleapp/netpos/contactless/util/Resource;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Resource;->getStatus()Lcom/woleapp/netpos/contactless/model/Status;

    move-result-object v0

    sget-object v1, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "loader"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 214
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->loader:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->loader:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 210
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->INSTANCE:Lcom/dsofttech/dprefs/utils/DPrefs;

    check-cast v0, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    const/4 v1, 0x2

    const-string v3, "delete_account"

    invoke-static {v0, v3, v2, v1, v2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract$DefaultImpls;->getString$default(Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "errorMessage":Ljava/lang/String;
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1, v0}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .end local v0    # "errorMessage":Ljava/lang/String;
    goto :goto_2

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->loader:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 203
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    const-string v0, "layoutAccountDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 204
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "Account deleted successfully!"

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->logout()V

    goto :goto_2

    .line 214
    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 217
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setService()V
    .locals 17

    .line 249
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .local v2, "$this$setService_u24lambda_u2d11":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 250
    .local v3, "$i$a$-apply-TransactionsFragment$setService$listOfService$1":I
    new-instance v4, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v5, 0x0

    const-string v6, "Purchase"

    const v7, 0x7f08016a

    invoke-direct {v4, v5, v6, v7}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v4, "fcmbeasypay"

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "providussoftpos"

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v6, v8, v5, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    const-string v8, "Purchase With Cashback"

    const/4 v11, 0x7

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    .line 252
    const-string v12, "providus"

    check-cast v12, Ljava/lang/CharSequence;

    .line 251
    invoke-static {v6, v12, v5, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 255
    :cond_0
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    invoke-direct {v6, v11, v8, v7}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const-string v12, "zenith"

    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v6, v13, v5, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    invoke-direct {v6, v11, v8, v7}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    :cond_2
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    const/16 v13, 0xa

    const v14, 0x7f130171

    invoke-virtual {v0, v14}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "getString(R.string.pay_by_transfer)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v15, 0x7f08017a

    invoke-direct {v6, v13, v14, v15}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v13, 0x3

    const-string v14, "Settings"

    const v15, 0x7f0800c1

    invoke-direct {v6, v13, v14, v15}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const-string v16, "polaris"

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v5, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 263
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    invoke-direct {v6, v13, v14, v15}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 265
    :cond_3
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v7, 0x4

    const-string v13, "Balance Enquiry"

    const v14, 0x7f08010e

    invoke-direct {v6, v7, v13, v14}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    const v15, 0x7f13001d

    invoke-virtual {v0, v15}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v15, "getString(R.string.account_deletion)"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0xb

    const v14, 0x7f08007e

    invoke-direct {v6, v7, v11, v14}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v6, v12, v5, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 268
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    const v11, 0x7f08010e

    const/4 v12, 0x4

    invoke-direct {v6, v12, v13, v11}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    const v11, 0x7f13001d

    invoke-virtual {v0, v11}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7, v11, v14}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    :cond_4
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v7, 0x5

    const v11, 0x7f0800ff

    const-string v12, "Reprint"

    invoke-direct {v6, v7, v12, v11}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v6, Lcom/woleapp/netpos/contactless/model/Service;

    const/16 v7, 0x9

    const v11, 0x7f130164

    invoke-virtual {v0, v11}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "getString(R.string.notification)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v12, 0x7f0800f4

    invoke-direct {v6, v7, v11, v12}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    check-cast v4, Ljava/lang/CharSequence;

    const-string v6, "providuspos"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v4, v6, v5, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 274
    new-instance v4, Lcom/woleapp/netpos/contactless/model/Service;

    const v5, 0x7f08010e

    const/4 v6, 0x4

    invoke-direct {v4, v6, v13, v5}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    new-instance v4, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v5, 0x7

    const v6, 0x7f08016a

    invoke-direct {v4, v5, v8, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 277
    :cond_5
    nop

    .line 249
    .end local v2    # "$this$setService_u24lambda_u2d11":Ljava/util/ArrayList;
    .end local v3    # "$i$a$-apply-TransactionsFragment$setService$listOfService$1":I
    nop

    .line 278
    .local v1, "listOfService":Ljava/util/ArrayList;
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    if-nez v2, :cond_6

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v10, v2

    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-virtual {v10, v2}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;->submitList(Ljava/util/List;)V

    .line 279
    return-void
.end method

.method private final showAmountDialog(Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V
    .locals 2
    .param p1, "qrData"    # Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    .line 310
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "qrAmountDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 311
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v0, :cond_1

    const-string v0, "qrAmoutDialogBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->proceed:Landroid/widget/Button;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    return-void
.end method

.method private static final showAmountDialog$lambda-18(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;Landroid/view/View;)V
    .locals 20
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "$qrData"    # Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    .param p2, "it"    # Landroid/view/View;

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$qrData"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    const-string v3, "qrAmoutDialogBinding"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 313
    .local v1, "amountDouble":Ljava/lang/Double;
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_1
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_5

    .line 314
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v5, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_4
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    const v7, 0x7f130033

    invoke-virtual {v0, v7}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    .line 316
    :cond_5
    if-eqz v1, :cond_a

    move-object v5, v1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    .local v18, "it":D
    const/4 v5, 0x0

    .line 317
    .local v5, "$i$a$-let-TransactionsFragment$showAmountDialog$1$1":I
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v7, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v4

    :cond_6
    iget-object v3, v7, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 318
    :cond_7
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v3, :cond_8

    const-string v3, "qrAmountDialog"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_8
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 319
    new-instance v3, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    .line 320
    nop

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;->getData()Ljava/lang/String;

    move-result-object v10

    .line 319
    const/4 v11, 0x0

    .line 322
    sget-object v7, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_MERCHANT_ID()Ljava/lang/String;

    move-result-object v12

    .line 319
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 323
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requestNarration:Ljava/lang/String;

    if-nez v7, :cond_9

    const-string v7, "requestNarration"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v15, v4

    goto :goto_2

    :cond_9
    move-object v15, v7

    .line 319
    :goto_2
    const/16 v16, 0x34

    const/16 v17, 0x0

    move-object v7, v3

    move-wide/from16 v8, v18

    invoke-direct/range {v7 .. v17}, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 326
    .local v3, "qrDataToSendToBackend":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->setScannedQrIsVerveCard(Z)V

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->postScannedQrRequestToServer(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)V

    .line 328
    sget-object v6, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v7, v0

    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getSendQrToServerResponse()Landroidx/lifecycle/LiveData;

    move-result-object v8

    .line 330
    new-instance v9, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

    invoke-direct {v9}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;-><init>()V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v10

    const-string v4, "childFragmentManager"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$showAmountDialog$1$1$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$showAmountDialog$1$1$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v6 .. v11}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    .line 337
    nop

    .line 316
    .end local v3    # "qrDataToSendToBackend":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    .end local v5    # "$i$a$-let-TransactionsFragment$showAmountDialog$1$1":I
    .end local v18    # "it":D
    nop

    .line 338
    :cond_a
    return-void
.end method

.method private final showAmountDialogForVerveCard()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "qrAmountDialogForVerveCard"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 343
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v0, :cond_1

    const-string v0, "verveCardQrAmountDialogBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->proceed:Landroid/widget/Button;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    return-void
.end method

.method private static final showAmountDialogForVerveCard$lambda-19(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    const-string v1, "verveCardQrAmountDialogBinding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 345
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    const v3, 0x7f130033

    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 347
    nop

    .line 349
    .local v0, "amountDouble":Ljava/lang/Double;
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->amountToPayInDouble:Ljava/lang/Double;

    .line 350
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    iget-object v1, v3, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 351
    :cond_7
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    const-string v3, "qrAmountDialogForVerveCard"

    if-nez v1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_8
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 352
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v2, v1

    :goto_2
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 353
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrPinBlock:Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "STRING_PIN_BLOCK_DIALOG_TAG"

    invoke-virtual {v1, v2, v3}, Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private final varargs showMessage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "messageString"    # [Ljava/lang/String;

    .line 452
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "$this$showMessage_u24lambda_u2d28":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 453
    .local v1, "$i$a$-apply-TransactionsFragment$showMessage$1":I
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 454
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 455
    const-string v2, "Ok"

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 459
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 460
    nop

    .line 452
    .end local v0    # "$this$showMessage_u24lambda_u2d28":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v1    # "$i$a$-apply-TransactionsFragment$showMessage$1":I
    nop

    .line 461
    return-void
.end method

.method private static final showMessage$lambda-28$lambda-27(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 10
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p1, "$messageString"    # [Ljava/lang/String;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$messageString"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 457
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object p3

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->reversed([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "\n"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->prepareSMS(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private final showPreAuthDialog()V
    .locals 6

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$showPreAuthDialog_u24lambda_u2d12":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    .line 283
    .local v2, "$i$a$-apply-TransactionsFragment$showPreAuthDialog$dialog$1":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 284
    nop

    .line 282
    .end local v1    # "$this$showPreAuthDialog_u24lambda_u2d12":Landroid/app/AlertDialog$Builder;
    .end local v2    # "$i$a$-apply-TransactionsFragment$showPreAuthDialog$dialog$1":I
    nop

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 282
    nop

    .line 286
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$showPreAuthDialog_u24lambda_u2d16":Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;
    const/4 v3, 0x0

    .line 287
    .local v3, "$i$a$-apply-TransactionsFragment$showPreAuthDialog$preAuthDialogBinding$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 288
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;->executePendingBindings()V

    .line 289
    iget-object v4, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;->preAuthNew:Landroidx/cardview/widget/CardView;

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda4;-><init>(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v4, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;->preAuthComplete:Landroidx/cardview/widget/CardView;

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda5;-><init>(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v4, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;->cancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda6;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    nop

    .line 286
    .end local v2    # "$this$showPreAuthDialog_u24lambda_u2d16":Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;
    .end local v3    # "$i$a$-apply-TransactionsFragment$showPreAuthDialog$preAuthDialogBinding$1":I
    const-string v2, "inflate(LayoutInflater.f\u2026          }\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    nop

    .line 305
    .local v1, "preAuthDialogBinding":Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutPreauthDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 307
    return-void
.end method

.method private static final showPreAuthDialog$lambda-16$lambda-13(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 7
    .param p0, "$dialog"    # Landroid/app/AlertDialog;
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 291
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;

    sget-object v2, Lcom/danbamitale/epmslib/entities/TransactionType;->PRE_AUTHORIZATION:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;->newInstance$default(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;Lcom/danbamitale/epmslib/entities/TransactionType;ZILjava/lang/Object;)Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method private static final showPreAuthDialog$lambda-16$lambda-14(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Landroid/view/View;)V
    .locals 7
    .param p0, "$dialog"    # Landroid/app/AlertDialog;
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    .line 296
    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;

    .line 297
    nop

    .line 296
    const-string v2, "PreAuth"

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 295
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    .line 300
    return-void
.end method

.method private static final showPreAuthDialog$lambda-16$lambda-15(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "$dialog"    # Landroid/app/AlertDialog;
    .param p1, "it"    # Landroid/view/View;

    .line 302
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 303
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getView()Landroid/view/View;

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

.method public final colorizeString(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "color"    # I

    const-string v0, "originalString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    new-instance v0, Landroid/text/SpannableStringBuilder;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 511
    .local v0, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    nop

    .line 512
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 513
    nop

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 515
    nop

    .line 511
    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 517
    return-object v0
.end method

.method public final getCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "compositeDisposable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIoScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->ioScheduler:Lio/reactivex/Scheduler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ioScheduler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMainThreadScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->mainThreadScheduler:Lio/reactivex/Scheduler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mainThreadScheduler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 99
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/User;->getMid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 102
    .local v1, "$i$a$-let-TransactionsFragment$onCreate$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_MPGS_TAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-TransactionsFragment$onCreate$1":I
    if-nez v0, :cond_2

    .line 103
    :cond_1
    const-string v0, ""

    .line 101
    :cond_2
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requestNarration:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->alertDialog(Landroid/content/Context;Z)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->loader:Landroid/app/AlertDialog;

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->_binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    .line 114
    new-instance v1, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$onCreateView$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    .line 153
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    move-result-object v2

    const-string v3, "inflate(inflater, null, false)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    .local v4, "$this$onCreateView_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;
    const/4 v5, 0x0

    .line 154
    .local v5, "$i$a$-apply-TransactionsFragment$onCreateView$2":I
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->executePendingBindings()V

    .line 155
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 156
    nop

    .line 153
    .end local v4    # "$this$onCreateView_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;
    .end local v5    # "$i$a$-apply-TransactionsFragment$onCreateView$2":I
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    .line 158
    nop

    .line 159
    invoke-static {p1, v1, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    .local v4, "$this$onCreateView_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;
    const/4 v5, 0x0

    .line 160
    .local v5, "$i$a$-apply-TransactionsFragment$onCreateView$3":I
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->executePendingBindings()V

    .line 161
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 162
    nop

    .line 159
    .end local v4    # "$this$onCreateView_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;
    .end local v5    # "$i$a$-apply-TransactionsFragment$onCreateView$3":I
    nop

    .line 158
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    .line 164
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v2

    .local v4, "$this$onCreateView_u24lambda_u2d3":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v5, 0x0

    .line 165
    .local v5, "$i$a$-apply-TransactionsFragment$onCreateView$4":I
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v6, :cond_0

    const-string v6, "qrAmoutDialogBinding"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    :cond_0
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 166
    nop

    .line 164
    .end local v4    # "$this$onCreateView_u24lambda_u2d3":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v5    # "$i$a$-apply-TransactionsFragment$onCreateView$4":I
    nop

    .line 166
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v4, "Builder(requireContext()\u2026.root)\n        }.create()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

    .line 168
    nop

    .line 169
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v2

    .local v4, "$this$onCreateView_u24lambda_u2d4":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v5, 0x0

    .line 170
    .local v5, "$i$a$-apply-TransactionsFragment$onCreateView$5":I
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v6, :cond_1

    const-string v6, "verveCardQrAmountDialogBinding"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    :cond_1
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 171
    nop

    .line 169
    .end local v4    # "$this$onCreateView_u24lambda_u2d4":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v5    # "$i$a$-apply-TransactionsFragment$onCreateView$5":I
    nop

    .line 171
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v4, "Builder(requireContext()\u2026t)\n            }.create()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    .line 173
    invoke-static {p1, v1, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .local v2, "$this$onCreateView_u24lambda_u2d5":Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
    const/4 v3, 0x0

    .line 174
    .local v3, "$i$a$-apply-TransactionsFragment$onCreateView$6":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 175
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->executePendingBindings()V

    .line 176
    nop

    .line 173
    .end local v2    # "$this$onCreateView_u24lambda_u2d5":Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
    .end local v3    # "$i$a$-apply-TransactionsFragment$onCreateView$6":I
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    .line 177
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .local v2, "$this$onCreateView_u24lambda_u2d6":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v3, 0x0

    .line 178
    .local v3, "$i$a$-apply-TransactionsFragment$onCreateView$7":I
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    const-string v5, "layoutAccountBinding"

    if-nez v4, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 179
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 180
    nop

    .line 177
    .end local v2    # "$this$onCreateView_u24lambda_u2d6":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v3    # "$i$a$-apply-TransactionsFragment$onCreateView$7":I
    nop

    .line 180
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v2, "Builder(requireContext()\u2026(true)\n        }.create()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountDialog:Landroidx/appcompat/app/AlertDialog;

    .line 182
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    if-nez v0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->yesBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    if-nez v0, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->submitRequest:Landroid/widget/Button;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->layoutAccountBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    if-nez v0, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->noBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 226
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getBinding()Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 521
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionsFragment;->onDestroy()V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->_binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    .line 523
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionsFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 230
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionsFragment;->onDetach()V

    .line 231
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "transaction detached"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 235
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionsFragment;->onStop()V

    .line 236
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "on stop"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getIccCardHelperLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 238
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_TransactionsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 242
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getIccCardHelperLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 243
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getBinding()Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->rvTransactions:Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 244
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->getBinding()Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->rvTransactions:Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    if-nez v1, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 245
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->setService()V

    .line 246
    return-void
.end method

.method public final setCompositeDisposable(Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/reactivex/disposables/CompositeDisposable;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public final setIoScheduler(Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/reactivex/Scheduler;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->ioScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method public final setMainThreadScheduler(Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/reactivex/Scheduler;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->mainThreadScheduler:Lio/reactivex/Scheduler;

    return-void
.end method
