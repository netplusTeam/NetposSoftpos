.class public interface abstract Lcom/visa/vac/tc/emvconverter/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AAC:B = 0x0t

.field public static final ACTION_BEGIN_TRANSACTION:Ljava/lang/String; = "ACTION.BEGIN_TRANSACTION"

.field public static final ACTION_CANCEL_TRANSACTION:Ljava/lang/String; = "ACTION.CANCEL_TRANSACTION"

.field public static final ACTION_COMMUNICATION_FAILED:Ljava/lang/String; = "ACTION.COMMUNICATION_FAILED"

.field public static final ACTION_OPENED_AND_COMPLETE:Ljava/lang/String; = "ACTION.OPENED_AND_COMPLETE"

.field public static final ACTION_OPEN_AND_NO_SELECTION:Ljava/lang/String; = "ACTION.OPEN_AND_NO_SELECTION"

.field public static final ACTION_OPEN_FAILED:Ljava/lang/String; = "ACTION.OPEN_FAILED"

.field public static final ACTION_RESTART:Ljava/lang/String; = "ACTION.OPEN_AND_RESTART"

.field public static final AID_TO_MATCH:Ljava/lang/String; = "AID_TO_MATCH"

.field public static final ALDIL:Ljava/lang/String; = "ALDIL"

.field public static final ALPayload:Ljava/lang/String; = "ALPayload"

.field public static final ARQC:B = -0x80t

.field public static final ASCII:B = 0x1t

.field public static final AUC_DomesticCash:Ljava/lang/String; = "DomesticCash"

.field public static final AUC_DomesticCashback:Ljava/lang/String; = "DomesticCashback"

.field public static final AUC_DomesticGoods:Ljava/lang/String; = "DomesticGoods"

.field public static final AUC_DomesticServices:Ljava/lang/String; = "DomesticServices"

.field public static final AUC_InternationalCash:Ljava/lang/String; = "InternationalCash"

.field public static final AUC_InternationalCashback:Ljava/lang/String; = "InternationalCashback"

.field public static final AUC_InternationalGoods:Ljava/lang/String; = "InternationalGoods"

.field public static final AUC_InternationalServices:Ljava/lang/String; = "InternationalServices"

.field public static final AUC_ValidAtATM:Ljava/lang/String; = "ValidAtATM"

.field public static final AUC_ValidAtNonATM:Ljava/lang/String; = "ValidAtNonATM"

.field public static final ApprovalCode:Ljava/lang/String; = "ApprovalCode"

.field public static final AvailableButEmpty:Ljava/lang/String; = "AvailableButEmpty"

.field public static final BYTE_1:I = 0x0

.field public static final BYTE_2:I = 0x1

.field public static final BYTE_3:I = 0x2

.field public static final BYTE_4:I = 0x3

.field public static final BYTE_5:I = 0x4

.field public static final BYTE_6:I = 0x5

.field public static final CAL:Ljava/lang/String; = "CAL"

.field public static final CARDHOLDER_CHOICE_AVAILABLE:Ljava/lang/String; = "CardholderChoiceAvailable"

.field public static final CDIL:Ljava/lang/String; = "CDIL"

.field public static final CDOL1:I = 0x1

.field public static final CDOL2:I = 0x2

.field public static final CEID:Ljava/lang/String; = "CEID"

.field public static final CID_BYTE1_RFU:B = -0x40t

.field public static final COMMUNICATION_FAILED:Ljava/lang/String; = "COMMUNICATION_FAILED"

.field public static final CTQ_BYTE1_BIT7_SIGNATURE:B = 0x40t

.field public static final CTQ_BYTE1_BIT8_ONLINEPIN:B = -0x80t

.field public static final CTQ_BYTE1_RFU:B = -0x2t

.field public static final CTQ_BYTE2_BIT8_CDCVM_PERFORMED:B = -0x80t

.field public static final CTQ_BYTE2_RFU:B = -0x40t

.field public static final CTQ_CDCVMPerformed:Ljava/lang/String; = "CDCVMPerformed"

.field public static final CTQ_IssuerUpdate:Ljava/lang/String; = "IssuerUpdate"

.field public static final CTQ_NotValidForCLATM:Ljava/lang/String; = "NotValidForCLATM"

.field public static final CTQ_OnlineAppExpire:Ljava/lang/String; = "OnlineAppExpire"

.field public static final CTQ_OnlineODAFail:Ljava/lang/String; = "OnlineODAFail"

.field public static final CTQ_OnlinePIN:Ljava/lang/String; = "OnlinePIN"

.field public static final CTQ_Signature:Ljava/lang/String; = "Signature"

.field public static final CTQ_SwitchCashBack:Ljava/lang/String; = "SwitchCashback"

.field public static final CTQ_SwitchIntODAFail:Ljava/lang/String; = "SwitchIntODAFail"

.field public static final CTQ_SwitchManualCash:Ljava/lang/String; = "SwitchManualCash"

.field public static final CVM_AnyOnDeviceCVM:Ljava/lang/String; = "AnyOnDeviceCVM"

.field public static final CVM_CVMRequired:Ljava/lang/String; = "CVMRequired"

.field public static final CVM_MOCPIN:Ljava/lang/String; = "MOCPIN"

.field public static final CVM_MOIPIN:Ljava/lang/String; = "MOIPIN"

.field public static final CVM_NoCVM:Ljava/lang/String; = "NoCVM"

.field public static final CVM_SignatureAfterTransaction:Ljava/lang/String; = "SignatureAfterTransaction"

.field public static final CardBlob:Ljava/lang/String; = "CardBlob"
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "emv.card.FirstGenCDO.CardBlob",
            "emv.card.AuthCDO.CardBlob"
        }
        value = "CardBlob"
    .end annotation
.end field

.field public static final CardPresent:Ljava/lang/String; = "CardPresent"

.field public static final CompletionStep:Ljava/lang/String; = "CompletionStep"

.field public static final DCM:Ljava/lang/String; = "DCM"

.field public static final DIRECTORY_ENTRY:S = 0x61s

.field public static final DtTm:Ljava/lang/String; = "DtTm"

.field public static final DvcID:Ljava/lang/String; = "DvcID"

.field public static final ERROR0:I = 0x0

.field public static final ERROR1:I = 0x1

.field public static final ERROR2:I = 0x2

.field public static final ERROR3:I = 0x3

.field public static final ERR_ApplicationNotFound:Ljava/lang/String; = "ApplicationNotFound"

.field public static final ERR_CALDatagramRejected:Ljava/lang/String; = "CALDatagramRejected"

.field public static final ERR_CardDatagramError:Ljava/lang/String; = "CardDatagramError"

.field public static final ERR_CardNotFound:Ljava/lang/String; = "CardNotFound"

.field public static final ERR_CardTimeout:Ljava/lang/String; = "CardTimeOut"

.field public static final ERR_CloseCurrentApplication:Ljava/lang/String; = "CloseCurrentApplication"

.field public static final ERR_CommunicationError:Ljava/lang/String; = "CommunicationError"

.field public static final ERR_IncompatibleSessionStatus:Ljava/lang/String; = "IncompatibleSessionStatus"

.field public static final ERR_NoCardDetected:Ljava/lang/String; = "NoCardDetected"

.field public static final ERR_OpenResponseError:Ljava/lang/String; = "OpenResponseError"

.field public static final ERR_PingError:Ljava/lang/String; = "PingError"

.field public static final ERR_RRPRejected:Ljava/lang/String; = "RRPRejected"

.field public static final ERR_ResumeDenied:Ljava/lang/String; = "ResumeDenied"

.field public static final ERR_SuspendDenied:Ljava/lang/String; = "SuspendDenied"

.field public static final FALSE:Ljava/lang/String; = "FALSE"

.field public static final FCI_TEMPLATE:S = 0x6fs

.field public static final FFI_MINI_CARD:B = 0x1t

.field public static final FFI_MOBILE:B = 0x3t

.field public static final FFI_STANDARD_CARD:B = 0x0t

.field public static final FFI_WEARABLE:B = 0x4t

.field public static final FF_MOBILE:Ljava/lang/String; = "Mobile"

.field public static final FF_OTHER:Ljava/lang/String; = "Other"

.field public static final FF_OTHER_CARD:Ljava/lang/String; = "OtherCard"

.field public static final FF_STANDARD_CARD:Ljava/lang/String; = "StandardCard"

.field public static final FF_WEARABLE:Ljava/lang/String; = "Wearable"

.field public static final FINAL_STATUS:Ljava/lang/String; = "FINAL_STATUS"

.field public static final FormFactor:Ljava/lang/String; = "FormFactor"

.field public static final GENAC_P1:Ljava/lang/String; = "GENAC_P1"

.field public static final GPOSW6984:Ljava/lang/String; = "GPOSW6984"

.field public static final GPOSW6985:Ljava/lang/String; = "GPOSW6985"

.field public static final GPOSW6986:Ljava/lang/String; = "GPOSW6986"

.field public static final GPOSW9000:Ljava/lang/String; = "GPOSW9000"

.field public static final GPOSWError:Ljava/lang/String; = "GPOSWError"

.field public static final GPO_RESPONSE_FORMAT2:S = 0x77s

.field public static final HEX:B = 0x0t

.field public static final INTERFACE_CONTACT:Ljava/lang/String; = "Contact"

.field public static final INTERFACE_CONTACTLESS:Ljava/lang/String; = "Contactless"

.field public static final INTERFACE_NONE:Ljava/lang/String; = "NONE"

.field public static final INTERFACE_QRCODE:Ljava/lang/String; = "QRCODE"

.field public static final I_CONTACT:I = 0x3

.field public static final I_CONTACTLESS:I = 0x1

.field public static final I_DUAL:I = 0x4

.field public static final I_NONE:I = 0x0

.field public static final I_QRCODE:I = 0x2

.field public static final I_TESTPLAN:I = 0x5

.field public static final InputCapabilityList:Ljava/lang/String; = "InputCapabilityList:"

.field public static final InterfaceIDList:Ljava/lang/String; = "InterfaceIDList"

.field public static final InteropVersionList:Ljava/lang/String; = "emv.card.InteropVersionList"

.field public static final KDIL:Ljava/lang/String; = "KDIL"

.field public static final KV_AUTH_RESPONSE_CODE:Ljava/lang/String; = "KV.AUTH_RESPONSE_CODE"

.field public static final KV_AUTH_STATUS:Ljava/lang/String; = "KV.AUTH_STATUS"

.field public static final KV_CONTACT_KDIL:Ljava/lang/String; = "KV.CONTACT_KDIL"

.field public static final KV_EXTERNAL_AUTH:Ljava/lang/String; = "KV.EXTERNAL_AUTH"

.field public static final KV_FIRSTGEN_KERNEL:Ljava/lang/String; = "FirstGenKernelID"

.field public static final KV_FIRSTGEN_UNMAPPED_TAG:Ljava/lang/String; = "paymentsystem.tx."

.field public static final KV_ISSUER_SCRIPT_AFTER:Ljava/lang/String; = "KV.ISSUER_SCRIPT_AFTER"

.field public static final KV_ISSUER_SCRIPT_BEFORE:Ljava/lang/String; = "KV.ISSUER_SCRIPT_BEFORE"

.field public static final KV_NEXT_AUTH_STATUS:Ljava/lang/String; = "KV.NEXT_AUTH_STATUS"

.field public static final KV_SVID_LIST:Ljava/lang/String; = "KV.SVID_LIST"

.field public static final KV_TIMEOUT_POLL:Ljava/lang/String; = "KV.TIMEOUT"

.field public static final KV_UNMAPPED_TAG:Ljava/lang/String; = "paymentsystem.tx."

.field public static final LEN:S = 0x1s

.field public static final LV_ACTIVE_INTERFACE:Ljava/lang/String; = "LV.ACTIVE_INTERFACE"

.field public static final LV_AID:Ljava/lang/String; = "LV.AID"

.field public static final LV_AUTH_STATUS:Ljava/lang/String; = "LV.AUTH_STATUS"

.field public static final LV_CDOL1_FROM_RR:Ljava/lang/String; = "LV.CDOL1_FROM_RR"

.field public static final LV_CDOL2_FROM_RR:Ljava/lang/String; = "LV.CDOL2_FROM_RR"

.field public static final LV_CONSTRUCTED_DOL:Ljava/lang/String; = "LV.CONSTRUCTED_DOL"

.field public static final LV_DOL_LIST:Ljava/lang/String; = "LV.DOL_LIST"

.field public static final LV_EMV_SFI:Ljava/lang/String; = "LV.EMV_SFI"

.field public static final LV_GENAC1_P1:Ljava/lang/String; = "LV.GENAC1_P1"

.field public static final LV_GENAC2_DONE:Ljava/lang/String; = "LV.GENAC2_DONE"

.field public static final LV_GENAC2_P1:Ljava/lang/String; = "LV.GENAC2_P1"

.field public static final LV_PRESENTCARD_MSG:Ljava/lang/String; = "LV.PRESENTCARD_MSG"

.field public static final LV_PSE_RR:Ljava/lang/String; = "LV.PSE_RR"

.field public static final LV_QUICK_CHIP_DONE:Ljava/lang/String; = "LV.QUICK_CHIP_DONE"

.field public static final LV_RCP_LIST:Ljava/lang/String; = "LV.RCP_LIST"

.field public static final LV_RN_LIST:Ljava/lang/String; = "LV.RN_LIST"

.field public static final LV_SCRIPT_APPLIED_ERROR:Ljava/lang/String; = "LV.SCRIPT_APPLIED_ERROR"

.field public static final LV_SELECT_P2:Ljava/lang/String; = "LV.SELECT_P2"

.field public static final LV_TAG1:Ljava/lang/String; = "LV.TAG1"

.field public static final LV_TAG2:Ljava/lang/String; = "LV.TAG2"

.field public static final MSG_APPROVED:Ljava/lang/String; = "Approved"

.field public static final MSG_AUTHENTICATION_ERROR:Ljava/lang/String; = "Authentication failed"

.field public static final MSG_NETWORK_ERROR:Ljava/lang/String; = "Network error"

.field public static final MSG_NOT_AUTHORIZED:Ljava/lang/String; = "Not Authorized"

.field public static final MSG_PLEASE_ENTER_PIN:Ljava/lang/String; = "Please enter your PIN"

.field public static final MSG_PLEASE_PRESENT_CARD:Ljava/lang/String; = "Present card"

.field public static final MSG_PLEASE_REMOVE_CARD:Ljava/lang/String; = "Remove card"

.field public static final MSG_QR_PROCESSING:Ljava/lang/String; = "MSG_QR_PROCESSING"

.field public static final MSG_READER_AUTHENTICATION_ERROR:Ljava/lang/String; = "Authentication failed with Reader"

.field public static final MSG_RESTART_CL:Ljava/lang/String; = "Restart"

.field public static final MSG_RESTART_TAGLOST:Ljava/lang/String; = "Restart TAG lost"

.field public static final MSG_SEND_POST:Ljava/lang/String; = "MSG_SEND_POST"

.field public static final MSG_SET_NFC_DONE:Ljava/lang/String; = "MSG_SET_NFC_DONE"

.field public static final MSG_TRANSACTION_ERROR:Ljava/lang/String; = "Transaction failed"

.field public static final MSG_TXN_FAIL:Ljava/lang/String; = "MSG_TXN_FAIL"

.field public static final MSG_TXN_PROCESSING:Ljava/lang/String; = "MSG_TXN_PROCESSING"

.field public static final MSG_TXN_SUCCESS:Ljava/lang/String; = "MSG_TXN_SUCCESS"

.field public static final MYAPIKEY:Ljava/lang/String; = "F5ZE0KB7R1EKZBH4C2JA11oEcpeHVC1RLQuyTsF2B8Uzg6Bzs"

.field public static final MrchntID:Ljava/lang/String; = "MrchntID"

.field public static final NEGATIVE:B = -0x5bt

.field public static final NFC_ERR:I = 0x2

.field public static final NOTHING:I = 0x0

.field public static final NOTINIT:I = -0x1

.field public static final NOT_INIT:B = -0x1t

.field public static final NotYetAvailable:Ljava/lang/String; = "NotYetAvailable"

.field public static final OPENED_AND_RECEIVE:Ljava/lang/String; = "OPENED_AND_RECEIVE"

.field public static final OPEN_FAILED:Ljava/lang/String; = "OPEN_FAILED"

.field public static final OTHER_ERROR:Ljava/lang/String; = "ERROR"

.field public static final PARTIAL_MATCH:Ljava/lang/String; = "KV.PARTIAL_MATCH"

.field public static final PDOL:I = 0x0

.field public static final POID:Ljava/lang/String; = "POID"

.field public static final POIL:Ljava/lang/String; = "POIL"

.field public static final POIS:Ljava/lang/String; = "POIS"

.field public static final POSITIVE:B = 0x5at

.field public static final POS_AUTHENTICATION_FAILED:I = 0x66

.field public static final POS_STATE_ACTIVE:I = 0xc

.field public static final POS_STATE_CAPTURE_CVM:I = 0x10

.field public static final POS_STATE_COMPLETE:I = 0x12

.field public static final POS_STATE_FINAL_STATUS:I = 0x11

.field public static final POS_STATE_IDLE:I = 0x0

.field public static final POS_STATE_NETWORK_ERROR:I = 0x65

.field public static final POS_STATE_RESTART:I = 0xd

.field public static final POS_STATE_RESTART_CLOSE:I = 0xe

.field public static final POS_STATE_REST_SENT:I = 0x32

.field public static final POS_STATE_SET_INTERFACE:I = 0xb

.field public static final POS_STATE_START:I = 0xa

.field public static final POS_STATE_TAGLOST:I = 0xf

.field public static final POS_STATE_WAIT:I = 0x1

.field public static final POS_TRANSACTION_ERROR:I = 0x64

.field public static final ProcessedCDO:Ljava/lang/String; = "ProcessedCDO"

.field public static final QR_PAYLOAD_FORMAT:S = 0x85s

.field public static final READ_RECORD:I = 0x3

.field public static final RECEIVE_DATA:Ljava/lang/String; = "RECEIVE_DATA"

.field public static final RESTART_SELECTION:Ljava/lang/String; = "RESTART_SELECTION"

.field public static final ReceiptData:Ljava/lang/String; = "ReceiptData"

.field public static final ResponseRequirementCDO:Ljava/lang/String; = "ResponseRequirementCDO"
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.AuthCDO.ResponseRequirementCDO"
    .end annotation
.end field

.field public static final SCRIPT_APPLY_EXTERNAL_AUTH:Ljava/lang/String; = "SE.APPLY_EXTERNAL_AUTH"

.field public static final SCRIPT_APPLY_ISSUER_SCRIPT_AFTER_GAC2:Ljava/lang/String; = "SE.APPLY_ISSUER_SCRIPT_AFTER_GAC2"

.field public static final SCRIPT_APPLY_ISSUER_SCRIPT_BEFORE_GAC2:Ljava/lang/String; = "SE.APPLY_ISSUER_SCRIPT_BEFORE_GAC2"

.field public static final SCRIPT_BUILD_CANDIDATE_LIST:Ljava/lang/String; = "SE.BUILD_CANDIDATE_LIST"

.field public static final SCRIPT_BUILD_CDOL1:Ljava/lang/String; = "SE.BUILD_CDOL1"

.field public static final SCRIPT_BUILD_CDOL2:Ljava/lang/String; = "SE.BUILD_CDOL2"

.field public static final SCRIPT_BUILD_PDOL:Ljava/lang/String; = "SE.BUILD_PDOL"

.field public static final SCRIPT_CALLBACK:Ljava/lang/String; = "SCRIPT_CALLBACK"

.field public static final SCRIPT_CARD_DETECTED:Ljava/lang/String; = "SE.CARD_DETECTED"

.field public static final SCRIPT_CHECK_EXTERNAL_AUTH_PRESENCE:Ljava/lang/String; = "SE.CHECK_EXTERNAL_AUTH_PRESENCE"

.field public static final SCRIPT_CHECK_GAC2_IS_NEEDED:Ljava/lang/String; = "SE.CHECK_GAC2_IS_NEEDED"

.field public static final SCRIPT_CHECK_ISSUER_SCRIPT_PRESENCE_AFTER_GAC2:Ljava/lang/String; = "SE.CHECK_ISSUER_SCRIPT_PRESENCE_AFTER_GAC2"

.field public static final SCRIPT_CHECK_ISSUER_SCRIPT_PRESENCE_BEFORE_GAC2:Ljava/lang/String; = "SE.CHECK_ISSUER_SCRIPT_PRESENCE_BEFORE_GAC2"

.field public static final SCRIPT_CHECK_NEED_GOBACK_KIC_INCASE_ERROR:Ljava/lang/String; = "SE.CHECK_NEED_GOBACK_KIC_INCASE_ERROR"

.field public static final SCRIPT_CLOSE:Ljava/lang/String; = "SE.CLOSE"

.field public static final SCRIPT_CLOSE_QUICK_CHIP:Ljava/lang/String; = "SE.CLOSE_QUICK_CHIP"

.field public static final SCRIPT_CLOSE_RESTART:Ljava/lang/String; = "SE.CLOSE_RESTART"

.field public static final SCRIPT_COLLISION:Ljava/lang/String; = "SE.COLLISION"

.field public static final SCRIPT_DO_MATCH_CT:Ljava/lang/String; = "SE.DO_MATCH"

.field public static final SCRIPT_DO_MATCH_PPSE:Ljava/lang/String; = "SE.DO_MATCH_PPSE"

.field public static final SCRIPT_EXECUTE_QUICK_CHIP:Ljava/lang/String; = "SE.EXECUTE_QUICK_CHIP"

.field public static final SCRIPT_GENAC1:Ljava/lang/String; = "SE.GEN_AC1"

.field public static final SCRIPT_GENAC2:Ljava/lang/String; = "SE.GEN_AC2"

.field public static final SCRIPT_GET_DATA_CT:Ljava/lang/String; = "SE.GET_DATA"

.field public static final SCRIPT_GPO:Ljava/lang/String; = "SE.GPO"

.field public static final SCRIPT_GPO_CT:Ljava/lang/String; = "SE.GPO"

.field public static final SCRIPT_HANDLE_ERROR_SET1:Ljava/lang/String; = "SE.HANDLE_ERROR_SET1"

.field public static final SCRIPT_HANDLE_ERROR_SET2:Ljava/lang/String; = "SE.HANDLE_ERROR_SET2"

.field public static final SCRIPT_IDLE:Ljava/lang/String; = "SE.RETURN_TO_IDLE"

.field public static final SCRIPT_PLEASE_INSERT_CARD:Ljava/lang/String; = "SE.PLEASE_INSERT_CARD"

.field public static final SCRIPT_POLL:Ljava/lang/String; = "SE.POLL_FOR_CARD"

.field public static final SCRIPT_PSE_RR:Ljava/lang/String; = "SE.READ_RECORD_PSE"

.field public static final SCRIPT_READ_DATA:Ljava/lang/String; = "READ_DATA"

.field public static final SCRIPT_READ_RECORDS:Ljava/lang/String; = "SE.READ_RECORDS"

.field public static final SCRIPT_READ_RECORDS_CT:Ljava/lang/String; = "SE.READ_RECORDS"

.field public static final SCRIPT_REMOVE_CANDIDATE:Ljava/lang/String; = "SE.REMOVE_CANDIDATE"

.field public static final SCRIPT_RESET_DEFAULT_UI:Ljava/lang/String; = "SE.RESET_DEFAULT_UI"

.field public static final SCRIPT_RESTART_OPEN:Ljava/lang/String; = "SE.RESTART_OPEN"

.field public static final SCRIPT_SCAN_DECODE_QRCODE:Ljava/lang/String; = "SCAN_DECODE_QRCODE"

.field public static final SCRIPT_SELECT_FINAL:Ljava/lang/String; = "SE.SELECT_FINAL"

.field public static final SCRIPT_SELECT_FINAL_CT:Ljava/lang/String; = "SE.SELECT_FINAL"

.field public static final SCRIPT_SELECT_PPSE:Ljava/lang/String; = "SE.SELECT_PPSE"

.field public static final SCRIPT_SELECT_PSE:Ljava/lang/String; = "SE.SELECT_PSE"

.field public static final SCRIPT_START_APDU:Ljava/lang/String; = "SE.START_APDU"

.field public static final SCRIPT_STOP:Ljava/lang/String; = "SE.STOP"

.field public static final SCRIPT_UI_COLLISION:Ljava/lang/String; = "UI.COLLISION"

.field public static final SCRIPT_UI_FINAL_OUTCOME:Ljava/lang/String; = "UI.FINAL_OUTCOME"

.field public static final SCRIPT_UI_PRESENT_CARD:Ljava/lang/String; = "UI.PRESENT_CARD"

.field public static final SCRIPT_UI_PRESENT_CARD_AGAIN:Ljava/lang/String; = "UI.PRESENT_CARD_AGAIN"

.field public static final SCRIPT_UI_PROCESSING:Ljava/lang/String; = "UI.PROCESSING"

.field public static final SCRIPT_UI_PROCESSING_CANDIDATE:Ljava/lang/String; = "UI.PROCESSING_CANDIDATE"

.field public static final SCRIPT_UI_PROCESSING_PSE:Ljava/lang/String; = "UI.PROCESSING_PSE"

.field public static final SCRIPT_UI_REMOVE_CARD:Ljava/lang/String; = "UI.REMOVE_CARD"

.field public static final SCRIPT_UI_REMOVE_CARD_QUICK_CHIP:Ljava/lang/String; = "UI.REMOVE_CARD_QUICK_CHIP"

.field public static final SCRIPT_VALIDATE_QR:Ljava/lang/String; = "VALIDATE_QR"

.field public static final SCRIPT_VERIFY_AFL:Ljava/lang/String; = "SE.VERIFY_AFL"

.field public static final SCRIPT_VERIFY_AFL_CT:Ljava/lang/String; = "SE.VERIFY_AFL"

.field public static final SCRIPT_VERIFY_PDOL:Ljava/lang/String; = "SE.BUILD_PDOL"

.field public static final SELECT_PAY_APP:I = 0x1

.field public static final SELECT_PPSE:I = 0x0

.field public static final SELECT_PSE:I = 0x0

.field public static final SEND_GAC1:I = 0x4

.field public static final SEND_GAC2:I = 0x5

.field public static final SEND_GPO:I = 0x2

.field public static final SPLIT_TC_AIDLIST:Ljava/lang/String; = "SPLIT_TC_AIDLIST"

.field public static final SPLIT_TC_CARDHOLDER:Ljava/lang/String; = "SPLIT_TC_CARDHOLDER"

.field public static final SPLIT_TC_DATASET:Ljava/lang/String; = "SPLIT_TC_DATASET"

.field public static final SPLIT_TC_ELIGIBLE:Ljava/lang/String; = "SPLIT_TC_ELIGIBLE"

.field public static final SPLIT_TC_EVENT:Ljava/lang/String; = "SPLIT_TC_EVENT"

.field public static final SPLIT_TC_PDOL:Ljava/lang/String; = "SPLIT_TC_PDOL"

.field public static final SPLIT_TC_TIMEOUT_POLL:Ljava/lang/String; = "SPLIT_TC_TIMEOUT_POLL"

.field public static final START_NFC:I = 0x1

.field public static final STATE_IDLE:I = -0x1

.field public static final StrID:Ljava/lang/String; = "StrID"

.field public static final TAG:S = 0x0s

.field public static final TAG_AC:S = -0x60das

.field public static final TAG_ADDITIONAL_TERM_CAP:S = -0x60c0s

.field public static final TAG_AEF_DATA_TEMPLATE:S = 0x70s

.field public static final TAG_AFL:S = 0x94s

.field public static final TAG_AID:S = 0x4fs

.field public static final TAG_AID_TERMINAL:S = -0x60fas

.field public static final TAG_AIP:S = 0x82s

.field public static final TAG_AMOUNT_AUTHORIZED:S = -0x60fes

.field public static final TAG_AMOUNT_AUTHORIZED_BINARY:S = 0x81s

.field public static final TAG_AMOUNT_CASHBACK_BINARY:S = -0x60fcs

.field public static final TAG_AMOUNT_OTHER:S = -0x60fds

.field public static final TAG_APPLICATION_EXPIRATION_DATE:S = 0x5f24s

.field public static final TAG_APPLICATION_LABEL:S = 0x50s

.field public static final TAG_APPLICATION_PAN:S = 0x5as

.field public static final TAG_APPLICATION_PAN_SEQUENCE_NUMBER:S = 0x5f34s

.field public static final TAG_APPLICATION_PREFERRED_NAME:S = -0x60ees

.field public static final TAG_APPLICATION_PRIORITY_INDICATOR:S = 0x87s

.field public static final TAG_ATC:S = -0x60cas

.field public static final TAG_AUTHORIZATION_RESPONSE_CODE:S = 0x8as

.field public static final TAG_CARD_AUTHENTICATION_RELATED_DATA:S = -0x6097s

.field public static final TAG_CARD_TRANSACTION_QUALIFIERS:S = -0x6094s

.field public static final TAG_CDOL1:S = 0x8cs

.field public static final TAG_CDOL2:S = 0x8ds

.field public static final TAG_CID:S = -0x60d9s

.field public static final TAG_CUSTOMER_EXCLUSIVE_DATA:S = -0x6084s

.field public static final TAG_CVM_KERNEL_OUTCOME:S = -0x20fds

.field public static final TAG_CVM_REQUIRED_LIMIT:S = -0x20ffs

.field public static final TAG_DF_NAME:S = 0x84s

.field public static final TAG_EXTENDED_SELECTION:S = -0x60d7s

.field public static final TAG_FCI_ISSUER_DISCRETIONARY_DATA:S = -0x40f4s

.field public static final TAG_FCI_PROPRIETARY_TEMPLATE:S = 0xa5s

.field public static final TAG_FCI_TEMPLATE:S = 0x6fs

.field public static final TAG_FORM_FACTOR_INDICATOR:S = -0x6092s

.field public static final TAG_ISSUER_APPLICATION_DATA:S = -0x60f0s

.field public static final TAG_LCOL:S = -0x60ecs

.field public static final TAG_LEGACY_KERNEL_ID:S = -0x60d6s

.field public static final TAG_LOST:B = -0x10t

.field public static final TAG_PAYMENT_ACCOUNT_REFERENCE:S = -0x60dcs

.field public static final TAG_PDOL:S = -0x60c8s

.field public static final TAG_POS_ENTRY_MODE:S = -0x60c7s

.field public static final TAG_RESP_MSG_TEMPLATE_FORMAT_1:S = 0x80s

.field public static final TAG_SFI:S = 0x88s

.field public static final TAG_SIGNED_DYNAMIC_APPLICATION_DATA:S = -0x60b5s

.field public static final TAG_TERMINAL_CAPABILIITES:S = -0x60cds

.field public static final TAG_TERMINAL_COUNTRY_CODE:S = -0x60e6s

.field public static final TAG_TERMINAL_MERCHANT_NAME_LOCATION:S = -0x60b2s

.field public static final TAG_TERMINAL_TRANSACTION_QUALIFIERS:S = -0x609as

.field public static final TAG_TEST_OUTCOME:S = 0xaas

.field public static final TAG_TRACK_2_EQUIVALENT_DATA:S = 0x57s

.field public static final TAG_TRANSACTION_CURRENCY_CODE:S = 0x5f2as

.field public static final TAG_TRANSACTION_CURRENCY_EXPONENT:S = 0x5f36s

.field public static final TAG_TRANSACTION_DATE:S = 0x9as

.field public static final TAG_TRANSACTION_SEQUENCE_COUNTER:S = -0x60bfs

.field public static final TAG_TRANSACTION_TIME:S = -0x60dfs

.field public static final TAG_TRANSACTION_TYPE:S = 0x9cs

.field public static final TAG_TSI:S = 0x9bs

.field public static final TAG_TTP_KERNEL_VERSION:S = -0x20fes

.field public static final TAG_TVR:S = 0x95s

.field public static final TAG_UCOL:S = -0x60dds

.field public static final TAG_UNPREDICTABLE_NUMBER:S = -0x60c9s

.field public static final TC:B = 0x40t

.field public static final TEST_OUTCOME_APPROVED:B = 0x20t

.field public static final TEST_OUTCOME_DECLINE:B = 0x10t

.field public static final TEST_OUTCOME_TERMINATE:B = -0x10t

.field public static final TIMEOUT_MILLISECONDS:I = 0xbb8

.field public static final TRANSACTION_TYPE_PAYMENT:B = 0x0t

.field public static final TRANSACTION_TYPE_REFUND:B = 0x20t

.field public static final TRMCapabilityList:Ljava/lang/String; = "TRMCapabilityList"

.field public static final TRUE:Ljava/lang/String; = "TRUE"

.field public static final TTP_CVM_DECLINED:Ljava/lang/String; = "CVMDeclined"

.field public static final TTP_CVM_NOT_REQUIRED:Ljava/lang/String; = "CVMNotRequired"

.field public static final TTP_CVM_ONLINE_PIN:Ljava/lang/String; = "CVMOnlinePIN"

.field public static final TTP_CVM_SIGNATURE:Ljava/lang/String; = "CVMSignature"

.field public static final TTP_OUTCOME_COMPLETE:Ljava/lang/String; = "COMPLETED"

.field public static final TTP_OUTCOME_DECLINED:Ljava/lang/String; = "DECLINED"

.field public static final TTP_OUTCOME_TERMINATE:Ljava/lang/String; = "TERMINATED"

.field public static final TTP_OUTCOME_TRYAGAIN:Ljava/lang/String; = "TRYAGAIN"

.field public static final TTP_OUTCOME_TRYNEXT:Ljava/lang/String; = "TRYNEXT"

.field public static final TTP_STATUS_ERR_MISSING_MANDATORY_TAG:Ljava/lang/String; = "MISSINGTAG"

.field public static final TTQ_BYTE1_BIT1_ODA:B = 0x1t

.field public static final TTQ_BYTE1_BIT2_SIGNATURE:B = 0x2t

.field public static final TTQ_BYTE1_BIT3_ONLINE_PIN:B = 0x4t

.field public static final TTQ_BYTE1_BIT4_OFFLINE_ONLY:B = 0x8t

.field public static final TTQ_BYTE1_BIT5_EMV:B = 0x10t

.field public static final TTQ_BYTE1_BIT6_QVSDC:B = 0x20t

.field public static final TTQ_BYTE1_BIT7:B = 0x40t

.field public static final TTQ_BYTE1_BIT8_MSD:B = -0x80t

.field public static final TTQ_BYTE2_BIT1:B = 0x1t

.field public static final TTQ_BYTE2_BIT2:B = 0x2t

.field public static final TTQ_BYTE2_BIT3:B = 0x4t

.field public static final TTQ_BYTE2_BIT4:B = 0x8t

.field public static final TTQ_BYTE2_BIT5:B = 0x10t

.field public static final TTQ_BYTE2_BIT6_OFFLINE_PIN_SUPPORTED:B = 0x20t

.field public static final TTQ_BYTE2_BIT7_CVM_REQ:B = 0x40t

.field public static final TTQ_BYTE2_BIT8_ONLINE_REQ:B = -0x80t

.field public static final TTQ_BYTE3_BIT7_CDCVM:B = 0x40t

.field public static final TTQ_BYTE3_BIT8_ISSUER_UPDATE:B = -0x80t

.field public static final TTQ_CDCVMSupported:Ljava/lang/String; = "CDCVMSupported"

.field public static final TTQ_CVMRequired:Ljava/lang/String; = "CVMRequired"

.field public static final TTQ_IssuerUpdateSupported:Ljava/lang/String; = "IssuerUpdateSupported"

.field public static final TTQ_ODASupported:Ljava/lang/String; = "ODASupported"

.field public static final TTQ_OfflineOnlyReader:Ljava/lang/String; = "OfflineOnlyReader"

.field public static final TTQ_OfflinePINSupported:Ljava/lang/String; = "OfflinePINSupported"

.field public static final TTQ_OnlinePINSupported:Ljava/lang/String; = "OnlinePINSupported"

.field public static final TTQ_OnlineRequired:Ljava/lang/String; = "OnlineRequired"

.field public static final TTQ_SignatureSupported:Ljava/lang/String; = "SignatureSupported"

.field public static final TTQ_qVSDCSupported:Ljava/lang/String; = "qVSDCSupported"

.field public static final TXN_ACTIVE:I = 0x8

.field public static final TXN_AID_ERROR:I = 0x2

.field public static final TXN_DONE:I = 0x0

.field public static final TXN_ERROR:I = -0x1

.field public static final TXN_GPO_ERROR:I = 0x3

.field public static final TXN_NO_CANDIDATE:I = 0x1

.field public static final TXN_OFFLINE_APPROVAL:B = 0x0t

.field public static final TXN_OFFLINE_DECLINE:B = 0x10t

.field public static final TXN_ONLINE_APPROVAL:B = 0x20t

.field public static final TXN_ONLINE_DECLINE:B = 0x30t

.field public static final TXN_READRECORD_ERROR:I = 0x4

.field public static final TXN_RESTART:I = 0xa

.field public static final TXN_RESTART_TAGLOST:I = 0xb

.field public static final TXN_SENDREST:I = 0x9

.field public static final TXN_START:I = 0x7

.field public static final TXN_SWITCH:I = 0x5

.field public static final TXN_SWITCH_INTERFACE:B = -0x20t

.field public static final TXN_TERMINATE:I = 0x6

.field public static final TXN_TERMINATION:B = -0x10t

.field public static final TXN_TYPE_MANUAL_CASH:B = 0x1t

.field public static final TXN_TYPE_PURCHASE:B = 0x0t

.field public static final TXN_TYPE_REFUND:B = 0x20t

.field public static final TxID:Ljava/lang/String; = "TxID"

.field public static final Unavailable:Ljava/lang/String; = "Unavailable"

.field public static final VISA_AID:[B

.field public static final VISA_RID:[B

.field public static final XML_ACTIONS:Ljava/lang/String; = "ActionTable"

.field public static final XML_DATAMAPS:Ljava/lang/String; = "DataMappingTable"

.field public static final XML_LOCALCONFIGS:Ljava/lang/String; = "LocalConfigParameters"

.field public static final XML_SCRIPTDEFAULTS:Ljava/lang/String; = "ScriptDefaultParameters"

.field public static final XML_SCRIPTS:Ljava/lang/String; = "ScriptTable"

.field public static final b_CONTACT:B = -0x80t

.field public static final b_CONTACTLESS:B = 0x40t

.field public static final b_DUAL:B = -0x40t

.field public static final bit1:B = 0x1t

.field public static final bit2:B = 0x2t

.field public static final bit3:B = 0x4t

.field public static final bit4:B = 0x8t

.field public static final bit5:B = 0x10t

.field public static final bit6:B = 0x20t

.field public static final bit7:B = 0x40t

.field public static final bit8:B = -0x80t

.field public static final emv_DirectoryEntry:Ljava/lang/String; = "DirectoryEntry"

.field public static final emv_Track2:Ljava/lang/String; = "Track2"

.field public static final emv_card_AIP:Ljava/lang/String; = "emv.card.AIP"

.field public static final emv_card_ALMessageCDO:Ljava/lang/String; = "emv.card.ALMessageCDO"

.field public static final emv_card_AOSA:Ljava/lang/String; = "emv.card.AOSA"

.field public static final emv_card_ATC:Ljava/lang/String; = "emv.card.ATC"

.field public static final emv_card_AUC:Ljava/lang/String; = "emv.card.AUC"

.field public static final emv_card_ApplicationLabel:Ljava/lang/String; = "emv.card.ApplicationLabel"

.field public static final emv_card_ApplicationUsageControlList:Ljava/lang/String; = "emv.card.ApplicationUsageControlList"

.field public static final emv_card_AuthCDO:Ljava/lang/String; = "emv.card.AuthCDO"

.field public static final emv_card_AuthCDO_ResponseRequirementCDO_Delegate:Ljava/lang/String; = "emv.card.AuthCDO.ResponseRequirementCDO.Delegate"

.field public static final emv_card_AuthCDO_ResponseRequirementCDO_ReadyForOnlineResponse:Ljava/lang/String; = "emv.card.AuthCDO.ResponseRequirementCDO.ReadyForOnlineResponse"

.field public static final emv_card_AuthCDO_Status:Ljava/lang/String; = "Status"
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.AuthCDO.Status"
    .end annotation
.end field

.field public static final emv_card_BlindedPublicKey:Ljava/lang/String; = "emv.card.BlindedPublicKey"

.field public static final emv_card_BlindingFactor:Ljava/lang/String; = "emv.card.BlindingFactor"

.field public static final emv_card_CAPublicKeyIndex:Ljava/lang/String; = "emv.card.CAPublicKeyIndex"

.field public static final emv_card_CDOL1:Ljava/lang/String; = "emv.card.CDOL1"

.field public static final emv_card_CDOL2:Ljava/lang/String; = "emv.card.CDOL2"

.field public static final emv_card_CVBlindedPublicKey:Ljava/lang/String; = "emv.card.CVBlindedPublicKey"

.field public static final emv_card_CVBlindingFactor:Ljava/lang/String; = "emv.card.CVBlindingFactor"

.field public static final emv_card_CVCardPublicKeyCert:Ljava/lang/String; = "emv.card.CVCardPublicKeyCert"

.field public static final emv_card_CVDataSessionKey:Ljava/lang/String; = "emv.card.CVDataSessionKey"

.field public static final emv_card_CVEDSecurePayload:Ljava/lang/String; = "emv.card.CVEDSecurePayload"

.field public static final emv_card_CVIssuerPublicKeyCert:Ljava/lang/String; = "emv.card.CVIssuerPublicKeyCert"

.field public static final emv_card_CVMReqCDO:Ljava/lang/String; = "emv.card.CVMReqCDO"

.field public static final emv_card_CVSCAlgorithmSuiteList:Ljava/lang/String; = "emv.card.CVSCAlgorithmSuiteList"

.field public static final emv_card_CVSCUNc:Ljava/lang/String; = "emv.card.CVSCUNc"

.field public static final emv_card_CardPublicKeyCert:Ljava/lang/String; = "emv.card.CardPublicKeyCert"

.field public static final emv_card_CardholderDeviceCDO:Ljava/lang/String; = "emv.card.CardholderDeviceCDO"

.field public static final emv_card_CardholderName:Ljava/lang/String; = "emv.card.CardholderName"

.field public static final emv_card_CertificateEncoding:Ljava/lang/String; = "emv.card.CertificateEncoding"

.field public static final emv_card_CloseAppIndicator:Ljava/lang/String; = "emv.card.CloseAppIndicator"

.field public static final emv_card_ConditionalAuthRequestDataIDList:Ljava/lang/String; = "emv.card.ConditionalAuthRequestDataIDList"

.field public static final emv_card_ConditionalTransactionCompletionDataIDList:Ljava/lang/String; = "emv.card.ConditionalTransactionCompletionDataIDList"

.field public static final emv_card_DDOL:Ljava/lang/String; = "emv.card.DDOL"

.field public static final emv_card_DataEncoding:Ljava/lang/String; = "emv.card.DataEncoding"

.field public static final emv_card_DisconnectIndicator:Ljava/lang/String; = "emv.card.DisconnectIndicator"

.field public static final emv_card_DuplicateList:Ljava/lang/String; = "emv.card.DuplicateList"

.field public static final emv_card_EffectiveDate:Ljava/lang/String; = "emv.card.EffectiveDate"

.field public static final emv_card_ErrorCode:Ljava/lang/String; = "emv.card.ErrorCode"

.field public static final emv_card_ExpiryDate:Ljava/lang/String; = "emv.card.ExpiryDate"

.field public static final emv_card_FinalFirstGenDataCDO:Ljava/lang/String; = "emv.card.FinalFirstGenDataCDO"

.field public static final emv_card_FinalFirstGenDataCDO_AID:Ljava/lang/String; = "emv.card.FinalFirstGenDataCDO.AID"

.field public static final emv_card_FinalFirstGenDataCDO_AIP:Ljava/lang/String; = "emv.card.FinalFirstGenDataCDO.AIP"

.field public static final emv_card_FinalFirstGenDataCDO_ATC:Ljava/lang/String; = "emv.card.FinalFirstGenDataCDO.ATC"

.field public static final emv_card_FinalFirstGenDataCDO_CID:Ljava/lang/String; = "emv.card.FinalFirstGenDataCDO.CID"

.field public static final emv_card_FinalFirstGenDataCDO_CardBlob:Ljava/lang/String; = "emv.card.FinalFirstGenDataCDO.CardBlob"

.field public static final emv_card_FinalFirstGenDataCDO_IAD:Ljava/lang/String; = "emv.card.FinalFirstGenDataCDO.IAD"

.field public static final emv_card_FirstGenCVMData:Ljava/lang/String; = "emv.card.FirstGenCVMData"

.field public static final emv_card_FirstGenDataCDO:Ljava/lang/String; = "emv.card.FirstGenDataCDO"

.field public static final emv_card_FirstGenDataCDO_AID:Ljava/lang/String; = "emv.card.FirstGenDataCDO.AID"

.field public static final emv_card_FirstGenDataCDO_AIP:Ljava/lang/String; = "emv.card.FirstGenDataCDO.AIP"

.field public static final emv_card_FirstGenDataCDO_ATC:Ljava/lang/String; = "emv.card.FirstGenDataCDO.ATC"

.field public static final emv_card_FirstGenDataCDO_CARD:Ljava/lang/String; = "emv.card.FirstGenDataCDO.CARD"

.field public static final emv_card_FirstGenDataCDO_CID:Ljava/lang/String; = "emv.card.FirstGenDataCDO.CID"

.field public static final emv_card_FirstGenDataCDO_CardBlob:Ljava/lang/String; = "emv.card.FirstGenDataCDO.CardBlob"

.field public static final emv_card_FirstGenDataCDO_IAD:Ljava/lang/String; = "emv.card.FirstGenDataCDO.IAD"

.field public static final emv_card_FirstGenDataCDO_TransactionType:Ljava/lang/String; = "emv.card.FirstGenDataCDO.TransactionType"

.field public static final emv_card_FirstGenVersionNumber:Ljava/lang/String; = "emv.card.FirstGenVersionNumber"

.field public static final emv_card_IACDefault:Ljava/lang/String; = "emv.card.IACDefault"

.field public static final emv_card_IACDenial:Ljava/lang/String; = "emv.card.IACDenial"

.field public static final emv_card_IACOnline:Ljava/lang/String; = "emv.card.IACOnline"

.field public static final emv_card_ICCPINPublicKeyCDO_Cert:Ljava/lang/String; = "emv.card.ICCPINPublicKeyCDO.Cert"

.field public static final emv_card_ICCPINPublicKeyCDO_Exponent:Ljava/lang/String; = "emv.card.ICCPINPublicKeyCDO.Exponent"

.field public static final emv_card_ICCPINPublicKeyCDO_Remainder:Ljava/lang/String; = "emv.card.ICCPINPublicKeyCDO.Remainder"

.field public static final emv_card_ICCPublicKeyCDO_Cert:Ljava/lang/String; = "emv.card.ICCPublicKeyCDO.Cert"

.field public static final emv_card_ICCPublicKeyCDO_Exponent:Ljava/lang/String; = "emv.card.ICCPublicKeyCDO.Exponent"

.field public static final emv_card_ICCPublicKeyCDO_Remainder:Ljava/lang/String; = "emv.card.ICCPublicKeyCDO.Remainder"

.field public static final emv_card_IIN:Ljava/lang/String; = "emv.card.IIN"

.field public static final emv_card_IssuerAuthResult:Ljava/lang/String; = "emv.card.IssuerAuthResult"

.field public static final emv_card_IssuerBlobResponse:Ljava/lang/String; = "emv.card.IssuerBlobResponse"

.field public static final emv_card_IssuerCertifiedCardDataCDO:Ljava/lang/String; = "emv.card.IssuerCertifiedCardDataCDO"

.field public static final emv_card_IssuerCertifiedCardDataCDO_DataIDList:Ljava/lang/String; = "emv.card.IssuerCertifiedCardDataCDO.DataIDList"

.field public static final emv_card_IssuerCertifiedCardDataCDO_HashAlgorithmIndicator:Ljava/lang/String; = "emv.card.IssuerCertifiedCardDataCDO.HashAlgorithmIndicator"

.field public static final emv_card_IssuerCertifiedCardDataDefinitionCDO:Ljava/lang/String; = "emv.card.IssuerCertifiedCardDataDefinitionCDO"

.field public static final emv_card_IssuerCertifiedCardDataDefinitionCDO_DataIDList:Ljava/lang/String; = "emv.card.IssuerCertifiedCardDataDefinitionCDO.DataIDList"

.field public static final emv_card_IssuerCertifiedCardDataDefinitionCDO_HashAlgorithmIndicator:Ljava/lang/String; = "emv.card.IssuerCertifiedCardDataDefinitionCDO.HashAlgorithmIndicator"

.field public static final emv_card_IssuerCertifiedCardDataDefinitionCDO_HashEncoding:Ljava/lang/String; = "emv.card.IssuerCertifiedCardDataDefinitionCDO.HashEncoding"

.field public static final emv_card_IssuerCertifiedCardDataIDList:Ljava/lang/String; = "emv.card.IssuerCertifiedCardDataIDList"

.field public static final emv_card_IssuerCountryCode:Ljava/lang/String; = "emv.card.IssuerCountryCode"

.field public static final emv_card_IssuerCurrencyCode:Ljava/lang/String; = "emv.card.IssuerCurrencyCode"

.field public static final emv_card_IssuerDataList:Ljava/lang/String; = "emv.card.IssuerDataList"

.field public static final emv_card_IssuerPKCDO_IPKCert:Ljava/lang/String; = "emv.card.IssuerPKCDO.IPKCert"

.field public static final emv_card_IssuerPKCDO_IPKExp:Ljava/lang/String; = "emv.card.IssuerPKCDO.IPKExp"

.field public static final emv_card_IssuerPKCDO_IPKRem:Ljava/lang/String; = "emv.card.IssuerPKCDO.IPKRem"

.field public static final emv_card_IssuerPKCDO_PKI:Ljava/lang/String; = "emv.card.IssuerPKCDO.PKI"

.field public static final emv_card_IssuerPublicKeyCDO:Ljava/lang/String; = "emv.card.IssuerPublicKeyCDO"

.field public static final emv_card_IssuerPublicKeyCDO_Cert:Ljava/lang/String; = "emv.card.IssuerPublicKeyCDO.Cert"

.field public static final emv_card_IssuerPublicKeyCDO_Exponent:Ljava/lang/String; = "emv.card.IssuerPublicKeyCDO.Exponent"

.field public static final emv_card_IssuerPublicKeyCDO_Remainder:Ljava/lang/String; = "emv.card.IssuerPublicKeyCDO.Remainder"

.field public static final emv_card_IssuerScriptResponseList:Ljava/lang/String; = "emv.card.IssuerScriptResponseList"

.field public static final emv_card_LCOL:Ljava/lang/String; = "emv.card.LCOL"

.field public static final emv_card_LastOnlineATC:Ljava/lang/String; = "emv.card.LastOnlineATC"

.field public static final emv_card_MaskedPANLast4:Ljava/lang/String; = "emv.card.MaskedPANLast4"

.field public static final emv_card_MessageChoiceCDO:Ljava/lang/String; = "emv.card.MessageChoiceCDO"

.field public static final emv_card_NextCVMRequirementCDO:Ljava/lang/String; = "emv.card.NextCVMRequirementCDO"

.field public static final emv_card_OnlineOnly:Ljava/lang/String; = "emv.card.OnlineOnly"

.field public static final emv_card_OpenDataContainer:Ljava/lang/String; = "emv.card.OpenDataContainer"

.field public static final emv_card_PAN:Ljava/lang/String; = "emv.card.PAN"

.field public static final emv_card_PANSequenceNumber:Ljava/lang/String; = "emv.card.PANSequenceNumber"

.field public static final emv_card_PAR:Ljava/lang/String; = "emv.card.PAR"

.field public static final emv_card_PRSingleDataList:Ljava/lang/String; = "emv.card.PRSingleDataList"

.field public static final emv_card_PaymentSystemDataList:Ljava/lang/String; = "emv.card.PaymentSystemDataList"

.field public static final emv_card_ProtocolLayerCDO:Ljava/lang/String; = "emv.card.ProtocolLayerCDO"

.field public static final emv_card_RRPCardMaxTime:Ljava/lang/String; = "emv.card.RRPCardMaxTime"

.field public static final emv_card_RRPCardMaxTimeCheck:Ljava/lang/String; = "emv.card.RRPCardMaxTimeCheck"

.field public static final emv_card_RRPCardMinTime:Ljava/lang/String; = "emv.card.RRPCardMinTime"

.field public static final emv_card_RRPMessageCDO:Ljava/lang/String; = "emv.card.RRPMessageCDO"

.field public static final emv_card_ResumeIndicator:Ljava/lang/String; = "emv.card.ResumeIndicator"

.field public static final emv_card_ResumeInterfaceCEID:Ljava/lang/String; = "emv.card.ResumeInterfaceCEID"

.field public static final emv_card_ResumeInterfaceID:Ljava/lang/String; = "emv.card.ResumeInterfaceID"

.field public static final emv_card_ResumeParameters:Ljava/lang/String; = "emv.card.ResumeParameters"

.field public static final emv_card_SCAlgorithmSuiteList:Ljava/lang/String; = "emv.card.SCAlgorithmSuiteList"

.field public static final emv_card_SCLMessageCDO:Ljava/lang/String; = "emv.card.SCLMessageCDO"

.field public static final emv_card_SCLPayloadContainer:Ljava/lang/String; = "emv.card.SCLPayloadContainer"

.field public static final emv_card_SDOL:Ljava/lang/String; = "emv.card.SDOL"

.field public static final emv_card_SignallingRequirementList:Ljava/lang/String; = "emv.card.SignallingRequirementList"

.field public static final emv_card_SvID:Ljava/lang/String; = "emv.card.SvID"

.field public static final emv_card_TDOL:Ljava/lang/String; = "emv.card.TDOL"

.field public static final emv_card_Track1DiscretionaryData:Ljava/lang/String; = "emv.card.Track1DiscretionaryData"

.field public static final emv_card_Track2EquivalentData:Ljava/lang/String; = "emv.card.Track2EquivalentData"

.field public static final emv_card_UCOL:Ljava/lang/String; = "emv.card.UCOL"

.field public static final emv_card_UNL1:Ljava/lang/String; = "emv.card.UNL1"

.field public static final emv_card_UNL1Check:Ljava/lang/String; = "emv.card.UNL1Check"

.field public static final emv_card_UNc:Ljava/lang/String; = "emv.card.UNc"

.field public static final emv_card_UNcCheck:Ljava/lang/String; = "emv.card.UNcCheck"

.field public static final emv_config_tm_MerchantName:Ljava/lang/String; = "emv.config.tm.MerchantName"

.field public static final emv_duplicate:Ljava/lang/String; = "emv.duplicate"

.field public static final emv_implementation_uid:Ljava/lang/String; = "emv.implementation.uid"

.field public static final emv_mod_cal_CALDIL:Ljava/lang/String; = "emv.mod.cal.CALDIL"

.field public static final emv_mod_cal_RequestType:Ljava/lang/String; = "emv.mod.cal.RequestType"

.field public static final emv_mod_cal_Requester:Ljava/lang/String; = "emv.mod.cal.Requester"

.field public static final emv_mod_cal_SessionStatus:Ljava/lang/String; = "emv.mod.cal.SessionStatus"

.field public static final emv_ngk_cvm_CDIL:Ljava/lang/String; = "emv.ngk.cvm.CDIL"

.field public static final emv_ngk_dcm_Disconnect:Ljava/lang/String; = "emv.ngk.dcm.Disconnect"

.field public static final emv_ngk_iam_CDIL:Ljava/lang/String; = "emv.ngk.iam.CDIL"

.field public static final emv_ngk_legacy_simulation:Ljava/lang/String; = "emv.ngk.legacy.simulation"

.field public static final emv_ngk_pas_CDIL:Ljava/lang/String; = "emv.ngk.pas.CDIL"

.field public static final emv_ngk_prd_CDIL:Ljava/lang/String; = "emv.ngk.prd.CDIL"

.field public static final emv_ngk_sm_CDIL:Ljava/lang/String; = "emv.ngk.sm.CDIL"

.field public static final emv_ngk_tm_CDIL:Ljava/lang/String; = "emv.ngk.tm.CDIL"

.field public static final emv_ngk_trm_CDIL:Ljava/lang/String; = "emv.ngk.trm.CDIL"

.field public static final emv_ngse_CardholderDeviceCDO:Ljava/lang/String; = "emv.ngse.CardholderDeviceCDO"

.field public static final emv_ngse_FormFactor:Ljava/lang/String; = "emv.ngse.FormFactor"

.field public static final emv_ngse_Label:Ljava/lang/String; = "emv.ngse.Label"

.field public static final emv_ngse_Priority:Ljava/lang/String; = "emv.ngse.Priority"

.field public static final emv_ngse_SvIDCDO_LegacyKernelID:Ljava/lang/String; = "emv.ngse.SvIDCDO.LegacyKernelID"

.field public static final emv_ngse_SvIDCDO_PreferredLanguage:Ljava/lang/String; = "emv.ngse.SvIDCDO.PreferredLanguage"

.field public static final emv_ngse_SvIDCDO_PreferredName:Ljava/lang/String; = "emv.ngse.SvIDCDO.PreferredName"

.field public static final emv_ngse_SvIDCDO_ProprietaryBlob:Ljava/lang/String; = "emv.ngse.SvIDCDO.ProprietaryBlob"

.field public static final emv_ngse_SvIDList:Ljava/lang/String; = "emv.ngse.SvIDList"

.field public static final emv_poi_AdditionalTerminalCapabilities:Ljava/lang/String; = "emv.poi.AdditionalTerminalCapabilities"

.field public static final emv_poi_Amount:Ljava/lang/String; = "emv.poi.Amount"

.field public static final emv_poi_AmountCashback:Ljava/lang/String; = "emv.poi.AmountCashback"

.field public static final emv_poi_CVMRequiredLimit:Ljava/lang/String; = "emv.poi.CVMRequiredLimit"

.field public static final emv_poi_CVMResults:Ljava/lang/String; = "emv.poi.CVMResults"

.field public static final emv_poi_CountryCode:Ljava/lang/String; = "emv.poi.CountryCode"

.field public static final emv_poi_CurrencyCode:Ljava/lang/String; = "emv.poi.CurrencyCode"

.field public static final emv_poi_CurrencyExponent:Ljava/lang/String; = "emv.poi.CurrencyExponent"

.field public static final emv_poi_Date:Ljava/lang/String; = "emv.poi.Date"

.field public static final emv_poi_FinalTransactionDataIndicator:Ljava/lang/String; = "emv.poi.FinalTransactionDataIndicator"

.field public static final emv_poi_MerchantID:Ljava/lang/String; = "emv.poi.MerchantID"

.field public static final emv_poi_MerchantIndicatedHighRiskTransaction:Ljava/lang/String; = "emv.poi.MerchantIndicatedHighRiskTransaction"

.field public static final emv_poi_MerchantNameLocation:Ljava/lang/String; = "emv.poi.MerchantNameLocation"

.field public static final emv_poi_PAServiceStatusList:Ljava/lang/String; = "emv.poi.PAServiceStatusList"

.field public static final emv_poi_POID:Ljava/lang/String; = "emv.poi.POID"

.field public static final emv_poi_POIDIL:Ljava/lang/String; = "emv.poi.POIDIL"

.field public static final emv_poi_POSEntryMode:Ljava/lang/String; = "emv.poi.POSEntryMode"

.field public static final emv_poi_ReaderCLFloorLimit:Ljava/lang/String; = "emv.poi.ReaderCLFloorLimit"

.field public static final emv_poi_ReaderID:Ljava/lang/String; = "emv.poi.ReaderID"

.field public static final emv_poi_RiskRulesAmount:Ljava/lang/String; = "emv.poi.RiskRulesAmount"

.field public static final emv_poi_TerminalApplicationVersionNumber:Ljava/lang/String; = "emv.poi.TerminalApplicationVersionNumber"

.field public static final emv_poi_TerminalCapabilities:Ljava/lang/String; = "emv.poi.TerminalCapabilities"

.field public static final emv_poi_TerminalFloorLimit:Ljava/lang/String; = "emv.poi.TerminalFloorLimit"

.field public static final emv_poi_Time:Ljava/lang/String; = "emv.poi.Time"

.field public static final emv_poi_TransactionID:Ljava/lang/String; = "emv.poi.TransactionID"
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "emv.poi.TransactionID",
            "emv.tx.cal.TransactionID"
        }
        value = "TransactionID"
    .end annotation
.end field

.field public static final emv_poi_TransactionStatusInformation:Ljava/lang/String; = "emv.poi.TransactionStatusInformation"

.field public static final emv_poi_TransactionType:Ljava/lang/String; = "emv.poi.TransactionType"

.field public static final emv_tag_61:Ljava/lang/String; = "emv"

.field public static final emv_tag_6F:Ljava/lang/String; = "emv"

.field public static final emv_tag_70:Ljava/lang/String; = "emv"

.field public static final emv_tag_77:Ljava/lang/String; = "emv"

.field public static final emv_tag_80:Ljava/lang/String; = "emv"

.field public static final emv_tag_8f:Ljava/lang/String; = "emv"

.field public static final emv_tag_93:Ljava/lang/String; = "emv"

.field public static final emv_tag_94:Ljava/lang/String; = "emv.card.AFL"

.field public static final emv_tag_A5:Ljava/lang/String; = "emv"

.field public static final emv_tag_BF0C:Ljava/lang/String; = "emv"

.field public static final emv_tx_$_AuthResponseCode:Ljava/lang/String; = "emv.tx.$.AuthResponseCode"

.field public static final emv_tx_$_AuthStatus:Ljava/lang/String; = "emv.tx.$.AuthStatus"

.field public static final emv_tx_$_GenAC1CommandData:Ljava/lang/String; = "emv.tx.$.GenAC1CommandData"

.field public static final emv_tx_$_GenAC2CommandData:Ljava/lang/String; = "emv.tx.$.GenAC2CommandData"

.field public static final emv_tx_$_NextAuthStatus:Ljava/lang/String; = "emv.tx.$.NextAuthStatus"

.field public static final emv_tx_$_TDOLHash:Ljava/lang/String; = "emv.tx.$.TDOLHash"

.field public static final emv_tx_$_TSI:Ljava/lang/String; = "emv.tx.$.TSI"

.field public static final emv_tx_$_TVR:Ljava/lang/String; = "emv.tx.$.TVR"

.field public static final emv_tx_cal_ActiveInterfaceID:Ljava/lang/String; = "emv.tx.cal.ActiveInterfaceID"

.field public static final emv_tx_cal_CDSInterfacedID:Ljava/lang/String; = "emv.tx.cal.CDSInterfacedID"

.field public static final emv_tx_cal_ErrorCode:Ljava/lang/String; = "emv.tx.cal.ErrorCode"

.field public static final emv_tx_cal_ProtocolLayerCDO:Ljava/lang/String; = "emv.tx.cal.ProtocolLayerCDO"

.field public static final emv_tx_cal_SessionID:Ljava/lang/String; = "emv.tx.cal.SessionID"

.field public static final emv_tx_cal_TransactionID:Ljava/lang/String; = "emv.tx.cal.TransactionID"
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.tx.cal.TransactionID"
    .end annotation
.end field

.field public static final emv_tx_cvm_CVMToCaptureCDO:Ljava/lang/String; = "emv.tx.cvm.CVMToCaptureCDO"

.field public static final emv_tx_dcm_ALMessageCDO:Ljava/lang/String; = "emv.tx.dcm.ALMessageCDO"

.field public static final emv_tx_dcm_ActiveInterfaceID:Ljava/lang/String; = "emv.tx.dcm.ActiveInterfaceID"

.field public static final emv_tx_dcm_CALDIL:Ljava/lang/String; = "emv.tx.dcm.CALDIL"

.field public static final emv_tx_dcm_ChannelState:Ljava/lang/String; = "emv.tx.dcm.ChannelState"

.field public static final emv_tx_dcm_EncodedMessageList:Ljava/lang/String; = "emv.tx.dcm.EncodedMessageList"

.field public static final emv_tx_dcm_MessageChoiceCDO:Ljava/lang/String; = "emv.tx.dcm.MessageChoiceCDO"

.field public static final emv_tx_iam_UnpredictableNumber:Ljava/lang/String; = "emv.tx.iam.UnpredictableNumber"

.field public static final emv_tx_k00m_AuthStatus:Ljava/lang/String; = "emv.tx.k00m.AuthStatus"

.field public static final emv_tx_k00m_CVMResults:Ljava/lang/String; = "emv.tx.k00m.CVMResults"

.field public static final emv_tx_k00m_IssuerAuthCommand:Ljava/lang/String; = "emv.tx.k00m.IssuerAuthCommand"

.field public static final emv_tx_k00m_IssuerBlob:Ljava/lang/String; = "emv.tx.k00m.IssuerBlob"

.field public static final emv_tx_k00m_IssuerScriptFirstList:Ljava/lang/String; = "emv.tx.k00m.IssuerScriptFirstList"

.field public static final emv_tx_k00m_IssuerScriptSecondList:Ljava/lang/String; = "emv.tx.k00m.IssuerScriptSecondList"

.field public static final emv_tx_k00m_TDOLHash:Ljava/lang/String; = "emv.tx.k00m.TDOLHash"

.field public static final emv_tx_k00m_TSI:Ljava/lang/String; = "emv.tx.k00m.TSI"

.field public static final emv_tx_k00m_TVR:Ljava/lang/String; = "emv.tx.k00m.TVR"

.field public static final emv_tx_kd_Stage:Ljava/lang/String; = "emv.tx.kd.Stage"

.field public static final emv_tx_sm_CardholderChoiceAvailable:Ljava/lang/String; = "emv.tx.sm.CardholderChoiceAvailable"

.field public static final emv_tx_sm_CardholderChoiceOrder:Ljava/lang/String; = "emv.tx.sm.CardholderChoiceOrder"

.field public static final emv_tx_sm_CombinedCVMethodIDList:Ljava/lang/String; = "emv.tx.sm.CombinedCVMethodIDList"

.field public static final emv_tx_sm_CombinedPAServiceList:Ljava/lang/String; = "emv.tx.sm.CombinedPAServiceList"

.field public static final emv_tx_sm_CombinedTRMCapabilityList:Ljava/lang/String; = "emv.tx.sm.CombinedTRMCapabilityList"

.field public static final emv_tx_sm_EligibleInterfaceList:Ljava/lang/String; = "emv.tx.sm.EligibleInterfaceList"

.field public static final emv_tx_sm_NGSESvIDCDO:Ljava/lang/String; = "emv.tx.sm.NGSESvIDCDO"

.field public static final emv_tx_sm_PreProcessingList:Ljava/lang/String; = "emv.tx.sm.PreProcessingList"

.field public static final emv_tx_sm_TerminalEnvironmentCDO:Ljava/lang/String; = "emv.tx.sm.TerminalEnvironmentCDO"

.field public static final emv_tx_tm_TransactionStatus:Ljava/lang/String; = "emv.tx.tm.TransactionStatus"

.field public static final emv_txp_tm_AdditionalPOIDataSecondGenContainer:Ljava/lang/String; = "emv.txp.tm.AdditionalPOIDataSecondGenContainer"

.field public static final emv_txp_tm_TransactionCompletionSecondGenContainer:Ljava/lang/String; = "emv.txp.tm.TransactionCompletionSecondGenContainer"

.field public static final panLast4:Ljava/lang/String; = "panLast4"

.field public static final paymentsystem_card_9F51:Ljava/lang/String; = "paymentsystem.card.9F51"

.field public static final paymentsystem_card_9F57:Ljava/lang/String; = "paymentsystem.card.9F57"

.field public static final paymentsystem_card_9F69:Ljava/lang/String; = "paymentsystem.card.9F69"

.field public static final paymentsystem_card_9F6C:Ljava/lang/String; = "paymentsystem.card.9F6C"

.field public static final paymentsystem_card_9F6E:Ljava/lang/String; = "paymentsystem.card.9F6E"

.field public static final paymentsystem_card_9F7C:Ljava/lang/String; = "paymentsystem.card.9F7C"

.field public static final paymentsystem_card_CTQ:Ljava/lang/String; = "paymentsystem.card.CTQ"

.field public static final paymentsystem_card_CTQIndicatorList:Ljava/lang/String; = "paymentsystem.card.CTQIndicatorList"

.field public static final paymentsystem_card_CardAuthenticationData:Ljava/lang/String; = "paymentsystem.card.CardAuthenticationData"

.field public static final paymentsystem_card_CustomerExclusiveData:Ljava/lang/String; = "paymentsystem.card.CustomerExclusiveData"

.field public static final paymentsystem_card_FormFactorIndicator:Ljava/lang/String; = "paymentsystem.card.FormFactorIndicator"

.field public static final paymentsystem_tx_k03m_TTQ:Ljava/lang/String; = "paymentsystem.tx.$.TTQ"

.field public static final sVisaRid:Ljava/lang/String; = "A000000003"

.field public static final svIDCDO_AdditionalKDIL:Ljava/lang/String; = "svIDCDO.AdditionalKDIL"

.field public static final svIDCDO_CVMethodIDList:Ljava/lang/String; = "svIDCDO.CVMethodIDList"

.field public static final svIDCDO_ConfirmationRequired:Ljava/lang/String; = "svIDCDO.ConfirmationRequired"

.field public static final svIDCDO_CurrencyCode:Ljava/lang/String; = "svIDCDO.CurrencyCode"

.field public static final svIDCDO_DataDelivery:Ljava/lang/String; = "svIDCDO.DataDelivery"

.field public static final svIDCDO_Extension:Ljava/lang/String; = "svIDCDO.Extension"

.field public static final svIDCDO_FirstGenKernelID:Ljava/lang/String; = "FirstGenKernelID"

.field public static final svIDCDO_MethodID:Ljava/lang/String; = "svIDCDO.MethodID"

.field public static final svIDCDO_ParameterCDO:Ljava/lang/String; = "svIDCDO.Parameter.CDO"

.field public static final svIDCDO_PreProcessingData:Ljava/lang/String; = "svIDCDO.PreProcessingData"

.field public static final svIDCDO_SCAlgorithmSuiteList:Ljava/lang/String; = "svIDCDO.SCAlgorithmSuiteList"

.field public static final svIDCDO_SupportsCVMethodIDList:Ljava/lang/String; = "svIDCDO.SupportsCVMethodIDList"

.field public static final svIDCDO_SupportsTRMList:Ljava/lang/String; = "svIDCDO.SupportsTRMList"

.field public static final svIDCDO_SvID:Ljava/lang/String; = "svIDCDO.SvID"
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.ngse.SvIDCDO.LegacyAID"
    .end annotation
.end field

.field public static final svIDCDO_SvIDGroup:Ljava/lang/String; = "svIDCDO.SvIDGroup"

.field public static final svIDCDO_TRMCapabilityList:Ljava/lang/String; = "svIDCDO.TRMCapabilityList"

.field public static final svIDCDO_Technology:Ljava/lang/String; = "svIDCDO.Technology"

.field public static final svIDCDO_TerminalInteraction:Ljava/lang/String; = "svIDCDO.TerminalInteraction"

.field public static final svIDCDO_Validator:Ljava/lang/String; = "svIDCDO.Validator"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/visa/vac/tc/emvconverter/Constants;->VISA_RID:[B

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/visa/vac/tc/emvconverter/Constants;->VISA_AID:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x3t
        0x10t
        0x10t
    .end array-data
.end method
