.class public final Lcom/woleapp/netpos/contactless/cr100/MyQposClass;
.super Lcom/dspread/xpos/CQPOSService;
.source "MyQposClass.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/cr100/MyQposClass$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u001d\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0014\u001a\u00020\u0015J\u001d\u0010\u0016\u001a\u00020\u0015\"\u0004\u0008\u0000\u0010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u0001H\u0017H\u0002\u00a2\u0006\u0002\u0010\u0019J.\u0010\u001a\u001a\u00020\u00152\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u001a\u0010\u001c\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u001e\u0018\u00010\u001dH\u0016J.\u0010\u001f\u001a\u00020\u00152\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u001a\u0010\u001c\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u001e\u0018\u00010\u001dH\u0016J\u0010\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0015H\u0016J\u0008\u0010$\u001a\u00020\u0015H\u0016J\u0008\u0010%\u001a\u00020\u0015H\u0016J\u0008\u0010&\u001a\u00020\u0015H\u0016J\u0012\u0010\'\u001a\u00020\u00152\u0008\u0010(\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010)\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010*\u001a\u00020\u00152\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0017J(\u0010-\u001a\u00020\u00152\u0008\u0010(\u001a\u0004\u0018\u00010.2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016J\u0012\u00100\u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u00101\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u000102H\u0016J\u0012\u00103\u001a\u00020\u00152\u0008\u00104\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u00105\u001a\u00020\u00152\u0008\u00106\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u00107\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0016J$\u00109\u001a\u00020\u00152\u0006\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010\u000b2\u0008\u0010=\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010>\u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010?\u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010@\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010A\u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010B\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u001e\u0010C\u001a\u00020\u00152\u0014\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016J\u001e\u0010D\u001a\u00020\u00152\u0014\u0010E\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016J\u001e\u0010F\u001a\u00020\u00152\u0014\u0010G\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016J\u0010\u0010H\u001a\u00020\u00152\u0006\u0010I\u001a\u00020\"H\u0016J\u001a\u0010J\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010K\u001a\u00020\u00152\u0008\u0010L\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010M\u001a\u00020\u00152\u0008\u0010N\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010O\u001a\u00020\u0015H\u0016J\u0008\u0010P\u001a\u00020\u0015H\u0016J\u0008\u0010Q\u001a\u00020\u0015H\u0016J\u0008\u0010R\u001a\u00020\u0015H\u0016J\u0012\u0010S\u001a\u00020\u00152\u0008\u0010L\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010T\u001a\u00020\u0015H\u0016J\u0008\u0010U\u001a\u00020\u0015H\u0016J\u0008\u0010V\u001a\u00020\u0015H\u0016J\u0008\u0010W\u001a\u00020\u0015H\u0016J\u0012\u0010X\u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010YH\u0016J\u0008\u0010Z\u001a\u00020\u0015H\u0016J\u0012\u0010[\u001a\u00020\u00152\u0008\u0010L\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\\\u001a\u00020\u00152\u0008\u0010]\u001a\u0004\u0018\u00010^H\u0016J\u0012\u0010_\u001a\u00020\u00152\u0008\u0010(\u001a\u0004\u0018\u00010`H\u0016J\u0008\u0010a\u001a\u00020\u0015H\u0016J\u0012\u0010b\u001a\u00020\u00152\u0008\u0010(\u001a\u0004\u0018\u00010\u000bH\u0016J\"\u0010c\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0008\u00108\u001a\u0004\u0018\u00010\u000b2\u0006\u0010d\u001a\u00020;H\u0016J0\u0010e\u001a\u00020\u00152&\u0010f\u001a\"\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\u000b\u0018\u00010gj\u0010\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\u000b\u0018\u0001`hH\u0016J\u001a\u0010i\u001a\u00020\u00152\u0006\u0010j\u001a\u00020\"2\u0008\u0010(\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010k\u001a\u00020\u00152\u0008\u0010l\u001a\u0004\u0018\u00010\u000bH\u0016J0\u0010m\u001a\u00020\u00152&\u0010n\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010oj\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u0001`pH\u0016J\u001e\u0010q\u001a\u00020\u00152\u0014\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016J\"\u0010r\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0008\u00108\u001a\u0004\u0018\u00010\u000b2\u0006\u0010d\u001a\u00020;H\u0016J\u0010\u0010s\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010t\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J,\u0010u\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0008\u00108\u001a\u0004\u0018\u00010\u000b2\u0008\u0010d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010v\u001a\u00020;H\u0016J,\u0010w\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0008\u00108\u001a\u0004\u0018\u00010\u000b2\u0008\u0010d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010v\u001a\u00020;H\u0016J\u0012\u0010x\u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010y\u001a\u00020\u00152\u0008\u0010L\u001a\u0004\u0018\u00010\u000bH\u0016J\u001c\u0010z\u001a\u00020\u00152\u0008\u0010{\u001a\u0004\u0018\u00010\u000b2\u0008\u0010|\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010}\u001a\u00020\u00152\u0006\u0010j\u001a\u00020\"H\u0016J\u0010\u0010~\u001a\u00020\u00152\u0006\u0010j\u001a\u00020\"H\u0016J\u0010\u0010\u007f\u001a\u00020\u00152\u0006\u0010l\u001a\u00020\"H\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u0011\u0010\u0081\u0001\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u0011\u0010\u0082\u0001\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u001f\u0010\u0083\u0001\u001a\u00020\u00152\u0014\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016J\u001f\u0010\u0084\u0001\u001a\u00020\u00152\u0014\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016J\u0011\u0010\u0085\u0001\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010\u0086\u0001\u001a\u00020\u00152\u0007\u0010\u0087\u0001\u001a\u00020\"H\u0016J\u0012\u0010\u0088\u0001\u001a\u00020\u00152\u0007\u0010\u0087\u0001\u001a\u00020\"H\u0016J\u0011\u0010\u0089\u0001\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J(\u0010\u008a\u0001\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0015\u00108\u001a\u0011\u0012\u0004\u0012\u00020\u000b\u0012\u0005\u0012\u00030\u008b\u0001\u0018\u00010\u001dH\u0016J\'\u0010\u008c\u0001\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0014\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001dH\u0016J\u0013\u0010\u008d\u0001\u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010`H\u0016J\u0011\u0010\u008e\u0001\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J\u0007\u0010\u008f\u0001\u001a\u00020\u0015J\u000f\u0010\u0090\u0001\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u0091\u0001\u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010\u000bH\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/cr100/MyQposClass;",
        "Lcom/dspread/xpos/CQPOSService;",
        "bluetoothAdapter",
        "Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;",
        "context",
        "Landroidx/fragment/app/FragmentActivity;",
        "(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;Landroidx/fragment/app/FragmentActivity;)V",
        "_cardInfoFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;",
        "blueTitle",
        "",
        "cardInfoFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCardInfoFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "customScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "cleanup",
        "",
        "hideDialogAndShowToast",
        "T",
        "errorState",
        "(Ljava/lang/Object;)V",
        "onBatchReadMifareCardResult",
        "msg",
        "cardData",
        "Ljava/util/Hashtable;",
        "",
        "onBatchWriteMifareCardResult",
        "onBluetoothBoardStateResult",
        "arg0",
        "",
        "onBluetoothBondFailed",
        "onBluetoothBondTimeout",
        "onBluetoothBonded",
        "onBluetoothBonding",
        "onCbcMacResult",
        "result",
        "onConfirmAmountResult",
        "onDeviceFound",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "onDoTradeResult",
        "Lcom/dspread/xpos/QPOSService$DoTradeResult;",
        "decodeData",
        "onEmvICCExceptionData",
        "onError",
        "Lcom/dspread/xpos/QPOSService$Error;",
        "onGetBuzzerStatusResult",
        "s",
        "onGetCardNoResult",
        "cardNo",
        "onGetInputAmountResult",
        "arg1",
        "onGetPosComm",
        "mod",
        "",
        "amount",
        "posid",
        "onGetShutDownTime",
        "onGetSleepModeTime",
        "onLcdShowCustomDisplay",
        "onPinKey_TDES_Result",
        "onQposDoSetRsaPublicKey",
        "onQposGenerateSessionKeysResult",
        "onQposIdResult",
        "posIdTable",
        "onQposInfoResult",
        "posInfoData",
        "onQposIsCardExist",
        "cardIsExist",
        "onReadBusinessCardResult",
        "onRequestBatchData",
        "tlv",
        "onRequestCalculateMac",
        "calMac",
        "onRequestFinalConfirm",
        "onRequestIsServerConnected",
        "onRequestNoQposDetected",
        "onRequestNoQposDetectedUnbond",
        "onRequestOnlineProcess",
        "onRequestQposConnected",
        "onRequestQposDisconnected",
        "onRequestSetAmount",
        "onRequestSetPin",
        "onRequestSignatureResult",
        "",
        "onRequestTime",
        "onRequestTransactionLog",
        "onRequestTransactionResult",
        "transactionResult",
        "Lcom/dspread/xpos/QPOSService$TransactionResult;",
        "onRequestUpdateWorkKeyResult",
        "Lcom/dspread/xpos/QPOSService$UpdateInformationResult;",
        "onRequestWaitingUser",
        "onReturnAnalyseDigEnvelop",
        "onReturnApduResult",
        "arg2",
        "onReturnBatchSendAPDUResult",
        "batchAPDUResult",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "onReturnCustomConfigResult",
        "isSuccess",
        "onReturnDeviceCSRResult",
        "re",
        "onReturnDownloadRsaPublicKey",
        "map",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "onReturnGetPinResult",
        "onReturnNFCApduResult",
        "onReturnPowerOffIccResult",
        "onReturnPowerOffNFCResult",
        "onReturnPowerOnIccResult",
        "arg3",
        "onReturnPowerOnNFCResult",
        "onReturnRSAResult",
        "onReturnReversalData",
        "onReturnServerCertResult",
        "serverSignCert",
        "serverEncryptCert",
        "onReturnSetMasterKeyResult",
        "onReturnSetSleepTimeResult",
        "onReturnStoreCertificatesResult",
        "onReturnUpdateEMVRIDResult",
        "onReturnUpdateEMVResult",
        "onReturnUpdateIPEKResult",
        "onReturniccCashBack",
        "onSearchMifareCardResult",
        "onSetBuzzerResult",
        "onSetBuzzerStatusResult",
        "b",
        "onSetBuzzerTimeResult",
        "onSetManagementKey",
        "onSetParamsResult",
        "",
        "onUpdateMasterKeyResult",
        "onUpdatePosFirmwareResult",
        "onWriteBusinessCardResult",
        "resetCardInfoFlow",
        "setBlueTitle",
        "transferMifareData",
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
.field private _cardInfoFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blueTitle:Ljava/lang/String;

.field private final bluetoothAdapter:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

.field private final cardInfoFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroidx/fragment/app/FragmentActivity;

.field private final customScope:Lkotlinx/coroutines/CoroutineScope;

.field private final job:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;Landroidx/fragment/app/FragmentActivity;)V
    .locals 8
    .param p1, "bluetoothAdapter"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;
    .param p2, "context"    # Landroidx/fragment/app/FragmentActivity;

    const-string v0, "bluetoothAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/dspread/xpos/CQPOSService;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->bluetoothAdapter:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->context:Landroidx/fragment/app/FragmentActivity;

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->job:Lkotlinx/coroutines/CompletableJob;

    .line 40
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->customScope:Lkotlinx/coroutines/CoroutineScope;

    .line 42
    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->_cardInfoFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 43
    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->cardInfoFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 36
    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/woleapp/netpos/contactless/cr100/MyQposClass;)Landroidx/fragment/app/FragmentActivity;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/cr100/MyQposClass;

    .line 36
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->context:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public static final synthetic access$get_cardInfoFlow$p(Lcom/woleapp/netpos/contactless/cr100/MyQposClass;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/cr100/MyQposClass;

    .line 36
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->_cardInfoFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method private final hideDialogAndShowToast(Ljava/lang/Object;)V
    .locals 3
    .param p1, "errorState"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->hideBluetoothDialog()V

    .line 339
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->context:Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops, something went wrong: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 341
    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 9

    .line 344
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->_cardInfoFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v8, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public final getCardInfoFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->cardInfoFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public onBatchReadMifareCardResult(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cardData"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 280
    return-void
.end method

.method public onBatchWriteMifareCardResult(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cardData"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 282
    return-void
.end method

.method public onBluetoothBoardStateResult(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 300
    return-void
.end method

.method public onBluetoothBondFailed()V
    .locals 0

    .line 234
    return-void
.end method

.method public onBluetoothBondTimeout()V
    .locals 0

    .line 236
    return-void
.end method

.method public onBluetoothBonded()V
    .locals 0

    .line 238
    return-void
.end method

.method public onBluetoothBonding()V
    .locals 0

    .line 240
    return-void
.end method

.method public onCbcMacResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 268
    return-void
.end method

.method public onConfirmAmountResult(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 274
    return-void
.end method

.method public onDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 165
    if-eqz p1, :cond_2

    move-object v0, p1

    .local v0, "it":Landroid/bluetooth/BluetoothDevice;
    const/4 v1, 0x0

    .line 166
    .local v1, "$i$a$-let-MyQposClass$onDeviceFound$1":I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 168
    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    const v4, 0x7f080084

    goto :goto_0

    :cond_0
    const v4, 0x7f080085

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ICON"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TITLE"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    .line 168
    const/4 v3, 0x2

    .line 170
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ADDRESS"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    .line 168
    nop

    .line 167
    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    .line 172
    .local v2, "itm":Ljava/util/HashMap;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->bluetoothAdapter:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->setData(Ljava/util/Map;)V

    .line 174
    .end local v2    # "itm":Ljava/util/HashMap;
    :cond_1
    nop

    .line 165
    .end local v0    # "it":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "$i$a$-let-MyQposClass$onDeviceFound$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 174
    move-object v0, p0

    check-cast v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;

    .local v0, "$this$onDeviceFound_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/cr100/MyQposClass;
    const/4 v1, 0x0

    .line 175
    .local v1, "$i$a$-run-MyQposClass$onDeviceFound$2":I
    nop

    .line 176
    .end local v0    # "$this$onDeviceFound_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/cr100/MyQposClass;
    .end local v1    # "$i$a$-run-MyQposClass$onDeviceFound$2":I
    :cond_3
    return-void
.end method

.method public onDoTradeResult(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V
    .locals 18
    .param p1, "result"    # Lcom/dspread/xpos/QPOSService$DoTradeResult;
    .param p2, "decodeData"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/QPOSService$DoTradeResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_ONLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_OFFLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "encTrack2"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 54
    .local v3, "encTrack2":Ljava/lang/String;
    const-string v4, "trackksn"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    .line 56
    .local v10, "trackKsn":Ljava/lang/String;
    sget-object v4, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;

    .line 57
    nop

    .line 58
    nop

    .line 59
    sget-object v7, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->DATA:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;

    .line 60
    sget-object v8, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;->CBC:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;

    .line 61
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->context:Landroidx/fragment/app/FragmentActivity;

    move-object v9, v5

    check-cast v9, Landroid/content/Context;

    .line 56
    move-object v5, v10

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getData(Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "clearPan":Ljava/lang/String;
    sget-object v5, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;

    invoke-virtual {v5, v4}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->extractTrack2AndPanValues(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v5

    .line 65
    .local v5, "panTrack2Pair":Lkotlin/Pair;
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "realPan":Ljava/lang/String;
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 66
    .local v7, "track2":Ljava/lang/String;
    iget-object v8, v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->_cardInfoFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object v12, v6

    move-object v13, v7

    invoke-static/range {v11 .. v17}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->copy$default(Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 68
    iget-object v11, v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->customScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v8, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;-><init>(Lcom/woleapp/netpos/contactless/cr100/MyQposClass;Lkotlin/coroutines/Continuation;)V

    move-object v14, v8

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 93
    .end local v3    # "encTrack2":Ljava/lang/String;
    .end local v4    # "clearPan":Ljava/lang/String;
    .end local v5    # "panTrack2Pair":Lkotlin/Pair;
    .end local v6    # "realPan":Ljava/lang/String;
    .end local v7    # "track2":Ljava/lang/String;
    .end local v10    # "trackKsn":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public onEmvICCExceptionData(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 256
    return-void
.end method

.method public onError(Lcom/dspread/xpos/QPOSService$Error;)V
    .locals 0
    .param p1, "errorState"    # Lcom/dspread/xpos/QPOSService$Error;

    .line 201
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public onGetBuzzerStatusResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 290
    return-void
.end method

.method public onGetCardNoResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNo"    # Ljava/lang/String;

    .line 218
    return-void
.end method

.method public onGetInputAmountResult(ZLjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/lang/String;

    .line 260
    return-void
.end method

.method public onGetPosComm(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mod"    # I
    .param p2, "amount"    # Ljava/lang/String;
    .param p3, "posid"    # Ljava/lang/String;

    .line 250
    return-void
.end method

.method public onGetShutDownTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 304
    return-void
.end method

.method public onGetSleepModeTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 302
    return-void
.end method

.method public onLcdShowCustomDisplay(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 244
    return-void
.end method

.method public onPinKey_TDES_Result(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 252
    return-void
.end method

.method public onQposDoSetRsaPublicKey(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 306
    return-void
.end method

.method public onQposGenerateSessionKeysResult(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "arg0"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 308
    return-void
.end method

.method public onQposIdResult(Ljava/util/Hashtable;)V
    .locals 6
    .param p1, "posIdTable"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v1, "posId"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    .line 144
    .local v1, "posId":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    const-string v2, "csn"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v0

    .line 145
    .local v2, "csn":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    const-string v3, "psamId"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_4
    move-object v3, v0

    .line 146
    .local v3, "psamId":Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_7

    const-string v4, "nfcID"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, v4

    .line 147
    .local v0, "NFCId":Ljava/lang/String;
    :cond_7
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POS ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ncsn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\npsamId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nNFCId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "content":Ljava/lang/String;
    return-void
.end method

.method public onQposInfoResult(Ljava/util/Hashtable;)V
    .locals 16
    .param p1, "posInfoData"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    move-object/from16 v0, p1

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "isSupportedTrack1"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    .line 98
    .local v2, "isSupportedTrack1":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string v3, "isSupportedTrack2"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v1

    .line 99
    .local v3, "isSupportedTrack2":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    const-string v4, "isSupportedTrack3"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    :cond_4
    move-object v4, v1

    .line 100
    .local v4, "isSupportedTrack3":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    const-string v5, "bootloaderVersion"

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_7

    :cond_6
    move-object v5, v1

    .line 101
    .local v5, "bootloaderVersion":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_8

    const-string v6, "firmwareVersion"

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_9

    :cond_8
    move-object v6, v1

    .line 102
    .local v6, "firmwareVersion":Ljava/lang/String;
    :cond_9
    if-eqz v0, :cond_a

    const-string v7, "isUsbConnected"

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_b

    :cond_a
    move-object v7, v1

    .line 103
    .local v7, "isUsbConnected":Ljava/lang/String;
    :cond_b
    if-eqz v0, :cond_c

    const-string v8, "isCharging"

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_d

    :cond_c
    move-object v8, v1

    .line 104
    .local v8, "isCharging":Ljava/lang/String;
    :cond_d
    if-eqz v0, :cond_e

    const-string v9, "batteryLevel"

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_f

    :cond_e
    move-object v9, v1

    .line 105
    .local v9, "batteryLevel":Ljava/lang/String;
    :cond_f
    if-eqz v0, :cond_10

    const-string v10, "batteryPercentage"

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_11

    :cond_10
    move-object v10, v1

    .line 106
    .local v10, "batteryPercentage":Ljava/lang/String;
    :cond_11
    if-eqz v0, :cond_12

    const-string v11, "hardwareVersion"

    invoke-virtual {v0, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_13

    :cond_12
    move-object v11, v1

    .line 107
    .local v11, "hardwareVersion":Ljava/lang/String;
    :cond_13
    if-eqz v0, :cond_14

    const-string v12, "SUB"

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_15

    :cond_14
    move-object v12, v1

    .line 108
    .local v12, "SUB":Ljava/lang/String;
    :cond_15
    if-eqz v0, :cond_16

    const-string v13, "PCI_firmwareVersion"

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_17

    :cond_16
    move-object v13, v1

    .line 109
    .local v13, "pciFirmwareVersion":Ljava/lang/String;
    :cond_17
    if-eqz v0, :cond_18

    const-string v14, "PCI_hardwareVersion"

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-nez v14, :cond_19

    :cond_18
    move-object v14, v1

    .line 110
    .local v14, "pciHardwareVersion":Ljava/lang/String;
    :cond_19
    if-eqz v0, :cond_1b

    const-string v15, "compileTime"

    invoke-virtual {v0, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_1a

    goto :goto_0

    :cond_1a
    move-object v1, v15

    .line 111
    .local v1, "compileTime":Ljava/lang/String;
    :cond_1b
    :goto_0
    return-void
.end method

.method public onQposIsCardExist(Z)V
    .locals 0
    .param p1, "cardIsExist"    # Z

    .line 276
    return-void
.end method

.method public onReadBusinessCardResult(ZLjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/lang/String;

    .line 270
    return-void
.end method

.method public onRequestBatchData(Ljava/lang/String;)V
    .locals 0
    .param p1, "tlv"    # Ljava/lang/String;

    .line 178
    return-void
.end method

.method public onRequestCalculateMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "calMac"    # Ljava/lang/String;

    .line 220
    return-void
.end method

.method public onRequestFinalConfirm()V
    .locals 0

    .line 196
    return-void
.end method

.method public onRequestIsServerConnected()V
    .locals 2

    .line 183
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getCr100Pos()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->isServerConnected(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public onRequestNoQposDetected()V
    .locals 0

    .line 161
    return-void
.end method

.method public onRequestNoQposDetectedUnbond()V
    .locals 0

    .line 314
    return-void
.end method

.method public onRequestOnlineProcess(Ljava/lang/String;)V
    .locals 0
    .param p1, "tlv"    # Ljava/lang/String;

    .line 186
    return-void
.end method

.method public onRequestQposConnected()V
    .locals 5

    .line 151
    invoke-static {}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->hideBluetoothDialog()V

    .line 152
    sget-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->blueTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 154
    .local v1, "$i$a$-let-MyQposClass$onRequestQposConnected$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/cr100/BluetoothToolsBean;->setBulueToothName(Ljava/lang/String;)V

    .line 155
    nop

    .line 153
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-MyQposClass$onRequestQposConnected$1":I
    nop

    .line 156
    :cond_1
    invoke-static {}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->getBluetoothKeyIndex()I

    move-result v0

    .line 157
    .local v0, "keyIndex":I
    sget-object v1, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getCr100Pos()Lcom/dspread/xpos/QPOSService;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x3c

    invoke-virtual {v1, v0, v2}, Lcom/dspread/xpos/QPOSService;->doTrade(II)V

    .line 158
    :cond_2
    return-void
.end method

.method public onRequestQposDisconnected()V
    .locals 0

    .line 198
    return-void
.end method

.method public onRequestSetAmount()V
    .locals 5

    .line 327
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getCr100Pos()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/dspread/xpos/QPOSService$TransactionType;->SERVICES:Lcom/dspread/xpos/QPOSService$TransactionType;

    const-string v3, "10"

    const-string v4, "566"

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/dspread/xpos/QPOSService;->setAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$TransactionType;)V

    .line 328
    :cond_0
    return-void
.end method

.method public onRequestSetPin()V
    .locals 0

    .line 228
    return-void
.end method

.method public onRequestSignatureResult([B)V
    .locals 0
    .param p1, "arg0"    # [B

    .line 222
    return-void
.end method

.method public onRequestTime()V
    .locals 2

    .line 189
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "terminalTime":Ljava/lang/String;
    sget-object v1, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getCr100Pos()Lcom/dspread/xpos/QPOSService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/QPOSService;->sendTime(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onRequestTransactionLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "tlv"    # Ljava/lang/String;

    .line 180
    return-void
.end method

.method public onRequestTransactionResult(Lcom/dspread/xpos/QPOSService$TransactionResult;)V
    .locals 3
    .param p1, "transactionResult"    # Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 114
    const-string v0, ""

    .line 115
    .local v0, "msg":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 138
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 137
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 136
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 135
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 134
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 133
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 132
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 130
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 129
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 128
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 127
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 126
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 125
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 124
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 123
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 122
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 118
    :pswitch_10
    goto :goto_2

    :pswitch_11
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 117
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->hideDialogAndShowToast(Ljava/lang/Object;)V

    goto :goto_2

    .line 138
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    move-object v0, v1

    .line 140
    :goto_2
    :pswitch_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestUpdateWorkKeyResult(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V
    .locals 0
    .param p1, "result"    # Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    .line 224
    return-void
.end method

.method public onRequestWaitingUser()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->context:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->bluetoothAdapter:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->showBluetoothDialog(Landroidx/fragment/app/FragmentActivity;Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;Z)V

    .line 324
    return-void
.end method

.method public onReturnAnalyseDigEnvelop(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 320
    return-void
.end method

.method public onReturnApduResult(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # I

    .line 210
    return-void
.end method

.method public onReturnBatchSendAPDUResult(Ljava/util/LinkedHashMap;)V
    .locals 0
    .param p1, "batchAPDUResult"    # Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 232
    return-void
.end method

.method public onReturnCustomConfigResult(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isSuccess"    # Z
    .param p2, "result"    # Ljava/lang/String;

    .line 226
    return-void
.end method

.method public onReturnDeviceCSRResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "re"    # Ljava/lang/String;

    .line 316
    return-void
.end method

.method public onReturnDownloadRsaPublicKey(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 248
    return-void
.end method

.method public onReturnGetPinResult(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "result"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    return-void
.end method

.method public onReturnNFCApduResult(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # I

    .line 262
    return-void
.end method

.method public onReturnPowerOffIccResult(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 212
    return-void
.end method

.method public onReturnPowerOffNFCResult(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 264
    return-void
.end method

.method public onReturnPowerOnIccResult(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I

    .line 214
    return-void
.end method

.method public onReturnPowerOnNFCResult(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I

    .line 266
    return-void
.end method

.method public onReturnRSAResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 312
    return-void
.end method

.method public onReturnReversalData(Ljava/lang/String;)V
    .locals 0
    .param p1, "tlv"    # Ljava/lang/String;

    .line 204
    return-void
.end method

.method public onReturnServerCertResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSignCert"    # Ljava/lang/String;
    .param p2, "serverEncryptCert"    # Ljava/lang/String;

    .line 206
    return-void
.end method

.method public onReturnSetMasterKeyResult(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .line 230
    return-void
.end method

.method public onReturnSetSleepTimeResult(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .line 216
    return-void
.end method

.method public onReturnStoreCertificatesResult(Z)V
    .locals 0
    .param p1, "re"    # Z

    .line 318
    return-void
.end method

.method public onReturnUpdateEMVRIDResult(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 296
    return-void
.end method

.method public onReturnUpdateEMVResult(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 298
    return-void
.end method

.method public onReturnUpdateIPEKResult(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 294
    return-void
.end method

.method public onReturniccCashBack(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "result"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    return-void
.end method

.method public onSearchMifareCardResult(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "arg0"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 278
    return-void
.end method

.method public onSetBuzzerResult(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 284
    return-void
.end method

.method public onSetBuzzerStatusResult(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 288
    return-void
.end method

.method public onSetBuzzerTimeResult(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 286
    return-void
.end method

.method public onSetManagementKey(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 292
    return-void
.end method

.method public onSetParamsResult(ZLjava/util/Hashtable;)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 258
    return-void
.end method

.method public onUpdateMasterKeyResult(ZLjava/util/Hashtable;)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 254
    return-void
.end method

.method public onUpdatePosFirmwareResult(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V
    .locals 0
    .param p1, "arg0"    # Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    .line 246
    return-void
.end method

.method public onWriteBusinessCardResult(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .line 272
    return-void
.end method

.method public final resetCardInfoFlow()V
    .locals 9

    .line 332
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->_cardInfoFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v8, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 333
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getCr100Pos()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->cancelTrade()V

    .line 335
    return-void
.end method

.method public final setBlueTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "blueTitle"    # Ljava/lang/String;

    const-string v0, "blueTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->blueTitle:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public transferMifareData(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 310
    return-void
.end method
