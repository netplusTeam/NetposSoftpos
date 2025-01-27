.class public final Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "TransactionsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionsViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel\n+ 2 Transformations.kt\nandroidx/lifecycle/TransformationsKt\n*L\n1#1,309:1\n36#2:310\n*S KotlinDebug\n*F\n+ 1 TransactionsViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel\n*L\n92#1:310\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GJ\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\'0&J\u0012\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0&0\u0017J\u0006\u0010J\u001a\u00020EJ\u000e\u0010K\u001a\u00020E2\u0006\u0010F\u001a\u00020GJ\u0008\u0010L\u001a\u00020EH\u0002J\u000e\u0010M\u001a\u00020E2\u0006\u0010F\u001a\u00020GJ\u0018\u0010M\u001a\u00020E2\u0006\u0010N\u001a\u00020\'2\u0006\u0010F\u001a\u00020GH\u0002J\u0006\u0010O\u001a\u00020EJ\u000e\u0010P\u001a\u00020E2\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010Q\u001a\u00020E2\u0008\u0010R\u001a\u0004\u0018\u00010\nJ\u000e\u0010S\u001a\u00020E2\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010T\u001a\u00020E2\u0008\u0010 \u001a\u0004\u0018\u00010\nJ\u0014\u0010U\u001a\u00020E2\u000c\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\'0&J\u000e\u0010W\u001a\u00020E2\u0006\u0010N\u001a\u00020\'J\u0006\u0010X\u001a\u00020ER\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00060\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0019R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&X\u0082.\u00a2\u0006\u0002\n\u0000R\u001f\u0010(\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00060\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0017\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\'0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010*R\u001d\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u0019R\u0017\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00178F\u00a2\u0006\u0006\u001a\u0004\u00080\u0010\u0019R\u001d\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\u0019R\u001d\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u00084\u0010\u0019R\u001d\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u00086\u0010\u0019R\u001d\u00107\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u00088\u0010\u0019R\u001d\u00109\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010\u0019R\u001d\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\u0019R\"\u0010=\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u000e\u0010B\u001a\u00020CX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_beginGetCardDetails",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "",
        "_done",
        "kotlin.jvm.PlatformType",
        "_message",
        "",
        "_selectedAction",
        "_shouldRefreshNibssKeys",
        "_showPrintDialog",
        "_showPrinterError",
        "_showProgressDialog",
        "_showReceiptTypeMutableLiveData",
        "_toastMessage",
        "accountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "appDatabase",
        "Lcom/woleapp/netpos/contactless/database/AppDatabase;",
        "beginGetCardDetails",
        "Landroidx/lifecycle/LiveData;",
        "getBeginGetCardDetails",
        "()Landroidx/lifecycle/LiveData;",
        "cardData",
        "Lcom/danbamitale/epmslib/entities/CardData;",
        "getCardData",
        "()Lcom/danbamitale/epmslib/entities/CardData;",
        "setCardData",
        "(Lcom/danbamitale/epmslib/entities/CardData;)V",
        "cardScheme",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "done",
        "getDone",
        "endOfDayList",
        "",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "inProgress",
        "getInProgress",
        "()Landroidx/lifecycle/MutableLiveData;",
        "lastTransactionResponse",
        "getLastTransactionResponse",
        "message",
        "getMessage",
        "selectedAction",
        "getSelectedAction",
        "shouldRefreshNibssKeys",
        "getShouldRefreshNibssKeys",
        "showPrintDialog",
        "getShowPrintDialog",
        "showPrinterError",
        "getShowPrinterError",
        "showProgressDialog",
        "getShowProgressDialog",
        "showReceiptType",
        "getShowReceiptType",
        "toastMessage",
        "getToastMessage",
        "transactionList",
        "getTransactionList",
        "()Ljava/util/List;",
        "setTransactionList",
        "(Ljava/util/List;)V",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "doSaleCompletion",
        "",
        "context",
        "Landroid/content/Context;",
        "getEodList",
        "getTransactions",
        "performAction",
        "preAuthRefund",
        "printReceipt",
        "refundTransaction",
        "transactionResponse",
        "reset",
        "setAccountType",
        "setAction",
        "action",
        "setAppDatabase",
        "setCardScheme",
        "setEndOfDayList",
        "eodList",
        "setSelectedTransaction",
        "showReceiptDialog",
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
.field private final _beginGetCardDetails:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _done:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
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

.field private final _selectedAction:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private final _showPrinterError:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _showProgressDialog:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _showReceiptTypeMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _toastMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field private appDatabase:Lcom/woleapp/netpos/contactless/database/AppDatabase;

.field private cardData:Lcom/danbamitale/epmslib/entities/CardData;

.field private cardScheme:Ljava/lang/String;

.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private endOfDayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final inProgress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private transactionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;


# direct methods
.method public static synthetic $r8$lambda$2VT0wZpwQSpfKw-H76FVjKKA128(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->preAuthRefund$lambda-12(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6zyGLrxA-DoRgOnEmiLXTPhnugk(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->preAuthRefund$lambda-16(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7XyAlS6tOQlaiOurnYCIZyQlCAE(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->refundTransaction$lambda-2(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gb1JrUXv_SywQToE5cKuwXS84z8(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->refundTransaction$lambda-1(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KYapHD25EHkkT-rxiCyzjioYkCQ(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->doSaleCompletion$lambda-7(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q97QFr5UX2gc2WWlbrNnn7xOrBo(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->doSaleCompletion$lambda-11(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFUvJ-AUTYNMgXqy6QYjB1Raqc8(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->refundTransaction$lambda-5(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vypJVvLTM1YRLntSoFnPamKyNIQ(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->preAuthRefund$lambda-13(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yGGqGWC4y2dbKyFQoCMN8d0gQE8(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->doSaleCompletion$lambda-8(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 23
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_selectedAction:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->inProgress:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_done:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_beginGetCardDetails:Landroidx/lifecycle/MutableLiveData;

    .line 30
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showProgressDialog:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    .line 36
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->REFUND:Lcom/danbamitale/epmslib/entities/TransactionType;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showPrinterError:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showReceiptTypeMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_toastMessage:Landroidx/lifecycle/MutableLiveData;

    .line 19
    return-void
.end method

.method private static final doSaleCompletion$lambda-11(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .param p1, "response"    # Ljava/lang/Integer;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 243
    .local v1, "$i$a$-let-TransactionsViewModel$doSaleCompletion$3$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    const-string v5, "it.localizedMessage ?: \"\""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 244
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    nop

    .line 242
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-TransactionsViewModel$doSaleCompletion$3$1":I
    nop

    .line 248
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 249
    .local v1, "$i$a$-let-TransactionsViewModel$doSaleCompletion$3$2":I
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->printReceipt()V

    .line 250
    nop

    .line 248
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-TransactionsViewModel$doSaleCompletion$3$2":I
    nop

    .line 251
    :cond_2
    return-void
.end method

.method private static final doSaleCompletion$lambda-7(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .param p1, "$transactionResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p2, "it"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transactionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showProgressDialog:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->cardScheme:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setId(J)V

    .line 234
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->appDatabase:Lcom/woleapp/netpos/contactless/database/AppDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->updateTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final doSaleCompletion$lambda-8(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->inProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method private static final preAuthRefund$lambda-12(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .param p1, "$transactionResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p2, "it"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transactionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showProgressDialog:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->cardScheme:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setId(J)V

    .line 281
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->appDatabase:Lcom/woleapp/netpos/contactless/database/AppDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->updateTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final preAuthRefund$lambda-13(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->inProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method private static final preAuthRefund$lambda-16(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .param p1, "response"    # Ljava/lang/Integer;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 290
    .local v1, "$i$a$-let-TransactionsViewModel$preAuthRefund$3$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    const-string v5, "it.localizedMessage ?: \"\""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 291
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 293
    nop

    .line 289
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-TransactionsViewModel$preAuthRefund$3$1":I
    nop

    .line 295
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 296
    .local v1, "$i$a$-let-TransactionsViewModel$preAuthRefund$3$2":I
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->printReceipt()V

    .line 297
    nop

    .line 295
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-TransactionsViewModel$preAuthRefund$3$2":I
    nop

    .line 298
    :cond_2
    return-void
.end method

.method private final printReceipt()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 175
    move-object v1, v0

    check-cast v1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .local v1, "$this$printReceipt_u24lambda_u2d6":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v2, 0x0

    .line 176
    .local v2, "$i$a$-apply-TransactionsViewModel$printReceipt$transactionResponse$1":I
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardExpiry(Ljava/lang/String;)V

    .line 177
    nop

    .line 175
    .end local v1    # "$this$printReceipt_u24lambda_u2d6":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v2    # "$i$a$-apply-TransactionsViewModel$printReceipt$transactionResponse$1":I
    const-string v1, "lastTransactionResponse.\u2026Expiry = \"\"\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .line 174
    nop

    .line 178
    .local v0, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    .line 179
    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v3}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSText$default(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method private final refundTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;Landroid/content/Context;)V
    .locals 13
    .param p1, "transactionResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p2, "context"    # Landroid/content/Context;

    .line 124
    invoke-static {p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestDataKt;->toOriginalDataElements(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v10

    .line 126
    .local v10, "originalDataElements":Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    new-instance v0, Lcom/danbamitale/epmslib/entities/HostConfig;

    .line 127
    sget-object v1, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    .line 128
    sget-object v2, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConnectionData()Lcom/danbamitale/epmslib/entities/ConnectionData;

    move-result-object v2

    .line 129
    sget-object v3, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    sget-object v4, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/danbamitale/epmslib/entities/HostConfig;-><init>(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V

    move-object v11, v0

    .line 134
    .local v11, "hostConfig":Lcom/danbamitale/epmslib/entities/HostConfig;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 135
    invoke-virtual {v10}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAmount()J

    move-result-wide v2

    .line 137
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 133
    new-instance v12, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    .line 134
    nop

    .line 135
    nop

    .line 133
    nop

    .line 137
    nop

    .line 136
    nop

    .line 133
    const-wide/16 v4, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, v12

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    .local v0, "requestData":Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->inProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 140
    new-instance v1, Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    invoke-direct {v1, v11}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;-><init>(Lcom/danbamitale/epmslib/entities/HostConfig;)V

    .line 141
    nop

    .line 142
    nop

    .line 143
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v1, p2, v0, v2}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->processTransaction(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;

    move-result-object v1

    .line 144
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda6;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 155
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda7;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v1

    .line 158
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 159
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 160
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda8;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "TransactionProcessor(hos\u2026          }\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 171
    return-void
.end method

.method private static final refundTransaction$lambda-1(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .param p1, "$transactionResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p2, "it"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transactionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->cardScheme:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setId(J)V

    .line 152
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->appDatabase:Lcom/woleapp/netpos/contactless/database/AppDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->updateTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final refundTransaction$lambda-2(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->inProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method private static final refundTransaction$lambda-5(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .param p1, "response"    # Ljava/lang/Integer;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 162
    .local v1, "$i$a$-let-TransactionsViewModel$refundTransaction$3$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    const-string v5, "it.localizedMessage ?: \"\""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 163
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    nop

    .line 161
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-TransactionsViewModel$refundTransaction$3$1":I
    nop

    .line 167
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 168
    .local v1, "$i$a$-let-TransactionsViewModel$refundTransaction$3$2":I
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->printReceipt()V

    .line 169
    nop

    .line 167
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-TransactionsViewModel$refundTransaction$3$2":I
    nop

    .line 170
    :cond_2
    return-void
.end method


# virtual methods
.method public final doSaleCompletion(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .line 204
    .local v0, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    invoke-static {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestDataKt;->toOriginalDataElements(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v11

    .line 205
    .local v11, "originalDataElements":Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    new-instance v1, Lcom/danbamitale/epmslib/entities/HostConfig;

    .line 206
    sget-object v2, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v2

    .line 207
    sget-object v3, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConnectionData()Lcom/danbamitale/epmslib/entities/ConnectionData;

    move-result-object v3

    .line 208
    sget-object v4, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 209
    sget-object v5, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 205
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/danbamitale/epmslib/entities/HostConfig;-><init>(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V

    move-object v12, v1

    .line 214
    .local v12, "hostConfig":Lcom/danbamitale/epmslib/entities/HostConfig;
    new-instance v13, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    .line 215
    sget-object v2, Lcom/danbamitale/epmslib/entities/TransactionType;->PRE_AUTHORIZATION_COMPLETION:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 216
    invoke-virtual {v11}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAmount()J

    move-result-wide v3

    .line 214
    nop

    .line 217
    nop

    .line 214
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v1, v13

    move-object v8, v11

    invoke-direct/range {v1 .. v10}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 220
    .local v1, "requestData":Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showProgressDialog:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 221
    new-instance v2, Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    invoke-direct {v2, v12}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;-><init>(Lcom/danbamitale/epmslib/entities/HostConfig;)V

    .line 222
    nop

    .line 223
    nop

    .line 224
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v2, p1, v1, v3}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->processTransaction(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;

    move-result-object v2

    .line 225
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v2

    .line 236
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v2

    .line 239
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 240
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 241
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    const-string v3, "TransactionProcessor(hos\u2026          }\n            }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 252
    return-void
.end method

.method public final getBeginGetCardDetails()Landroidx/lifecycle/LiveData;
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

    .line 65
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_beginGetCardDetails:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getCardData()Lcom/danbamitale/epmslib/entities/CardData;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    return-object v0
.end method

.method public final getDone()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_done:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getEodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->endOfDayList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "endOfDayList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getInProgress()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->inProgress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getLastTransactionResponse()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

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

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSelectedAction()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_selectedAction:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShouldRefreshNibssKeys()Landroidx/lifecycle/LiveData;
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

    .line 50
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_shouldRefreshNibssKeys:Landroidx/lifecycle/MutableLiveData;

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

    .line 57
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowPrinterError()Landroidx/lifecycle/LiveData;
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

    .line 41
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showPrinterError:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowProgressDialog()Landroidx/lifecycle/LiveData;
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

    .line 60
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showProgressDialog:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getShowReceiptType()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showReceiptTypeMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getToastMessage()Landroidx/lifecycle/LiveData;
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

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_toastMessage:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getTransactionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->transactionList:Ljava/util/List;

    return-object v0
.end method

.method public final getTransactions()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_selectedAction:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "PreAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->appDatabase:Lcom/woleapp/netpos/contactless/database/AppDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PRE_AUTHORIZATION:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-interface {v0, v1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->getTransactionByTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    goto :goto_1

    .line 85
    :sswitch_1
    const-string v1, "Reversal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_2
    const-string v1, "Refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->appDatabase:Lcom/woleapp/netpos/contactless/database/AppDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->getRefundableTransactions()Landroidx/lifecycle/LiveData;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->appDatabase:Lcom/woleapp/netpos/contactless/database/AppDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->getTransactions(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 92
    :goto_1
    nop

    .local v0, "$this$map$iv":Landroidx/lifecycle/LiveData;
    const/4 v1, 0x0

    .line 310
    .local v1, "$i$f$map":I
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$getTransactions$$inlined$map$1;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$getTransactions$$inlined$map$1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    check-cast v2, Landroidx/arch/core/util/Function;

    invoke-static {v0, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    const-string v3, "crossinline transform: (\u2026p(this) { transform(it) }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .end local v0    # "$this$map$iv":Landroidx/lifecycle/LiveData;
    .end local v1    # "$i$f$map":I
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e533468 -> :sswitch_2
        -0xbe99292 -> :sswitch_1
        0x502992cb -> :sswitch_0
    .end sparse-switch
.end method

.method public final performAction()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_selectedAction:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Reversal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->REVERSAL:Lcom/danbamitale/epmslib/entities/TransactionType;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 110
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_beginGetCardDetails:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :sswitch_1
    const-string v1, "Reprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->printReceipt()V

    goto :goto_0

    .line 102
    :sswitch_2
    const-string v1, "Refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 105
    :cond_2
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->REFUND:Lcom/danbamitale/epmslib/entities/TransactionType;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 106
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_beginGetCardDetails:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 113
    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e533468 -> :sswitch_2
        -0x5b87dbc6 -> :sswitch_1
        -0xbe99292 -> :sswitch_0
    .end sparse-switch
.end method

.method public final preAuthRefund(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .line 256
    .local v0, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    invoke-static {v0}, Lcom/danbamitale/epmslib/entities/TransactionRequestDataKt;->toOriginalDataElements(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v11

    .line 258
    .local v11, "originalDataElements":Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    new-instance v1, Lcom/danbamitale/epmslib/entities/HostConfig;

    .line 259
    sget-object v2, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v2

    .line 260
    sget-object v3, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConnectionData()Lcom/danbamitale/epmslib/entities/ConnectionData;

    move-result-object v3

    .line 261
    sget-object v4, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 262
    sget-object v5, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/danbamitale/epmslib/entities/HostConfig;-><init>(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V

    move-object v12, v1

    .line 265
    .local v12, "hostConfig":Lcom/danbamitale/epmslib/entities/HostConfig;
    new-instance v13, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    .line 266
    sget-object v2, Lcom/danbamitale/epmslib/entities/TransactionType;->REFUND:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 267
    invoke-virtual {v11}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->getOriginalAmount()J

    move-result-wide v3

    .line 265
    nop

    .line 268
    nop

    .line 265
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v1, v13

    move-object v8, v11

    invoke-direct/range {v1 .. v10}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/OriginalDataElements;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 270
    .local v1, "requestData":Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showProgressDialog:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 271
    new-instance v2, Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    invoke-direct {v2, v12}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;-><init>(Lcom/danbamitale/epmslib/entities/HostConfig;)V

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->processTransaction(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;

    move-result-object v2

    .line 272
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v2

    .line 283
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v2

    .line 286
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 287
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 288
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    const-string v3, "TransactionProcessor(hos\u2026          }\n            }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 299
    return-void
.end method

.method public final refundTransaction(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-direct {p0, v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->refundTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_done:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public final setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V
    .locals 1
    .param p1, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v0, "accountType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 196
    return-void
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_selectedAction:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public final setAppDatabase(Lcom/woleapp/netpos/contactless/database/AppDatabase;)V
    .locals 1
    .param p1, "appDatabase"    # Lcom/woleapp/netpos/contactless/database/AppDatabase;

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->appDatabase:Lcom/woleapp/netpos/contactless/database/AppDatabase;

    .line 82
    return-void
.end method

.method public final setCardData(Lcom/danbamitale/epmslib/entities/CardData;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/entities/CardData;

    .line 22
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    return-void
.end method

.method public final setCardScheme(Ljava/lang/String;)V
    .locals 2
    .param p1, "cardScheme"    # Ljava/lang/String;

    .line 199
    const-string v0, "no match"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VERVE"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->cardScheme:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public final setEndOfDayList(Ljava/util/List;)V
    .locals 1
    .param p1, "eodList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eodList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->endOfDayList:Ljava/util/List;

    .line 303
    return-void
.end method

.method public final setSelectedTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 1
    .param p1, "transactionResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "transactionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public final setTransactionList(Ljava/util/List;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->transactionList:Ljava/util/List;

    return-void
.end method

.method public final showReceiptDialog()V
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->_showPrintDialog:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    .line 185
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->lastTransactionResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSText$default(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastTransactionResponse.\u2026              .toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 188
    return-void
.end method
