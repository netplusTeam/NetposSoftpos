.class public final Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NfcCardReaderViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNfcCardReaderViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NfcCardReaderViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,587:1\n819#2:588\n847#2,2:589\n1373#2:591\n1461#2,5:592\n1179#2,2:597\n1253#2,4:599\n1855#2,2:619\n467#3,7:603\n467#3,7:610\n215#4,2:617\n215#4,2:621\n*S KotlinDebug\n*F\n+ 1 NfcCardReaderViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel\n*L\n174#1:588\n174#1:589,2\n177#1:591\n177#1:592,5\n180#1:597,2\n180#1:599,4\n231#1:619,2\n210#1:603,7\n211#1:610,7\n225#1:617,2\n316#1:621,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010O\u001a\u00020P2\n\u00101\u001a\u000602j\u0002`3H\u0002J\u000e\u0010Q\u001a\u00020P2\u0006\u0010R\u001a\u00020SJ\u0008\u0010T\u001a\u00020PH\u0002J\u000e\u0010U\u001a\u00020P2\u0006\u0010V\u001a\u00020WJ\u0016\u0010X\u001a\u00020P2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\J\u0006\u0010]\u001a\u00020PJ\u001e\u0010^\u001a\u00020P2\u0006\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020`2\u0006\u0010b\u001a\u00020!J\u0008\u0010c\u001a\u00020PH\u0014J\u000e\u0010d\u001a\u00020P2\u0006\u0010e\u001a\u00020\u0012J\u0016\u0010f\u001a\u00020P2\u0006\u0010=\u001a\u00020\u00122\u0006\u0010g\u001a\u00020\u0012J\u000e\u0010h\u001a\u00020P2\u0006\u00104\u001a\u00020\u000cJ\u000e\u0010i\u001a\u00020P2\u0006\u0010j\u001a\u00020\u0010J\u0010\u0010k\u001a\u00020P2\u0008\u0010l\u001a\u0004\u0018\u00010\u0012J\u000e\u0010m\u001a\u00020P2\u0006\u0010n\u001a\u00020\u0016J\u0006\u0010o\u001a\u00020PJ\u0006\u0010p\u001a\u00020PR\'\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\'\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\r\u0010\u0008R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R)\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0013\u0010\u0008R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\n\u001a\u0004\u0008\u0019\u0010\u0008R)\u0010\u001b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\n\u001a\u0004\u0008\u001c\u0010\u0008R\u001a\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R)\u0010 \u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\n\u001a\u0004\u0008\"\u0010\u0008R\u001a\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\n\u001a\u0004\u0008&\u0010\u0008R\u000e\u0010(\u001a\u00020)X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020)X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0012\u00101\u001a\u000602j\u0002`3X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00104\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001d\u00109\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008:\u00100R\u0017\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00100.8F\u00a2\u0006\u0006\u001a\u0004\u0008<\u00100R\u001f\u0010=\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u00100R\u0017\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00160.8F\u00a2\u0006\u0006\u001a\u0004\u0008@\u00100R\u001d\u0010A\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008B\u00100R\u001f\u0010C\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u00100R\u001d\u0010E\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008F\u00100R\u001d\u0010G\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008H\u00100R\u001f\u0010I\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008J\u00100R\u001d\u0010K\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008L\u00100R\u001d\u0010M\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00050.8F\u00a2\u0006\u0006\u001a\u0004\u0008N\u00100\u00a8\u0006q"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_enableNfcForegroundDispatcher",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;",
        "get_enableNfcForegroundDispatcher",
        "()Landroidx/lifecycle/MutableLiveData;",
        "_enableNfcForegroundDispatcher$delegate",
        "Lkotlin/Lazy;",
        "_iccCardHelperLiveData",
        "Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
        "get_iccCardHelperLiveData",
        "_iccCardHelperLiveData$delegate",
        "_lastPosTransactionResponse",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "_message",
        "",
        "get_message",
        "_message$delegate",
        "_qrTransactionResponseFromWebView",
        "Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;",
        "_showAccountTypeDialog",
        "",
        "get_showAccountTypeDialog",
        "_showAccountTypeDialog$delegate",
        "_showPinPadDialog",
        "get_showPinPadDialog",
        "_showPinPadDialog$delegate",
        "_showPrintDialog",
        "_showQrPrintDialog",
        "_showWaitingDialog",
        "Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;",
        "get_showWaitingDialog",
        "_showWaitingDialog$delegate",
        "_smsSent",
        "_startVerveTransaction",
        "get_startVerveTransaction",
        "_startVerveTransaction$delegate",
        "amountInBytes",
        "Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;",
        "cashBackAmountInBytes",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "enableNfcForegroundDispatcher",
        "Landroidx/lifecycle/LiveData;",
        "getEnableNfcForegroundDispatcher",
        "()Landroidx/lifecycle/LiveData;",
        "icc",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "iccCardHelper",
        "getIccCardHelper",
        "()Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
        "setIccCardHelper",
        "(Lcom/woleapp/netpos/contactless/util/ICCCardHelper;)V",
        "iccCardHelperLiveData",
        "getIccCardHelperLiveData",
        "lastPosTransactionResponse",
        "getLastPosTransactionResponse",
        "message",
        "getMessage",
        "qrTransactionResponseFromWebView",
        "getQrTransactionResponseFromWebView",
        "showAccountTypeDialog",
        "getShowAccountTypeDialog",
        "showPinPadDialog",
        "getShowPinPadDialog",
        "showPrintDialog",
        "getShowPrintDialog",
        "showQrPrintDialog",
        "getShowQrPrintDialog",
        "showWaitingDialog",
        "getShowWaitingDialog",
        "smsSent",
        "getSmsSent",
        "startVerveTransaction",
        "getStartVerveTransaction",
        "createVisaCardData",
        "",
        "doCr100Transaction",
        "data",
        "Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;",
        "doMasterCardTransaction",
        "doVerveCardTransaction",
        "transactionFullDataDto",
        "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;",
        "doVisaTransaction",
        "nfcTransceiver",
        "Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;",
        "contactlessKernel",
        "Lcom/visa/app/ttpkernel/ContactlessKernel;",
        "finishNfcReading",
        "initiateNfcPayment",
        "amount",
        "",
        "cashBackAmount",
        "nfcPaymentType",
        "onCleared",
        "prepareSMS",
        "it",
        "sendSmS",
        "toString",
        "setIccCardHelperLiveData",
        "setLastPosTransactionResponse",
        "lastPosTrans",
        "setPinBlock",
        "encryptedPinBloc",
        "setQrTransactionResponse",
        "qrTransactionResponse",
        "showReceiptDialogForQrPayment",
        "stopNfcReader",
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
.field private final _enableNfcForegroundDispatcher$delegate:Lkotlin/Lazy;

.field private final _iccCardHelperLiveData$delegate:Lkotlin/Lazy;

.field private _lastPosTransactionResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final _message$delegate:Lkotlin/Lazy;

.field private final _qrTransactionResponseFromWebView:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;",
            ">;"
        }
    .end annotation
.end field

.field private final _showAccountTypeDialog$delegate:Lkotlin/Lazy;

.field private final _showPinPadDialog$delegate:Lkotlin/Lazy;

.field private final _showPrintDialog:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _showQrPrintDialog:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _showWaitingDialog$delegate:Lkotlin/Lazy;

.field private final _smsSent:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _startVerveTransaction$delegate:Lkotlin/Lazy;

.field private amountInBytes:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

.field private cashBackAmountInBytes:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final icc:Ljava/lang/StringBuilder;

.field private iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;


# direct methods
.method public constructor <init>()V
    .locals 9
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 44
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->icc:Ljava/lang/StringBuilder;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_lastPosTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    .line 51
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_enableNfcForegroundDispatcher$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_enableNfcForegroundDispatcher$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_enableNfcForegroundDispatcher$delegate:Lkotlin/Lazy;

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_qrTransactionResponseFromWebView:Landroidx/lifecycle/MutableLiveData;

    .line 63
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_iccCardHelperLiveData$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_iccCardHelperLiveData$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_iccCardHelperLiveData$delegate:Lkotlin/Lazy;

    .line 70
    new-instance v0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    .line 72
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_showAccountTypeDialog$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_showAccountTypeDialog$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showAccountTypeDialog$delegate:Lkotlin/Lazy;

    .line 79
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_showPinPadDialog$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_showPinPadDialog$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showPinPadDialog$delegate:Lkotlin/Lazy;

    .line 86
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_showWaitingDialog$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_showWaitingDialog$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showWaitingDialog$delegate:Lkotlin/Lazy;

    .line 96
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_startVerveTransaction$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_startVerveTransaction$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_startVerveTransaction$delegate:Lkotlin/Lazy;

    .line 102
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_message$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$_message$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_message$delegate:Lkotlin/Lazy;

    .line 109
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    .line 113
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showQrPrintDialog:Landroidx/lifecycle/MutableLiveData;

    .line 117
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_smsSent:Landroidx/lifecycle/MutableLiveData;

    .line 43
    return-void
.end method

.method public static final synthetic access$getAmountInBytes$p(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    .line 42
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->amountInBytes:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    return-object v0
.end method

.method public static final synthetic access$getCashBackAmountInBytes$p(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    .line 42
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->cashBackAmountInBytes:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    return-object v0
.end method

.method public static final synthetic access$get_message(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    .line 42
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_message()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get_showPinPadDialog(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    .line 42
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showPinPadDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get_showWaitingDialog(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    .line 42
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showWaitingDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method private final createVisaCardData(Ljava/lang/StringBuilder;)V
    .locals 14
    .param p1, "icc"    # Ljava/lang/StringBuilder;

    .line 435
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "create visa card"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    const-string v1, "9F3303E068C8"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, "9F350122"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "9F0902008C"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, "9F3403420300"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "ID"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "[^a-zA-Z0-9]"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/taponphone/visa/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 440
    nop

    .line 442
    .local v1, "buildId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "9F1E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/taponphone/visa/HexDump;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "buildIdHex":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "icc.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    .local v3, "iccData":Ljava/lang/String;
    new-instance v4, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;

    invoke-direct {v4}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;-><init>()V

    .line 446
    invoke-static {v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/HexUtil;->parseHex(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->parse([B)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;

    move-result-object v4

    .line 445
    nop

    .line 447
    .local v4, "tlvs":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;
    nop

    .line 448
    new-instance v5, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    .line 449
    nop

    .line 448
    const-string v6, "5F34"

    invoke-direct {v5, v6}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;->find(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v5

    .line 451
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->getHexValue()Ljava/lang/String;

    move-result-object v5

    .line 447
    nop

    .line 452
    .local v5, "panSequence":Ljava/lang/String;
    nop

    .line 453
    new-instance v6, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    .line 454
    nop

    .line 453
    const-string v7, "57"

    invoke-direct {v6, v7}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;->find(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v6

    .line 456
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->getHexValue()Ljava/lang/String;

    move-result-object v6

    .line 452
    nop

    .line 457
    .local v6, "track2":Ljava/lang/String;
    const-string v7, "track2"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    const-string v7, "D"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 458
    .local v7, "pan":Ljava/lang/String;
    new-instance v8, Lcom/danbamitale/epmslib/entities/CardData;

    .line 459
    nop

    .line 460
    nop

    .line 461
    const/4 v9, 0x3

    const-string v10, "0"

    invoke-static {v5, v9, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "leftPad(panSequence, 3, \"0\")"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    nop

    .line 458
    const-string v10, "051"

    invoke-direct {v8, v6, v3, v9, v10}, Lcom/danbamitale/epmslib/entities/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .local v8, "cardData":Lcom/danbamitale/epmslib/entities/CardData;
    new-array v9, v0, [Ljava/lang/Object;

    const-string v10, "got here nau, haba"

    invoke-static {v10, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    invoke-virtual {v9, v8}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCardData(Lcom/danbamitale/epmslib/entities/CardData;)V

    .line 466
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showWaitingDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    new-instance v10, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 467
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showPinPadDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    new-instance v10, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v10, v7}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 468
    new-array v0, v0, [Ljava/lang/Object;

    const-string v9, "got here nau, habatica"

    invoke-static {v9, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    return-void
.end method

.method private final doMasterCardTransaction()V
    .locals 2

    .line 479
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getINSTANCE()Lcom/woleapp/netpos/contactless/app/NetPosApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getOutcomeObserver()Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)V

    check-cast v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->resetObserver(Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;)V

    .line 519
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getINSTANCE()Lcom/woleapp/netpos/contactless/app/NetPosApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getTransactionsApi()Lcom/mastercard/terminalsdk/TransactionInterface;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$2;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$2;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)V

    check-cast v1, Lcom/mastercard/terminalsdk/listeners/PaymentDataProvider;

    invoke-interface {v0, v1}, Lcom/mastercard/terminalsdk/TransactionInterface;->initiatePayment(Lcom/mastercard/terminalsdk/listeners/PaymentDataProvider;)V

    .line 538
    return-void
.end method

.method private final get_enableNfcForegroundDispatcher()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;",
            ">;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_enableNfcForegroundDispatcher$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private final get_iccCardHelperLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_iccCardHelperLiveData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private final get_message()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_message$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private final get_showAccountTypeDialog()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showAccountTypeDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private final get_showPinPadDialog()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showPinPadDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private final get_showWaitingDialog()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;",
            ">;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showWaitingDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private final get_startVerveTransaction()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_startVerveTransaction$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method


# virtual methods
.method public final doCr100Transaction(Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;)V
    .locals 13
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->component1()Ljava/lang/String;

    move-result-object v0

    .local v0, "pan":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->component2()Ljava/lang/String;

    move-result-object v1

    .local v1, "track2":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->component3()Ljava/lang/String;

    move-result-object v2

    .local v2, "icc":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->component4()Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    move-result-object v3

    .line 418
    .local v3, "cardType":Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    new-instance v12, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f

    const/4 v11, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v12, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    .line 419
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    .local v4, "$this$doCr100Transaction_u24lambda_u2d11":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    const/4 v5, 0x0

    .line 420
    .local v5, "$i$a$-apply-NfcCardReaderViewModel$doCr100Transaction$1":I
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->getCardScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCardScheme(Ljava/lang/String;)V

    .line 421
    const-string v6, "CUSTOMER"

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCustomerName(Ljava/lang/String;)V

    .line 422
    nop

    .line 419
    .end local v4    # "$this$doCr100Transaction_u24lambda_u2d11":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .end local v5    # "$i$a$-apply-NfcCardReaderViewModel$doCr100Transaction$1":I
    nop

    .line 423
    new-instance v4, Lcom/danbamitale/epmslib/entities/CardData;

    .line 424
    nop

    .line 425
    nop

    .line 426
    nop

    .line 427
    nop

    .line 423
    const-string v5, ""

    const-string v6, "051"

    invoke-direct {v4, v1, v5, v0, v6}, Lcom/danbamitale/epmslib/entities/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .local v4, "cardData":Lcom/danbamitale/epmslib/entities/CardData;
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    invoke-virtual {v5, v4}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCardData(Lcom/danbamitale/epmslib/entities/CardData;)V

    .line 430
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showPinPadDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    new-instance v6, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v6, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 431
    invoke-static {}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->hideBluetoothDialog()V

    .line 432
    return-void
.end method

.method public final doVerveCardTransaction(Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;)V
    .locals 39
    .param p1, "transactionFullDataDto"    # Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;

    move-object/from16 v0, p0

    const-string v1, "transactionFullDataDto"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_enableNfcForegroundDispatcher()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v4, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;

    const/4 v5, 0x0

    .line 263
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 163
    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;-><init>(ZLcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;->getTransactionResult()Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;

    move-result-object v1

    .line 165
    .local v1, "transactionResult":Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;->getTransactionEndStatus()Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v7

    .local v3, "transactionEndStatus":Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    :goto_0
    const/4 v4, 0x0

    .line 169
    .local v4, "iccData":Ljava/lang/String;
    sget-object v8, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->APPROVED:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    if-eq v3, v8, :cond_2

    sget-object v8, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->DECLINED:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    if-ne v3, v8, :cond_1

    goto :goto_1

    .line 262
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showWaitingDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    new-instance v8, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v8, v7}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_startVerveTransaction()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v6}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_iccCardHelperLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    new-instance v6, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v15, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/Throwable;

    const-string v7, "Error occurred while reading card. Please confirm the card brand"

    invoke-direct {v12, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/16 v13, 0xf

    const/4 v14, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v6, v15}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    move-object/from16 v18, v1

    move-object/from16 v25, v3

    goto/16 :goto_d

    .line 170
    :cond_2
    :goto_1
    const-string v8, "57"

    const-string v9, "5A"

    const-string v10, "5F24"

    const-string v11, "5F20"

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .line 171
    .local v9, "unwantedTagsSet":Ljava/util/Set;
    invoke-static {}, Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;->getREQUIRED_TAGS()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 174
    .local v10, "requiredTagsSet":Ljava/util/Set;
    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 588
    .local v12, "$i$f$filterNot":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v11

    .local v14, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 589
    .local v15, "$i$f$filterNotTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    .local v5, "it":Ljava/lang/String;
    const/16 v18, 0x0

    .line 174
    .local v18, "$i$a$-filterNot-NfcCardReaderViewModel$doVerveCardTransaction$requiredOrder$1":I
    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "it":Ljava/lang/String;
    .end local v18    # "$i$a$-filterNot-NfcCardReaderViewModel$doVerveCardTransaction$requiredOrder$1":I
    if-nez v5, :cond_3

    invoke-interface {v13, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_2

    .line 590
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$filterNotTo":I
    move-object v5, v13

    check-cast v5, Ljava/util/List;

    .line 588
    nop

    .line 174
    .end local v11    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterNot":I
    nop

    .line 177
    .local v5, "requiredOrder":Ljava/util/List;
    invoke-virtual {v1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;->getTransactionOutcomeTlvItems()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    :cond_5
    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 591
    .local v11, "$i$f$flatMapSequence":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .local v12, "destination$iv$iv":Ljava/util/Collection;
    move-object v13, v7

    .local v13, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 592
    .local v14, "$i$f$flatMapSequenceTo":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move-object/from16 v18, v1

    .end local v1    # "transactionResult":Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;
    .local v18, "transactionResult":Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;
    if-eqz v16, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 593
    .local v16, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    check-cast v19, Lcom/alcineo/utils/tlv/TlvItem;

    .local v19, "tlvItem":Lcom/alcineo/utils/tlv/TlvItem;
    const/16 v20, 0x0

    .line 178
    .local v20, "$i$a$-flatMapSequence-NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$1":I
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ICC2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alcineo/utils/tlv/TlvItem;

    const/4 v2, 0x0

    aput-object v19, v1, v2

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lcom/alcineo/utils/tlv/TlvItem;->getChildren()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_6
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->plus(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 594
    .end local v19    # "tlvItem":Lcom/alcineo/utils/tlv/TlvItem;
    .end local v20    # "$i$a$-flatMapSequence-NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$1":I
    .local v1, "list$iv$iv":Lkotlin/sequences/Sequence;
    invoke-static {v12, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    move-object/from16 v2, p1

    move-object/from16 v1, v18

    goto :goto_3

    .line 596
    .end local v1    # "list$iv$iv":Lkotlin/sequences/Sequence;
    .end local v16    # "element$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$flatMapSequenceTo":I
    move-object v1, v12

    check-cast v1, Ljava/util/List;

    .line 591
    nop

    .end local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMapSequence":I
    check-cast v1, Ljava/lang/Iterable;

    .line 180
    nop

    .local v1, "$this$associate$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 597
    .local v2, "$i$f$associate":I
    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v11

    .line 598
    .local v11, "capacity$iv":I
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v12, Ljava/util/Map;

    .local v12, "destination$iv$iv":Ljava/util/Map;
    move-object v13, v1

    .local v13, "$this$associateTo$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 599
    .local v14, "$i$f$associateTo":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 600
    .restart local v16    # "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    check-cast v19, Lcom/alcineo/utils/tlv/TlvItem;

    .local v19, "it":Lcom/alcineo/utils/tlv/TlvItem;
    const/16 v20, 0x0

    .line 181
    .local v20, "$i$a$-associate-NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2":I
    invoke-virtual/range {v19 .. v19}, Lcom/alcineo/utils/tlv/TlvItem;->getTag()Lcom/alcineo/utils/tlv/TlvTag;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/alcineo/utils/tlv/TlvTag;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v22, v1

    .end local v1    # "$this$associate$iv":Ljava/lang/Iterable;
    .local v22, "$this$associate$iv":Ljava/lang/Iterable;
    const-string v1, "it.tag.toString()"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TlvTag("

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v7, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, ")"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v1, v7}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "tag":Ljava/lang/String;
    nop

    .line 185
    const-string v7, "9F10"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    move/from16 v24, v2

    .end local v2    # "$i$f$associate":I
    .local v24, "$i$f$associate":I
    const-string v2, "this as java.lang.String).toUpperCase(locale)"

    move-object/from16 v25, v3

    .end local v3    # "transactionEndStatus":Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    .local v25, "transactionEndStatus":Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    const-string v3, "ENGLISH"

    const-string v26, ""

    move-object/from16 v27, v4

    .end local v4    # "iccData":Ljava/lang/String;
    .local v27, "iccData":Ljava/lang/String;
    const-string v4, "it.value"

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v9

    .end local v9    # "unwantedTagsSet":Ljava/util/Set;
    .local v28, "unwantedTagsSet":Ljava/util/Set;
    const-string v9, "20"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/alcineo/utils/tlv/TlvItem;->getValue()[B

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v26

    check-cast v30, Ljava/lang/CharSequence;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    sget-object v4, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$1;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$1;

    move-object/from16 v35, v4

    check-cast v35, Lkotlin/jvm/functions/Function1;

    const/16 v36, 0x1e

    const/16 v37, 0x0

    move-object/from16 v29, v9

    invoke-static/range {v29 .. v37}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 187
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 190
    .end local v28    # "unwantedTagsSet":Ljava/util/Set;
    .restart local v9    # "unwantedTagsSet":Ljava/util/Set;
    :cond_8
    move-object/from16 v28, v9

    .end local v9    # "unwantedTagsSet":Ljava/util/Set;
    .restart local v28    # "unwantedTagsSet":Ljava/util/Set;
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual/range {v19 .. v19}, Lcom/alcineo/utils/tlv/TlvItem;->getValue()[B

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v26

    check-cast v30, Ljava/lang/CharSequence;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    sget-object v4, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$2;

    move-object/from16 v35, v4

    check-cast v35, Lkotlin/jvm/functions/Function1;

    const/16 v36, 0x1e

    const/16 v37, 0x0

    move-object/from16 v29, v7

    invoke-static/range {v29 .. v37}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 192
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_6

    .line 196
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/alcineo/utils/tlv/TlvItem;->getLength()Lcom/alcineo/utils/tlv/TlvLength;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alcineo/utils/tlv/TlvLength;->getValue()I

    move-result v7

    const/16 v9, 0xa

    if-ge v7, v9, :cond_a

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x30

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/alcineo/utils/tlv/TlvItem;->getLength()Lcom/alcineo/utils/tlv/TlvLength;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alcineo/utils/tlv/TlvLength;->getValue()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 199
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/alcineo/utils/tlv/TlvItem;->getLength()Lcom/alcineo/utils/tlv/TlvLength;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alcineo/utils/tlv/TlvLength;->getValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 196
    :goto_5
    nop

    .line 202
    .local v7, "lengthValue":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v38, v7

    .end local v7    # "lengthValue":Ljava/lang/String;
    .local v38, "lengthValue":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/alcineo/utils/tlv/TlvItem;->getValue()[B

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v26

    check-cast v30, Ljava/lang/CharSequence;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    sget-object v4, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$3;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$3;

    move-object/from16 v35, v4

    check-cast v35, Lkotlin/jvm/functions/Function1;

    const/16 v36, 0x1e

    const/16 v37, 0x0

    move-object/from16 v29, v7

    invoke-static/range {v29 .. v37}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 204
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .end local v38    # "lengthValue":Ljava/lang/String;
    :goto_6
    nop

    .line 208
    .local v2, "tagValue":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", VALUE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/alcineo/utils/tlv/TlvItem;->getLength()Lcom/alcineo/utils/tlv/TlvLength;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alcineo/utils/tlv/TlvLength;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ICC"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "tagValue":Ljava/lang/String;
    .end local v19    # "it":Lcom/alcineo/utils/tlv/TlvItem;
    .end local v20    # "$i$a$-associate-NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2":I
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v22

    move/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    move-object/from16 v9, v28

    const/16 v7, 0xa

    goto/16 :goto_4

    .line 602
    .end local v16    # "element$iv$iv":Ljava/lang/Object;
    .end local v22    # "$this$associate$iv":Ljava/lang/Iterable;
    .end local v24    # "$i$f$associate":I
    .end local v25    # "transactionEndStatus":Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    .end local v27    # "iccData":Ljava/lang/String;
    .end local v28    # "unwantedTagsSet":Ljava/util/Set;
    .local v1, "$this$associate$iv":Ljava/lang/Iterable;
    .local v2, "$i$f$associate":I
    .restart local v3    # "transactionEndStatus":Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    .restart local v4    # "iccData":Ljava/lang/String;
    .restart local v9    # "unwantedTagsSet":Ljava/util/Set;
    :cond_b
    move-object/from16 v22, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v9

    .line 598
    .end local v1    # "$this$associate$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$associate":I
    .end local v3    # "transactionEndStatus":Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    .end local v4    # "iccData":Ljava/lang/String;
    .end local v9    # "unwantedTagsSet":Ljava/util/Set;
    .end local v12    # "destination$iv$iv":Ljava/util/Map;
    .end local v13    # "$this$associateTo$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$associateTo":I
    .restart local v22    # "$this$associate$iv":Ljava/lang/Iterable;
    .restart local v24    # "$i$f$associate":I
    .restart local v25    # "transactionEndStatus":Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    .restart local v27    # "iccData":Ljava/lang/String;
    .restart local v28    # "unwantedTagsSet":Ljava/util/Set;
    nop

    .line 210
    .end local v11    # "capacity$iv":I
    .end local v22    # "$this$associate$iv":Ljava/lang/Iterable;
    .end local v24    # "$i$f$associate":I
    move-object v1, v12

    .local v1, "$this$filterKeys$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 603
    .local v2, "$i$f$filterKeys":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 604
    .local v3, "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 605
    .local v7, "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 210
    .local v11, "$i$a$-filterKeys-NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$3":I
    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .end local v9    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-filterKeys-NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$3":I
    if-eqz v9, :cond_c

    .line 606
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 609
    .end local v7    # "entry$iv":Ljava/util/Map$Entry;
    :cond_d
    move-object v1, v3

    check-cast v1, Ljava/util/Map;

    .line 211
    .end local v1    # "$this$filterKeys$iv":Ljava/util/Map;
    .end local v2    # "$i$f$filterKeys":I
    .end local v3    # "result$iv":Ljava/util/LinkedHashMap;
    nop

    .restart local v1    # "$this$filterKeys$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 610
    .restart local v2    # "$i$f$filterKeys":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 611
    .restart local v3    # "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 612
    .restart local v7    # "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 211
    .local v11, "$i$a$-filterKeys-NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$4":I
    const-string v12, "8E"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const/4 v9, 0x1

    .end local v9    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-filterKeys-NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$4":I
    xor-int/lit8 v11, v12, 0x1

    if-eqz v11, :cond_e

    .line 613
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 616
    .end local v7    # "entry$iv":Ljava/util/Map$Entry;
    :cond_f
    move-object v1, v3

    check-cast v1, Ljava/util/Map;

    .line 212
    .end local v1    # "$this$filterKeys$iv":Ljava/util/Map;
    .end local v2    # "$i$f$filterKeys":I
    .end local v3    # "result$iv":Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 176
    nop

    .line 217
    .local v1, "tagValueMap":Ljava/util/Map;
    const/4 v2, 0x5

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "9C"

    const-string v4, "0100"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 218
    const-string v3, "9F09"

    const-string v4, "020002"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 217
    const/4 v3, 0x2

    .line 219
    const-string v4, "9F03"

    const-string v7, "06000000000000"

    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    .line 217
    const/4 v3, 0x3

    .line 220
    const-string v4, "9F1E"

    const-string v7, "083132333435363738"

    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    .line 217
    const/4 v3, 0x4

    .line 221
    const-string v4, "9F27"

    const-string v7, "0180"

    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    .line 217
    nop

    .line 216
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 225
    .local v2, "replacementTags":Ljava/util/Map;
    move-object v3, v2

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 617
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, "element$iv":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 225
    .local v11, "$i$a$-forEach-NfcCardReaderViewModel$doVerveCardTransaction$1":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "tag":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 226
    .local v13, "value":Ljava/lang/String;
    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    nop

    .end local v9    # "element$iv":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-forEach-NfcCardReaderViewModel$doVerveCardTransaction$1":I
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    goto :goto_9

    .line 618
    :cond_10
    nop

    .line 230
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v3, "orderedIccData":Ljava/lang/StringBuilder;
    move-object v4, v5

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 619
    .local v7, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .restart local v12    # "tag":Ljava/lang/String;
    const/4 v13, 0x0

    .line 232
    .local v13, "$i$a$-forEach-NfcCardReaderViewModel$doVerveCardTransaction$2":I
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_11

    .local v14, "value":Ljava/lang/String;
    const/4 v15, 0x0

    .line 233
    .local v15, "$i$a$-let-NfcCardReaderViewModel$doVerveCardTransaction$2$1":I
    move-object/from16 v16, v2

    .end local v2    # "replacementTags":Ljava/util/Map;
    .local v16, "replacementTags":Ljava/util/Map;
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    nop

    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "$i$a$-let-NfcCardReaderViewModel$doVerveCardTransaction$2$1":I
    goto :goto_b

    .line 232
    .end local v16    # "replacementTags":Ljava/util/Map;
    .restart local v2    # "replacementTags":Ljava/util/Map;
    :cond_11
    move-object/from16 v16, v2

    .end local v2    # "replacementTags":Ljava/util/Map;
    .restart local v16    # "replacementTags":Ljava/util/Map;
    :goto_b
    nop

    .line 235
    move-object/from16 v2, v16

    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "$i$a$-forEach-NfcCardReaderViewModel$doVerveCardTransaction$2":I
    goto :goto_a

    .line 620
    .end local v16    # "replacementTags":Ljava/util/Map;
    .restart local v2    # "replacementTags":Ljava/util/Map;
    :cond_12
    move-object/from16 v16, v2

    .line 238
    .end local v2    # "replacementTags":Ljava/util/Map;
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    .restart local v16    # "replacementTags":Ljava/util/Map;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "orderedIccData.toString()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    .line 241
    .end local v27    # "iccData":Ljava/lang/String;
    .local v4, "iccData":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    .local v2, "track2":Ljava/lang/String;
    if-eqz v2, :cond_13

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/CharSequence;

    const-string v7, "D"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    invoke-static/range {v19 .. v24}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_c

    :cond_13
    const/4 v7, 0x0

    .line 243
    .local v7, "pan":Ljava/lang/String;
    :goto_c
    if-eqz v2, :cond_14

    if-eqz v7, :cond_14

    .line 244
    new-instance v8, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1f

    const/16 v36, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v29 .. v36}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    .line 245
    iget-object v8, v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    .local v8, "$this$doVerveCardTransaction_u24lambda_u2d8":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    const/4 v9, 0x0

    .line 246
    .local v9, "$i$a$-apply-NfcCardReaderViewModel$doVerveCardTransaction$3":I
    sget-object v11, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VERVE:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v11}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCardScheme(Ljava/lang/String;)V

    .line 247
    const-string v11, "CUSTOMER"

    invoke-virtual {v8, v11}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCustomerName(Ljava/lang/String;)V

    .line 248
    nop

    .line 245
    .end local v8    # "$this$doVerveCardTransaction_u24lambda_u2d8":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .end local v9    # "$i$a$-apply-NfcCardReaderViewModel$doVerveCardTransaction$3":I
    nop

    .line 249
    new-instance v8, Lcom/danbamitale/epmslib/entities/CardData;

    .line 250
    nop

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 249
    const-string v9, "051"

    invoke-direct {v8, v2, v4, v7, v9}, Lcom/danbamitale/epmslib/entities/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v8, "cardData":Lcom/danbamitale/epmslib/entities/CardData;
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    invoke-virtual {v9, v8}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCardData(Lcom/danbamitale/epmslib/entities/CardData;)V

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showWaitingDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    new-instance v11, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v11}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showPinPadDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    new-instance v11, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v11, v7}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v11}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 258
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CardData: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v11, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "CardTransaction"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_startVerveTransaction()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    new-instance v11, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v11, v6}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v11}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 266
    .end local v1    # "tagValueMap":Ljava/util/Map;
    .end local v2    # "track2":Ljava/lang/String;
    .end local v3    # "orderedIccData":Ljava/lang/StringBuilder;
    .end local v5    # "requiredOrder":Ljava/util/List;
    .end local v7    # "pan":Ljava/lang/String;
    .end local v8    # "cardData":Lcom/danbamitale/epmslib/entities/CardData;
    .end local v10    # "requiredTagsSet":Ljava/util/Set;
    .end local v16    # "replacementTags":Ljava/util/Map;
    .end local v28    # "unwantedTagsSet":Ljava/util/Set;
    :cond_14
    :goto_d
    return-void
.end method

.method public final doVisaTransaction(Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;Lcom/visa/app/ttpkernel/ContactlessKernel;)V
    .locals 24
    .param p1, "nfcTransceiver"    # Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;
    .param p2, "contactlessKernel"    # Lcom/visa/app/ttpkernel/ContactlessKernel;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "nfcTransceiver"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactlessKernel"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    .line 273
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->icc:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance()Lcom/visa/app/ttpkernel/ContactlessConfiguration;

    move-result-object v4

    .line 276
    .local v4, "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    invoke-virtual {v4}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getTerminalData()Ljava/util/HashMap;

    move-result-object v0

    const-string v5, "contactlessConfiguration.terminalData"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    iget-object v6, v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->amountInBytes:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    if-nez v6, :cond_0

    const-string v6, "amountInBytes"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_0
    invoke-virtual {v6}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v6

    const-string v8, "9F02"

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {v4}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getTerminalData()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    iget-object v5, v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->cashBackAmountInBytes:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    if-nez v5, :cond_1

    const-string v5, "cashBackAmountInBytes"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_1
    invoke-virtual {v5}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v5

    const-string v6, "9F03"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const/4 v5, 0x0

    .line 283
    .local v5, "selectedAid":[B
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;-><init>()V

    .line 282
    move-object v6, v0

    .line 284
    .local v6, "ppseManager":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;
    nop

    .line 286
    :try_start_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;->getSupportedAids()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->setSupportedApps(Ljava/util/List;)V

    .line 289
    move-object v0, v2

    check-cast v0, Lcom/visa/app/ttpkernel/NfcTransceiver;

    invoke-virtual {v6, v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->selectPPSE(Lcom/visa/app/ttpkernel/NfcTransceiver;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->ABORTED:Lcom/visa/app/ttpkernel/TtpOutcome;

    .line 294
    .local v0, "outcome":Lcom/visa/app/ttpkernel/TtpOutcome;
    const-string v8, ""

    .line 295
    .local v8, "outComeResponse":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x0

    if-eqz v5, :cond_d

    .line 298
    invoke-virtual {v4}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getTerminalData()Ljava/util/HashMap;

    move-result-object v10

    .line 299
    .local v10, "myData":Ljava/util/HashMap;
    const-string v11, "myData"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v10

    check-cast v11, Ljava/util/Map;

    const-string v12, "4F"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-object v11, v10

    check-cast v11, Ljava/util/Map;

    .line 301
    const/16 v12, 0x10

    new-array v12, v12, [B

    fill-array-data v12, :array_0

    .line 302
    nop

    .line 301
    nop

    .line 303
    nop

    .line 301
    nop

    .line 304
    nop

    .line 301
    nop

    .line 305
    nop

    .line 301
    nop

    .line 306
    nop

    .line 301
    nop

    .line 307
    nop

    .line 301
    nop

    .line 308
    nop

    .line 301
    nop

    .line 309
    nop

    .line 301
    nop

    .line 310
    nop

    .line 301
    nop

    .line 311
    nop

    .line 301
    nop

    .line 312
    nop

    .line 301
    nop

    .line 312
    nop

    .line 301
    nop

    .line 312
    nop

    .line 301
    nop

    .line 312
    nop

    .line 301
    nop

    .line 312
    nop

    .line 301
    nop

    .line 300
    const-string v13, "9F4E"

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-array v11, v9, [Ljava/lang/Object;

    const-string v12, "available keys"

    invoke-static {v12, v11}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    move-object v11, v10

    check-cast v11, Ljava/util/Map;

    .local v11, "$this$forEach$iv":Ljava/util/Map;
    const/4 v12, 0x0

    .line 621
    .local v12, "$i$f$forEach":I
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .local v14, "element$iv":Ljava/util/Map$Entry;
    move-object v15, v14

    .local v15, "it":Ljava/util/Map$Entry;
    const/16 v16, 0x0

    .line 317
    .local v16, "$i$a$-forEach-NfcCardReaderViewModel$doVisaTransaction$1":I
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Ljava/lang/String;

    move-object/from16 v17, v5

    .end local v5    # "selectedAid":[B
    .local v17, "selectedAid":[B
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v7, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    move-object/from16 v5, v17

    .end local v14    # "element$iv":Ljava/util/Map$Entry;
    .end local v15    # "it":Ljava/util/Map$Entry;
    .end local v16    # "$i$a$-forEach-NfcCardReaderViewModel$doVisaTransaction$1":I
    goto :goto_2

    .line 622
    .end local v17    # "selectedAid":[B
    .restart local v5    # "selectedAid":[B
    :cond_2
    move-object/from16 v17, v5

    .line 321
    .end local v5    # "selectedAid":[B
    .end local v11    # "$this$forEach$iv":Ljava/util/Map;
    .end local v12    # "$i$f$forEach":I
    .restart local v17    # "selectedAid":[B
    move-object v5, v2

    check-cast v5, Lcom/visa/app/ttpkernel/NfcTransceiver;

    invoke-virtual {v3, v5, v4}, Lcom/visa/app/ttpkernel/ContactlessKernel;->performTransaction(Lcom/visa/app/ttpkernel/NfcTransceiver;Lcom/visa/app/ttpkernel/ContactlessConfiguration;)Lcom/visa/app/ttpkernel/ContactlessResult;

    move-result-object v5

    .line 320
    nop

    .line 324
    .local v5, "contactlessResult":Lcom/visa/app/ttpkernel/ContactlessResult;
    invoke-virtual {v5}, Lcom/visa/app/ttpkernel/ContactlessResult;->getFinalOutcome()Lcom/visa/app/ttpkernel/TtpOutcome;

    move-result-object v7

    const-string v11, "contactlessResult.finalOutcome"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    .line 325
    sget-object v7, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/visa/app/ttpkernel/TtpOutcome;->ordinal()I

    move-result v11

    aget v7, v7, v11

    packed-switch v7, :pswitch_data_0

    .line 347
    const-string v7, ""

    goto :goto_3

    .line 343
    :pswitch_0
    const-string v7, "GPO Returned 6986. Application Try Again."

    goto :goto_3

    .line 339
    :pswitch_1
    const-string v7, "PPSE:Try Next Application"

    goto :goto_3

    .line 335
    :pswitch_2
    const-string v7, "Transaction Terminated"

    goto :goto_3

    .line 331
    :pswitch_3
    const-string v7, "Transaction Declined"

    goto :goto_3

    .line 327
    :pswitch_4
    const-string v7, "Online Approval Requested"

    .line 325
    :goto_3
    move-object v8, v7

    .line 352
    invoke-virtual/range {p2 .. p2}, Lcom/visa/app/ttpkernel/ContactlessKernel;->getKernelData()Ljava/util/HashMap;

    .line 355
    invoke-virtual/range {p2 .. p2}, Lcom/visa/app/ttpkernel/ContactlessKernel;->getKernelData()Ljava/util/HashMap;

    move-result-object v7

    .local v7, "version":Ljava/util/HashMap;
    const/4 v11, 0x0

    .local v11, "key":Ljava/lang/String;
    const/4 v12, 0x0

    .line 358
    .local v12, "value":Ljava/lang/String;
    const-string v13, "version"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v7

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "key is "

    const-string v9, "getHexString(value1)"

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    .local v3, "key1":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 359
    .local v14, "value1":[B
    if-eqz v14, :cond_4

    .line 360
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    .line 361
    invoke-static {v14}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v2

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v2, v15}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    invoke-static {}, Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;->getREQUIRED_TAGS()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    iget-object v2, v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->icc:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .end local v3    # "key1":Ljava/lang/String;
    .end local v14    # "value1":[B
    :cond_3
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v9, 0x0

    goto :goto_4

    .line 359
    .restart local v3    # "key1":Ljava/lang/String;
    .restart local v14    # "value1":[B
    :cond_4
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v9, 0x0

    goto :goto_4

    .line 371
    .end local v3    # "key1":Ljava/lang/String;
    .end local v14    # "value1":[B
    :cond_5
    invoke-virtual {v5}, Lcom/visa/app/ttpkernel/ContactlessResult;->getData()Ljava/util/HashMap;

    move-result-object v3

    .line 372
    .local v3, "cardData":Ljava/util/HashMap;
    const-string v13, "cardData"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v3

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v3

    .end local v3    # "cardData":Ljava/util/HashMap;
    .local v20, "cardData":Ljava/util/HashMap;
    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    .local v3, "key1":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 373
    .restart local v14    # "value1":[B
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    .line 374
    move-object/from16 v19, v3

    .end local v3    # "key1":Ljava/lang/String;
    .local v19, "key1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    const/4 v4, 0x0

    .end local v4    # "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    .end local v7    # "version":Ljava/util/HashMap;
    .local v21, "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    .local v22, "version":Ljava/util/HashMap;
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v7}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    if-eqz v14, :cond_7

    .line 376
    invoke-static {v14}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v3

    .line 377
    invoke-static {}, Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;->getREQUIRED_TAGS()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 378
    iget-object v3, v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->icc:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .end local v14    # "value1":[B
    .end local v19    # "key1":Ljava/lang/String;
    :cond_6
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v7, v22

    goto :goto_5

    .line 375
    .restart local v14    # "value1":[B
    .restart local v19    # "key1":Ljava/lang/String;
    :cond_7
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v7, v22

    goto :goto_5

    .line 382
    .end local v14    # "value1":[B
    .end local v19    # "key1":Ljava/lang/String;
    .end local v20    # "cardData":Ljava/util/HashMap;
    .end local v21    # "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    .end local v22    # "version":Ljava/util/HashMap;
    .local v3, "cardData":Ljava/util/HashMap;
    .restart local v4    # "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    .restart local v7    # "version":Ljava/util/HashMap;
    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    .end local v3    # "cardData":Ljava/util/HashMap;
    .end local v4    # "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    .end local v7    # "version":Ljava/util/HashMap;
    .restart local v20    # "cardData":Ljava/util/HashMap;
    .restart local v21    # "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    .restart local v22    # "version":Ljava/util/HashMap;
    invoke-virtual {v5}, Lcom/visa/app/ttpkernel/ContactlessResult;->getInternalData()Ljava/util/HashMap;

    move-result-object v3

    .line 383
    .local v3, "internalData":Ljava/util/HashMap;
    const-string v4, "internalData"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "key1":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 384
    .local v7, "value1":[B
    if-eqz v7, :cond_a

    .line 385
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v13

    .line 386
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v2

    move-object/from16 v23, v3

    const/4 v2, 0x0

    .end local v3    # "internalData":Ljava/util/HashMap;
    .local v23, "internalData":Ljava/util/HashMap;
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v14, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-static {v7}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v2

    .line 388
    invoke-static {}, Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;->getREQUIRED_TAGS()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 389
    iget-object v2, v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->icc:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .end local v7    # "value1":[B
    .end local v13    # "key1":Ljava/lang/String;
    :cond_9
    move-object/from16 v2, v19

    move-object/from16 v3, v23

    goto :goto_6

    .line 384
    .end local v23    # "internalData":Ljava/util/HashMap;
    .restart local v3    # "internalData":Ljava/util/HashMap;
    .restart local v7    # "value1":[B
    .restart local v13    # "key1":Ljava/lang/String;
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v23, v3

    .end local v3    # "internalData":Ljava/util/HashMap;
    .restart local v23    # "internalData":Ljava/util/HashMap;
    goto :goto_6

    .line 393
    .end local v7    # "value1":[B
    .end local v13    # "key1":Ljava/lang/String;
    .end local v23    # "internalData":Ljava/util/HashMap;
    .restart local v3    # "internalData":Ljava/util/HashMap;
    :cond_b
    move-object/from16 v23, v3

    .end local v3    # "internalData":Ljava/util/HashMap;
    .restart local v23    # "internalData":Ljava/util/HashMap;
    sget-object v2, Lcom/visa/app/ttpkernel/TtpOutcome;->TRYNEXT:Lcom/visa/app/ttpkernel/TtpOutcome;

    if-ne v0, v2, :cond_c

    .line 394
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->nextCandidate()[B

    move-result-object v2

    move-object/from16 v18, v2

    const/4 v2, 0x0

    goto :goto_7

    .line 396
    :cond_c
    const/4 v2, 0x0

    move-object v7, v2

    check-cast v7, [B

    move-object/from16 v18, v2

    .line 393
    :goto_7
    move-object/from16 v5, v18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v21

    .end local v10    # "myData":Ljava/util/HashMap;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v17    # "selectedAid":[B
    .end local v20    # "cardData":Ljava/util/HashMap;
    .end local v22    # "version":Ljava/util/HashMap;
    .end local v23    # "internalData":Ljava/util/HashMap;
    .local v5, "selectedAid":[B
    goto/16 :goto_1

    .line 400
    .end local v21    # "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    .restart local v4    # "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    :cond_d
    move-object/from16 v21, v4

    move-object/from16 v17, v5

    const/4 v2, 0x0

    .end local v4    # "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    .end local v5    # "selectedAid":[B
    .restart local v17    # "selectedAid":[B
    .restart local v21    # "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_enableNfcForegroundDispatcher()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v5, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v2}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;-><init>(ZLcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 402
    sget-object v2, Lcom/visa/app/ttpkernel/TtpOutcome;->COMPLETED:Lcom/visa/app/ttpkernel/TtpOutcome;

    if-ne v0, v2, :cond_e

    .line 403
    iget-object v2, v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    .local v2, "$this$doVisaTransaction_u24lambda_u2d10":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    const/4 v3, 0x0

    .line 404
    .local v3, "$i$a$-apply-NfcCardReaderViewModel$doVisaTransaction$2":I
    sget-object v4, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VISA:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCardScheme(Ljava/lang/String;)V

    .line 405
    const-string v4, "CUSTOMER"

    invoke-virtual {v2, v4}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCustomerName(Ljava/lang/String;)V

    .line 406
    nop

    .line 403
    .end local v2    # "$this$doVisaTransaction_u24lambda_u2d10":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .end local v3    # "$i$a$-apply-NfcCardReaderViewModel$doVisaTransaction$2":I
    nop

    .line 407
    iget-object v2, v1, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->icc:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->createVisaCardData(Ljava/lang/StringBuilder;)V

    goto :goto_8

    .line 409
    :cond_e
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "failed......."

    invoke-static {v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showWaitingDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_iccCardHelperLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurred while reading card: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/16 v15, 0xf

    const/16 v16, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 413
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public final finishNfcReading()V
    .locals 5

    .line 553
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_enableNfcForegroundDispatcher()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v3, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;-><init>(ZLcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 555
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_iccCardHelperLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method public final getEnableNfcForegroundDispatcher()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;",
            ">;>;"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_enableNfcForegroundDispatcher()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getIccCardHelper()Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    return-object v0
.end method

.method public final getIccCardHelperLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
            ">;>;"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_iccCardHelperLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getLastPosTransactionResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_lastPosTransactionResponse:Landroidx/lifecycle/MutableLiveData;

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

    .line 107
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_message()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getQrTransactionResponseFromWebView()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_qrTransactionResponseFromWebView:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowAccountTypeDialog()Landroidx/lifecycle/LiveData;
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

    .line 77
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showAccountTypeDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowPinPadDialog()Landroidx/lifecycle/LiveData;
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

    .line 84
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showPinPadDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowPrintDialog()Landroidx/lifecycle/LiveData;
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

    .line 111
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowQrPrintDialog()Landroidx/lifecycle/LiveData;
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

    .line 115
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showQrPrintDialog:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowWaitingDialog()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;",
            ">;>;"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showWaitingDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSmsSent()Landroidx/lifecycle/LiveData;
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

    .line 119
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_smsSent:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getStartVerveTransaction()Landroidx/lifecycle/LiveData;
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

    .line 100
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_startVerveTransaction()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final initiateNfcPayment(JJLcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V
    .locals 5
    .param p1, "amount"    # J
    .param p3, "cashBackAmount"    # J
    .param p5, "nfcPaymentType"    # Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    const-string v0, "nfcPaymentType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showWaitingDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v1, p5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 129
    new-instance v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    const/16 v3, 0x30

    invoke-static {v1, v2, v3}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->amountInBytes:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    .line 130
    nop

    .line 131
    new-instance v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>(Ljava/lang/String;)V

    .line 130
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->cashBackAmountInBytes:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    .line 133
    sget-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_enableNfcForegroundDispatcher()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 149
    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    .line 150
    new-instance v3, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;

    .line 151
    nop

    .line 152
    sget-object v4, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VERVE:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    .line 150
    invoke-direct {v3, v1, v4}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;-><init>(ZLcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V

    .line 149
    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 156
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_startVerveTransaction()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->doMasterCardTransaction()V

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_enableNfcForegroundDispatcher()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 136
    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    .line 137
    new-instance v3, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;

    .line 138
    nop

    .line 139
    sget-object v4, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VISA:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    .line 137
    invoke-direct {v3, v1, v4}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;-><init>(ZLcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V

    .line 136
    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 143
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_startVerveTransaction()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCleared()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 123
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->icc:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 125
    return-void
.end method

.method public final prepareSMS(Ljava/lang/String;)V
    .locals 2
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v1, p1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 560
    return-void
.end method

.method public final sendSmS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "toString"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    nop

    .line 565
    nop

    .line 566
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_smsSent:Landroidx/lifecycle/MutableLiveData;

    .line 567
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 563
    invoke-static {p1, p2, v0, v1}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 569
    return-void
.end method

.method public final setIccCardHelper(Lcom/woleapp/netpos/contactless/util/ICCCardHelper;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    return-void
.end method

.method public final setIccCardHelperLiveData(Lcom/woleapp/netpos/contactless/util/ICCCardHelper;)V
    .locals 2
    .param p1, "iccCardHelper"    # Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    const-string v0, "iccCardHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_iccCardHelperLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v1, p1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 542
    return-void
.end method

.method public final setLastPosTransactionResponse(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 1
    .param p1, "lastPosTrans"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "lastPosTrans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_lastPosTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 584
    return-void
.end method

.method public final setPinBlock(Ljava/lang/String;)V
    .locals 3
    .param p1, "encryptedPinBloc"    # Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->iccCardHelper:Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getCardData()Lcom/danbamitale/epmslib/entities/CardData;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$setPinBlock_u24lambda_u2d12":Lcom/danbamitale/epmslib/entities/CardData;
    const/4 v1, 0x0

    .line 473
    .local v1, "$i$a$-apply-NfcCardReaderViewModel$setPinBlock$1":I
    invoke-virtual {v0, p1}, Lcom/danbamitale/epmslib/entities/CardData;->setPinBlock(Ljava/lang/String;)V

    .line 474
    nop

    .line 472
    .end local v0    # "$this$setPinBlock_u24lambda_u2d12":Lcom/danbamitale/epmslib/entities/CardData;
    .end local v1    # "$i$a$-apply-NfcCardReaderViewModel$setPinBlock$1":I
    nop

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->get_showAccountTypeDialog()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method public final setQrTransactionResponse(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V
    .locals 1
    .param p1, "qrTransactionResponse"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    const-string v0, "qrTransactionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_qrTransactionResponseFromWebView:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public final showReceiptDialogForQrPayment()V
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->_showQrPrintDialog:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    .line 578
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getQrTransactionResponseFromWebView()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method public final stopNfcReader()V
    .locals 1

    .line 545
    nop

    .line 546
    :try_start_0
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getINSTANCE()Lcom/woleapp/netpos/contactless/app/NetPosApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getTransactionsApi()Lcom/mastercard/terminalsdk/TransactionInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mastercard/terminalsdk/TransactionInterface;->abortTransaction()V

    .line 547
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getINSTANCE()Lcom/woleapp/netpos/contactless/app/NetPosApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getNfcProvider()Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->disconnectReader()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 550
    :goto_0
    return-void
.end method
