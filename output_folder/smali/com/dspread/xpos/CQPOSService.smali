.class public Lcom/dspread/xpos/CQPOSService;
.super Ljava/lang/Object;
.source "CQPOSService.java"

# interfaces
.implements Lcom/dspread/xpos/QPOSService$QPOSServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMifareCardVersion(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getMifareFastReadData(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getMifareReadData(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAddKey(Z)V
    .locals 0

    return-void
.end method

.method public onBatchReadMifareCardResult(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0
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

    return-void
.end method

.method public onBatchWriteMifareCardResult(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0
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

    return-void
.end method

.method public onBluetoothBoardStateResult(Z)V
    .locals 0

    return-void
.end method

.method public onBluetoothBondFailed()V
    .locals 0

    return-void
.end method

.method public onBluetoothBondTimeout()V
    .locals 0

    return-void
.end method

.method public onBluetoothBonded()V
    .locals 0

    return-void
.end method

.method public onBluetoothBonding()V
    .locals 0

    return-void
.end method

.method public onCbcMacResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConfirmAmountResult(Z)V
    .locals 0

    return-void
.end method

.method public onD20StatusResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDoTradeResult(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V
    .locals 0
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

    return-void
.end method

.method public onEmvICCExceptionData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEncryptData(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onError(Lcom/dspread/xpos/QPOSService$Error;)V
    .locals 0

    return-void
.end method

.method public onFinishMifareCardResult(Z)V
    .locals 0

    return-void
.end method

.method public onGetBuzzerStatusResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGetCardInfoResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetCardNoResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGetDevicePubKey(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetDeviceTestResult(Z)V
    .locals 0

    return-void
.end method

.method public onGetInputAmountResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGetKeyCheckValue(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onGetPosComm(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGetShutDownTime(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGetSleepModeTime(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLcdShowCustomDisplay(Z)V
    .locals 0

    return-void
.end method

.method public onOperateMifareCardResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPinKey_TDES_Result(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onQposCertificateInfoResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQposDoGetTradeLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onQposDoGetTradeLogNum(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onQposDoSetRsaPublicKey(Z)V
    .locals 0

    return-void
.end method

.method public onQposDoTradeLog(Z)V
    .locals 0

    return-void
.end method

.method public onQposGenerateSessionKeysResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQposGetDeviceECCPublicKeyResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onQposGetLEDColorResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onQposGetRealTimeSelfDestructStatus(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onQposIdResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQposInfoResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQposInitModeResult(Z)V
    .locals 0

    return-void
.end method

.method public onQposIsCardExist(Z)V
    .locals 0

    return-void
.end method

.method public onQposIsCardExistInOnlineProcess(Z)V
    .locals 0

    return-void
.end method

.method public onQposKsnResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQposPinMapSyncResult(ZZ)V
    .locals 0

    return-void
.end method

.method public onQposRequestPinResult(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onQposRequestPinStartResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQposSetLEDColorResult(Z)V
    .locals 0

    return-void
.end method

.method public onQposTestCommandResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onQposTestResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQposTestSelfCommandResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onQposUpdateDataWithKeyResult(Z)V
    .locals 0

    return-void
.end method

.method public onQposUpdateServerECCPublicKeyResult(Z)V
    .locals 0

    return-void
.end method

.method public onReadBusinessCardResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReadGasCardResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReadMifareCardResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestBatchData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestCalculateMac(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestDevice()V
    .locals 0

    return-void
.end method

.method public onRequestDeviceScanFinished()V
    .locals 0

    return-void
.end method

.method public onRequestDisplay(Lcom/dspread/xpos/QPOSService$Display;)V
    .locals 0

    return-void
.end method

.method public onRequestFinalConfirm()V
    .locals 0

    return-void
.end method

.method public onRequestGenerateTransportKey(Ljava/util/Hashtable;)V
    .locals 0

    return-void
.end method

.method public onRequestIsServerConnected()V
    .locals 0

    return-void
.end method

.method public onRequestNFCBatchData(Lcom/dspread/xpos/QPOSService$TransactionResult;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestNoQposDetected()V
    .locals 0

    return-void
.end method

.method public onRequestNoQposDetectedUnbond()V
    .locals 0

    return-void
.end method

.method public onRequestOnlineProcess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestQposConnected()V
    .locals 0

    return-void
.end method

.method public onRequestQposDisconnected()V
    .locals 0

    return-void
.end method

.method public onRequestSelectEmvApp(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestSendTR31KeyResult(Z)V
    .locals 0

    return-void
.end method

.method public onRequestSetAmount()V
    .locals 0

    return-void
.end method

.method public onRequestSetPin()V
    .locals 0

    return-void
.end method

.method public onRequestSignatureResult([B)V
    .locals 0

    return-void
.end method

.method public onRequestTime()V
    .locals 0

    return-void
.end method

.method public onRequestTransactionLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestTransactionResult(Lcom/dspread/xpos/QPOSService$TransactionResult;)V
    .locals 0

    return-void
.end method

.method public onRequestUpdateKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestUpdateWorkKeyResult(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V
    .locals 0

    return-void
.end method

.method public onRequestWaitingUser()V
    .locals 0

    return-void
.end method

.method public onRetuenGetTR31Token(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturPosSelfDestructRecords(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnAESTransmissonKeyResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnAnalyseDigEnvelop(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnApduResult(ZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onReturnBatchSendAPDUResult(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnCheckCardResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnConverEncryptedBlockFormat(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnCustomConfigResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnD20SleepTimeResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnDeviceCSRResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnDeviceCertAndSignatureResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnDeviceSigningCertResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnDisplayQRCodeResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnDoInputCustomStr(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnDownloadRsaPublicKey(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnGetConnectedShutDownTimeResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnGetCustomEMVListResult(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnGetEMVListResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnGetKeyBoardInputResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnGetPinInputResult(I)V
    .locals 0

    return-void
.end method

.method public onReturnGetPinResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnGetQuickEmvResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnMPUCardInfo(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnNFCApduResult(ZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onReturnOperateLEDByTypeResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnPlayBuzzerByTypeResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnPosFirmwareUpdateProgressResult(I)V
    .locals 0

    return-void
.end method

.method public onReturnPowerOffCardResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnPowerOffFelicaResult(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;)V
    .locals 0

    return-void
.end method

.method public onReturnPowerOffIccResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnPowerOffNFCResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnPowerOnCardResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnPowerOnFelicaResult(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;)V
    .locals 0

    return-void
.end method

.method public onReturnPowerOnIccResult(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onReturnPowerOnNFCResult(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onReturnRSAResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnReadCardResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnReversalData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnRsaResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnSearchCardResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnSendApduFelicaResult(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnServerCertResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnSetAESResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnSetConnectedShutDownTimeResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnSetMasterKeyResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnSetSleepTimeResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnSignature(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnSignatureAndCertificatesResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnSpLogResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnStoreCertificatesResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnSyncVersionInfo(Lcom/dspread/xpos/QPOSService$FirmwareStatus;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$QposStatus;)V
    .locals 0

    return-void
.end method

.method public onReturnUpdateEMVRIDResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnUpdateEMVResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnUpdateIPEKResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnUpdateKeyByTR_31Result(Z)V
    .locals 0

    return-void
.end method

.method public onReturniccCashBack(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSearchMifareCardResult(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSetBuzzerResult(Z)V
    .locals 0

    return-void
.end method

.method public onSetBuzzerStatusResult(Z)V
    .locals 0

    return-void
.end method

.method public onSetBuzzerTimeResult(Z)V
    .locals 0

    return-void
.end method

.method public onSetCustomLogoDisplay(Z)V
    .locals 0

    return-void
.end method

.method public onSetManagementKey(Z)V
    .locals 0

    return-void
.end method

.method public onSetParamsResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSetPosBluConfig(Z)V
    .locals 0

    return-void
.end method

.method public onSetSleepModeTime(Z)V
    .locals 0

    return-void
.end method

.method public onSetVendorIDResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTradeCancelled()V
    .locals 0

    return-void
.end method

.method public onUpdateMasterKeyResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdatePosFirmwareResult(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V
    .locals 0

    return-void
.end method

.method public onVerifyMifareCardResult(Z)V
    .locals 0

    return-void
.end method

.method public onWaitingforData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWriteBusinessCardResult(Z)V
    .locals 0

    return-void
.end method

.method public onWriteGasCardResult(Z)V
    .locals 0

    return-void
.end method

.method public onWriteMifareCardResult(Z)V
    .locals 0

    return-void
.end method

.method public transferMifareData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public verifyMifareULData(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public writeMifareULData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
