.class public interface abstract Lcom/dspread/xpos/QPOSService$QPOSServiceListener;
.super Ljava/lang/Object;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QPOSServiceListener"
.end annotation


# virtual methods
.method public abstract getMifareCardVersion(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMifareFastReadData(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMifareReadData(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAddKey(Z)V
.end method

.method public abstract onBatchReadMifareCardResult(Ljava/lang/String;Ljava/util/Hashtable;)V
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
.end method

.method public abstract onBatchWriteMifareCardResult(Ljava/lang/String;Ljava/util/Hashtable;)V
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
.end method

.method public abstract onBluetoothBoardStateResult(Z)V
.end method

.method public abstract onBluetoothBondFailed()V
.end method

.method public abstract onBluetoothBondTimeout()V
.end method

.method public abstract onBluetoothBonded()V
.end method

.method public abstract onBluetoothBonding()V
.end method

.method public abstract onCbcMacResult(Ljava/lang/String;)V
.end method

.method public abstract onConfirmAmountResult(Z)V
.end method

.method public abstract onD20StatusResult(Ljava/lang/String;)V
.end method

.method public abstract onDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onDoTradeResult(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V
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
.end method

.method public abstract onEmvICCExceptionData(Ljava/lang/String;)V
.end method

.method public abstract onEncryptData(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lcom/dspread/xpos/QPOSService$Error;)V
.end method

.method public abstract onFinishMifareCardResult(Z)V
.end method

.method public abstract onGetBuzzerStatusResult(Ljava/lang/String;)V
.end method

.method public abstract onGetCardInfoResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGetCardNoResult(Ljava/lang/String;)V
.end method

.method public abstract onGetDevicePubKey(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGetDeviceTestResult(Z)V
.end method

.method public abstract onGetInputAmountResult(ZLjava/lang/String;)V
.end method

.method public abstract onGetKeyCheckValue(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGetPosComm(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGetShutDownTime(Ljava/lang/String;)V
.end method

.method public abstract onGetSleepModeTime(Ljava/lang/String;)V
.end method

.method public abstract onLcdShowCustomDisplay(Z)V
.end method

.method public abstract onOperateMifareCardResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPinKey_TDES_Result(Ljava/lang/String;)V
.end method

.method public abstract onQposCertificateInfoResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQposDoGetTradeLog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onQposDoGetTradeLogNum(Ljava/lang/String;)V
.end method

.method public abstract onQposDoSetRsaPublicKey(Z)V
.end method

.method public abstract onQposDoTradeLog(Z)V
.end method

.method public abstract onQposGenerateSessionKeysResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQposGetDeviceECCPublicKeyResult(Ljava/lang/String;)V
.end method

.method public abstract onQposGetLEDColorResult(Ljava/lang/String;)V
.end method

.method public abstract onQposGetRealTimeSelfDestructStatus(ZLjava/lang/String;)V
.end method

.method public abstract onQposIdResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQposInfoResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQposInitModeResult(Z)V
.end method

.method public abstract onQposIsCardExist(Z)V
.end method

.method public abstract onQposIsCardExistInOnlineProcess(Z)V
.end method

.method public abstract onQposKsnResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQposPinMapSyncResult(ZZ)V
.end method

.method public abstract onQposRequestPinResult(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onQposRequestPinStartResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQposSetLEDColorResult(Z)V
.end method

.method public abstract onQposTestCommandResult(ZLjava/lang/String;)V
.end method

.method public abstract onQposTestResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQposTestSelfCommandResult(ZLjava/lang/String;)V
.end method

.method public abstract onQposUpdateDataWithKeyResult(Z)V
.end method

.method public abstract onQposUpdateServerECCPublicKeyResult(Z)V
.end method

.method public abstract onReadBusinessCardResult(ZLjava/lang/String;)V
.end method

.method public abstract onReadGasCardResult(ZLjava/lang/String;)V
.end method

.method public abstract onReadMifareCardResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestBatchData(Ljava/lang/String;)V
.end method

.method public abstract onRequestCalculateMac(Ljava/lang/String;)V
.end method

.method public abstract onRequestDevice()V
.end method

.method public abstract onRequestDeviceScanFinished()V
.end method

.method public abstract onRequestDisplay(Lcom/dspread/xpos/QPOSService$Display;)V
.end method

.method public abstract onRequestFinalConfirm()V
.end method

.method public abstract onRequestGenerateTransportKey(Ljava/util/Hashtable;)V
.end method

.method public abstract onRequestIsServerConnected()V
.end method

.method public abstract onRequestNFCBatchData(Lcom/dspread/xpos/QPOSService$TransactionResult;Ljava/lang/String;)V
.end method

.method public abstract onRequestNoQposDetected()V
.end method

.method public abstract onRequestNoQposDetectedUnbond()V
.end method

.method public abstract onRequestOnlineProcess(Ljava/lang/String;)V
.end method

.method public abstract onRequestQposConnected()V
.end method

.method public abstract onRequestQposDisconnected()V
.end method

.method public abstract onRequestSelectEmvApp(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestSendTR31KeyResult(Z)V
.end method

.method public abstract onRequestSetAmount()V
.end method

.method public abstract onRequestSetPin()V
.end method

.method public abstract onRequestSignatureResult([B)V
.end method

.method public abstract onRequestTime()V
.end method

.method public abstract onRequestTransactionLog(Ljava/lang/String;)V
.end method

.method public abstract onRequestTransactionResult(Lcom/dspread/xpos/QPOSService$TransactionResult;)V
.end method

.method public abstract onRequestUpdateKey(Ljava/lang/String;)V
.end method

.method public abstract onRequestUpdateWorkKeyResult(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V
.end method

.method public abstract onRequestWaitingUser()V
.end method

.method public abstract onRetuenGetTR31Token(Ljava/lang/String;)V
.end method

.method public abstract onReturPosSelfDestructRecords(ZLjava/lang/String;)V
.end method

.method public abstract onReturnAESTransmissonKeyResult(ZLjava/lang/String;)V
.end method

.method public abstract onReturnAnalyseDigEnvelop(Ljava/lang/String;)V
.end method

.method public abstract onReturnApduResult(ZLjava/lang/String;I)V
.end method

.method public abstract onReturnBatchSendAPDUResult(Ljava/util/LinkedHashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnCheckCardResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnConverEncryptedBlockFormat(Ljava/lang/String;)V
.end method

.method public abstract onReturnCustomConfigResult(ZLjava/lang/String;)V
.end method

.method public abstract onReturnD20SleepTimeResult(Z)V
.end method

.method public abstract onReturnDeviceCSRResult(Ljava/lang/String;)V
.end method

.method public abstract onReturnDeviceCertAndSignatureResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReturnDeviceSigningCertResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReturnDisplayQRCodeResult(Z)V
.end method

.method public abstract onReturnDoInputCustomStr(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReturnDownloadRsaPublicKey(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnGetConnectedShutDownTimeResult(Ljava/lang/String;)V
.end method

.method public abstract onReturnGetCustomEMVListResult(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnGetEMVListResult(Ljava/lang/String;)V
.end method

.method public abstract onReturnGetKeyBoardInputResult(Ljava/lang/String;)V
.end method

.method public abstract onReturnGetPinInputResult(I)V
.end method

.method public abstract onReturnGetPinResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnGetQuickEmvResult(Z)V
.end method

.method public abstract onReturnMPUCardInfo(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnNFCApduResult(ZLjava/lang/String;I)V
.end method

.method public abstract onReturnOperateLEDByTypeResult(Z)V
.end method

.method public abstract onReturnPlayBuzzerByTypeResult(Z)V
.end method

.method public abstract onReturnPosFirmwareUpdateProgressResult(I)V
.end method

.method public abstract onReturnPowerOffCardResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnPowerOffFelicaResult(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;)V
.end method

.method public abstract onReturnPowerOffIccResult(Z)V
.end method

.method public abstract onReturnPowerOffNFCResult(Z)V
.end method

.method public abstract onReturnPowerOnCardResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnPowerOnFelicaResult(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;)V
.end method

.method public abstract onReturnPowerOnIccResult(ZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onReturnPowerOnNFCResult(ZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onReturnRSAResult(Ljava/lang/String;)V
.end method

.method public abstract onReturnReadCardResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnReversalData(Ljava/lang/String;)V
.end method

.method public abstract onReturnRsaResult(Ljava/lang/String;)V
.end method

.method public abstract onReturnSearchCardResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnSendApduFelicaResult(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReturnServerCertResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReturnSetAESResult(ZLjava/lang/String;)V
.end method

.method public abstract onReturnSetConnectedShutDownTimeResult(Z)V
.end method

.method public abstract onReturnSetMasterKeyResult(Z)V
.end method

.method public abstract onReturnSetSleepTimeResult(Z)V
.end method

.method public abstract onReturnSignature(ZLjava/lang/String;)V
.end method

.method public abstract onReturnSignatureAndCertificatesResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReturnSpLogResult(Ljava/lang/String;)V
.end method

.method public abstract onReturnStoreCertificatesResult(Z)V
.end method

.method public abstract onReturnSyncVersionInfo(Lcom/dspread/xpos/QPOSService$FirmwareStatus;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$QposStatus;)V
.end method

.method public abstract onReturnUpdateEMVRIDResult(Z)V
.end method

.method public abstract onReturnUpdateEMVResult(Z)V
.end method

.method public abstract onReturnUpdateIPEKResult(Z)V
.end method

.method public abstract onReturnUpdateKeyByTR_31Result(Z)V
.end method

.method public abstract onReturniccCashBack(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSearchMifareCardResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSetBuzzerResult(Z)V
.end method

.method public abstract onSetBuzzerStatusResult(Z)V
.end method

.method public abstract onSetBuzzerTimeResult(Z)V
.end method

.method public abstract onSetCustomLogoDisplay(Z)V
.end method

.method public abstract onSetManagementKey(Z)V
.end method

.method public abstract onSetParamsResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSetPosBluConfig(Z)V
.end method

.method public abstract onSetSleepModeTime(Z)V
.end method

.method public abstract onSetVendorIDResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTradeCancelled()V
.end method

.method public abstract onUpdateMasterKeyResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdatePosFirmwareResult(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V
.end method

.method public abstract onVerifyMifareCardResult(Z)V
.end method

.method public abstract onWaitingforData(Ljava/lang/String;)V
.end method

.method public abstract onWriteBusinessCardResult(Z)V
.end method

.method public abstract onWriteGasCardResult(Z)V
.end method

.method public abstract onWriteMifareCardResult(Z)V
.end method

.method public abstract transferMifareData(Ljava/lang/String;)V
.end method

.method public abstract verifyMifareULData(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract writeMifareULData(Ljava/lang/String;)V
.end method
