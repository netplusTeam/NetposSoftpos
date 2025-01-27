.class public final Lcom/isw/iswclient/request/TransferRequest;
.super Ljava/lang/Object;
.source "TransferRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0003\u0008\u0092\u0001\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001e\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001e\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001e\u0010\u001b\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001e\u0010\u001e\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015\"\u0004\u0008 \u0010\u0017R\u001e\u0010!\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001e\u0010$\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\u001e\u0010\'\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\u001e\u0010*\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R\u001e\u0010-\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R\u001e\u00100\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0006\"\u0004\u00082\u0010\u0008R\u001e\u00103\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0006\"\u0004\u00085\u0010\u0008R\u001e\u00106\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0006\"\u0004\u00088\u0010\u0008R\u001a\u00109\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0006\"\u0004\u0008;\u0010\u0008R\u001e\u0010<\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0006\"\u0004\u0008>\u0010\u0008R\u001e\u0010?\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u0006\"\u0004\u0008A\u0010\u0008R\u001e\u0010B\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u0006\"\u0004\u0008D\u0010\u0008R\u001e\u0010E\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0006\"\u0004\u0008G\u0010\u0008R\u001e\u0010H\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u0006\"\u0004\u0008J\u0010\u0008R\u001e\u0010K\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010\u0006\"\u0004\u0008M\u0010\u0008R\u001e\u0010N\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\u0006\"\u0004\u0008P\u0010\u0008R\u001e\u0010Q\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010\u0006\"\u0004\u0008S\u0010\u0008R\u001e\u0010T\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010\u0006\"\u0004\u0008V\u0010\u0008R\u001e\u0010W\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010\u0006\"\u0004\u0008Y\u0010\u0008R\u001e\u0010Z\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010\u0006\"\u0004\u0008\\\u0010\u0008R\u001e\u0010]\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010\u0006\"\u0004\u0008_\u0010\u0008R \u0010`\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010\u0006\"\u0004\u0008b\u0010\u0008R \u0010c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010\u0006\"\u0004\u0008e\u0010\u0008R \u0010f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010\u0006\"\u0004\u0008h\u0010\u0008R \u0010i\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010\u0006\"\u0004\u0008k\u0010\u0008R\u001e\u0010l\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008m\u0010\u0015\"\u0004\u0008n\u0010\u0017R\u001e\u0010o\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u0010\u0006\"\u0004\u0008q\u0010\u0008R\u001e\u0010r\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010\u0006\"\u0004\u0008t\u0010\u0008R\u001e\u0010u\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u0010\u0006\"\u0004\u0008w\u0010\u0008R\u001e\u0010x\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008y\u0010\u0006\"\u0004\u0008z\u0010\u0008R\u001e\u0010{\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008|\u0010\u0006\"\u0004\u0008}\u0010\u0008R\u001f\u0010~\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008\u007f\u0010\u0006\"\u0005\u0008\u0080\u0001\u0010\u0008R!\u0010\u0081\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010\u0006\"\u0005\u0008\u0083\u0001\u0010\u0008R!\u0010\u0084\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0085\u0001\u0010\u0006\"\u0005\u0008\u0086\u0001\u0010\u0008R!\u0010\u0087\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0088\u0001\u0010\u0006\"\u0005\u0008\u0089\u0001\u0010\u0008R!\u0010\u008a\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008b\u0001\u0010\u0006\"\u0005\u0008\u008c\u0001\u0010\u0008R!\u0010\u008d\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008e\u0001\u0010\u0006\"\u0005\u0008\u008f\u0001\u0010\u0008R!\u0010\u0090\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0091\u0001\u0010\u0006\"\u0005\u0008\u0092\u0001\u0010\u0008R!\u0010\u0093\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0094\u0001\u0010\u0006\"\u0005\u0008\u0095\u0001\u0010\u0008R!\u0010\u0096\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0097\u0001\u0010\u0006\"\u0005\u0008\u0098\u0001\u0010\u0008R!\u0010\u0099\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009a\u0001\u0010\u0006\"\u0005\u0008\u009b\u0001\u0010\u0008R!\u0010\u009c\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009d\u0001\u0010\u0006\"\u0005\u0008\u009e\u0001\u0010\u0008R!\u0010\u009f\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a0\u0001\u0010\u0006\"\u0005\u0008\u00a1\u0001\u0010\u0008R!\u0010\u00a2\u0001\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a3\u0001\u0010\u0006\"\u0005\u0008\u00a4\u0001\u0010\u0008\u00a8\u0006\u00a5\u0001"
    }
    d2 = {
        "Lcom/isw/iswclient/request/TransferRequest;",
        "",
        "()V",
        "amountAuthorized",
        "",
        "getAmountAuthorized",
        "()Ljava/lang/String;",
        "setAmountAuthorized",
        "(Ljava/lang/String;)V",
        "amountOther",
        "getAmountOther",
        "setAmountOther",
        "applicationInterchangeProfile",
        "getApplicationInterchangeProfile",
        "setApplicationInterchangeProfile",
        "atc",
        "getAtc",
        "setAtc",
        "batteryInformation",
        "",
        "getBatteryInformation",
        "()I",
        "setBatteryInformation",
        "(I)V",
        "cardSequenceNumber",
        "getCardSequenceNumber",
        "setCardSequenceNumber",
        "cryptogram",
        "getCryptogram",
        "setCryptogram",
        "cryptogramInformationData",
        "getCryptogramInformationData",
        "setCryptogramInformationData",
        "currencyCode",
        "getCurrencyCode",
        "setCurrencyCode",
        "cvmResults",
        "getCvmResults",
        "setCvmResults",
        "dedicatedFileName",
        "getDedicatedFileName",
        "setDedicatedFileName",
        "destinationAccountNumber",
        "getDestinationAccountNumber",
        "setDestinationAccountNumber",
        "expiryMonth",
        "getExpiryMonth",
        "setExpiryMonth",
        "expiryYear",
        "getExpiryYear",
        "setExpiryYear",
        "extendedTransactionType",
        "getExtendedTransactionType",
        "setExtendedTransactionType",
        "fromAccount",
        "getFromAccount",
        "setFromAccount",
        "header",
        "getHeader",
        "setHeader",
        "iad",
        "getIad",
        "setIad",
        "keyLabel",
        "getKeyLabel",
        "setKeyLabel",
        "ksn",
        "getKsn",
        "setKsn",
        "ksnd",
        "getKsnd",
        "setKsnd",
        "languageInfo",
        "getLanguageInfo",
        "setLanguageInfo",
        "merchantId",
        "getMerchantId",
        "setMerchantId",
        "merchantLocation",
        "getMerchantLocation",
        "setMerchantLocation",
        "minorAmount",
        "getMinorAmount",
        "setMinorAmount",
        "originalTransmissionDate",
        "getOriginalTransmissionDate",
        "setOriginalTransmissionDate",
        "pan",
        "getPan",
        "setPan",
        "pinBlock",
        "getPinBlock",
        "setPinBlock",
        "pinType",
        "getPinType",
        "setPinType",
        "posConditionCode",
        "getPosConditionCode",
        "setPosConditionCode",
        "posDataCode",
        "getPosDataCode",
        "setPosDataCode",
        "posEntryMode",
        "getPosEntryMode",
        "setPosEntryMode",
        "posGeoCode",
        "getPosGeoCode",
        "setPosGeoCode",
        "printerStatus",
        "getPrinterStatus",
        "setPrinterStatus",
        "receivingInstitutionId",
        "getReceivingInstitutionId",
        "setReceivingInstitutionId",
        "rrn",
        "getRrn",
        "setRrn",
        "stan",
        "getStan",
        "setStan",
        "surcharge",
        "getSurcharge",
        "setSurcharge",
        "terminalCapabilities",
        "getTerminalCapabilities",
        "setTerminalCapabilities",
        "terminalCountryCode",
        "getTerminalCountryCode",
        "setTerminalCountryCode",
        "terminalId",
        "getTerminalId",
        "setTerminalId",
        "terminalType",
        "getTerminalType",
        "setTerminalType",
        "terminalType2",
        "getTerminalType2",
        "setTerminalType2",
        "terminalVerficationResult",
        "getTerminalVerficationResult",
        "setTerminalVerficationResult",
        "toAccount",
        "getToAccount",
        "setToAccount",
        "track2",
        "getTrack2",
        "setTrack2",
        "transactionCurrencyCode",
        "getTransactionCurrencyCode",
        "setTransactionCurrencyCode",
        "transactionType",
        "getTransactionType",
        "setTransactionType",
        "transationDate",
        "getTransationDate",
        "setTransationDate",
        "transmissionDate",
        "getTransmissionDate",
        "setTransmissionDate",
        "uniqueId",
        "getUniqueId",
        "setUniqueId",
        "unpredictableNumber",
        "getUnpredictableNumber",
        "setUnpredictableNumber",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "transferRequest"
    strict = false
.end annotation


# instance fields
.field private amountAuthorized:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "AmountAuthorized"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private amountOther:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "AmountOther"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private applicationInterchangeProfile:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "ApplicationInterchangeProfile"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private atc:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "atc"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private batteryInformation:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "batteryInformation"
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private cardSequenceNumber:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "cardSequenceNumber"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData"
    .end annotation
.end field

.field private cryptogram:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "Cryptogram"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private cryptogramInformationData:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "CryptogramInformationData"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private currencyCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "currencyCode"
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private cvmResults:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "CvmResults"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private dedicatedFileName:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "DedicatedFileName"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private destinationAccountNumber:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "destinationAccountNumber"
    .end annotation
.end field

.field private expiryMonth:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "expiryMonth"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/track2"
    .end annotation
.end field

.field private expiryYear:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "expiryYear"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/track2"
    .end annotation
.end field

.field private extendedTransactionType:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "extendedTransactionType"
    .end annotation
.end field

.field private fromAccount:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "fromAccount"
    .end annotation
.end field

.field private header:Ljava/lang/String;

.field private iad:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "iad"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private keyLabel:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "keyLabel"
    .end annotation
.end field

.field private ksn:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "ksn"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "pinData"
    .end annotation
.end field

.field private ksnd:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "ksnd"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "pinData"
    .end annotation
.end field

.field private languageInfo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "languageInfo"
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private merchantId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "merchantId"
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private merchantLocation:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "merhcantLocation"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private minorAmount:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "minorAmount"
    .end annotation
.end field

.field private originalTransmissionDate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "originalTransmissionDateTime"
    .end annotation
.end field

.field private pan:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "pan"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/track2"
    .end annotation
.end field

.field private pinBlock:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "pinBlock"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "pinData"
    .end annotation
.end field

.field private pinType:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "pinType"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "pinData"
    .end annotation
.end field

.field private posConditionCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "posConditionCode"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private posDataCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "posDataCode"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private posEntryMode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "posEntryMode"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private posGeoCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "posGeoCode"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private printerStatus:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "printerStatus"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private receivingInstitutionId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "receivingInstitutionId"
    .end annotation
.end field

.field private rrn:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "retrievalReferenceNumber"
    .end annotation
.end field

.field private stan:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "stan"
    .end annotation
.end field

.field private surcharge:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "surcharge"
    .end annotation
.end field

.field private terminalCapabilities:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "TerminalCapabilities"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private terminalCountryCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "TerminalCountryCode"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private terminalId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "terminalId"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private terminalType:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "terminalType"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private terminalType2:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "TerminalType"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private terminalVerficationResult:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "TerminalVerificationResult"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private toAccount:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "toAccount"
    .end annotation
.end field

.field private track2:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "track2"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/track2"
    .end annotation
.end field

.field private transactionCurrencyCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "TransactionCurrencyCode"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private transactionType:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "TransactionType"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private transationDate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "TransactionDate"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field

.field private transmissionDate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "transmissionDate"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private uniqueId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "uniqueId"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "terminalInformation"
    .end annotation
.end field

.field private unpredictableNumber:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "UnpredictableNumber"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Path;
        value = "cardData/emvData"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->currencyCode:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->languageInfo:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->merchantId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->merchantLocation:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalId:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalType:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->transmissionDate:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->uniqueId:Ljava/lang/String;

    .line 68
    const-string v1, "0"

    iput-object v1, p0, Lcom/isw/iswclient/request/TransferRequest;->cardSequenceNumber:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->amountAuthorized:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->amountOther:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->applicationInterchangeProfile:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->atc:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->cryptogram:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/isw/iswclient/request/TransferRequest;->cvmResults:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->iad:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->transactionCurrencyCode:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalVerficationResult:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalCountryCode:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalType2:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalCapabilities:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->transationDate:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->transactionType:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->unpredictableNumber:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->dedicatedFileName:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->pan:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->expiryMonth:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->expiryYear:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->track2:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->originalTransmissionDate:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/isw/iswclient/request/TransferRequest;->stan:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/isw/iswclient/request/TransferRequest;->rrn:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->fromAccount:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->toAccount:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->minorAmount:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->receivingInstitutionId:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->surcharge:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->ksnd:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->ksn:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->pinType:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->pinBlock:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->keyLabel:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->destinationAccountNumber:Ljava/lang/String;

    .line 199
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->header:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->extendedTransactionType:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final getAmountAuthorized()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->amountAuthorized:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmountOther()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->amountOther:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationInterchangeProfile()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->applicationInterchangeProfile:Ljava/lang/String;

    return-object v0
.end method

.method public final getAtc()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->atc:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatteryInformation()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/isw/iswclient/request/TransferRequest;->batteryInformation:I

    return v0
.end method

.method public final getCardSequenceNumber()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->cardSequenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getCryptogram()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->cryptogram:Ljava/lang/String;

    return-object v0
.end method

.method public final getCryptogramInformationData()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/isw/iswclient/request/TransferRequest;->cryptogramInformationData:I

    return v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCvmResults()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->cvmResults:Ljava/lang/String;

    return-object v0
.end method

.method public final getDedicatedFileName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->dedicatedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDestinationAccountNumber()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->destinationAccountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiryMonth()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->expiryMonth:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiryYear()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->expiryYear:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtendedTransactionType()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->extendedTransactionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromAccount()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->fromAccount:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeader()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->header:Ljava/lang/String;

    return-object v0
.end method

.method public final getIad()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->iad:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyLabel()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->keyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getKsn()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->ksn:Ljava/lang/String;

    return-object v0
.end method

.method public final getKsnd()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->ksnd:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguageInfo()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->languageInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getMerchantId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMerchantLocation()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->merchantLocation:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinorAmount()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->minorAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalTransmissionDate()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->originalTransmissionDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getPan()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public final getPinBlock()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->pinBlock:Ljava/lang/String;

    return-object v0
.end method

.method public final getPinType()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->pinType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosConditionCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->posConditionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosDataCode()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->posDataCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosEntryMode()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->posEntryMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosGeoCode()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->posGeoCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrinterStatus()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/isw/iswclient/request/TransferRequest;->printerStatus:I

    return v0
.end method

.method public final getReceivingInstitutionId()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->receivingInstitutionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRrn()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->rrn:Ljava/lang/String;

    return-object v0
.end method

.method public final getStan()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->stan:Ljava/lang/String;

    return-object v0
.end method

.method public final getSurcharge()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->surcharge:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerminalCapabilities()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalCapabilities:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerminalCountryCode()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerminalId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerminalType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalType:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerminalType2()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalType2:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerminalVerficationResult()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalVerficationResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getToAccount()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->toAccount:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrack2()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->track2:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->transactionCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->transactionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransationDate()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->transationDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransmissionDate()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->transmissionDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnpredictableNumber()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/isw/iswclient/request/TransferRequest;->unpredictableNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final setAmountAuthorized(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->amountAuthorized:Ljava/lang/String;

    return-void
.end method

.method public final setAmountOther(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->amountOther:Ljava/lang/String;

    return-void
.end method

.method public final setApplicationInterchangeProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->applicationInterchangeProfile:Ljava/lang/String;

    return-void
.end method

.method public final setAtc(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->atc:Ljava/lang/String;

    return-void
.end method

.method public final setBatteryInformation(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 12
    iput p1, p0, Lcom/isw/iswclient/request/TransferRequest;->batteryInformation:I

    return-void
.end method

.method public final setCardSequenceNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->cardSequenceNumber:Ljava/lang/String;

    return-void
.end method

.method public final setCryptogram(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->cryptogram:Ljava/lang/String;

    return-void
.end method

.method public final setCryptogramInformationData(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 92
    iput p1, p0, Lcom/isw/iswclient/request/TransferRequest;->cryptogramInformationData:I

    return-void
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public final setCvmResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->cvmResults:Ljava/lang/String;

    return-void
.end method

.method public final setDedicatedFileName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->dedicatedFileName:Ljava/lang/String;

    return-void
.end method

.method public final setDestinationAccountNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->destinationAccountNumber:Ljava/lang/String;

    return-void
.end method

.method public final setExpiryMonth(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->expiryMonth:Ljava/lang/String;

    return-void
.end method

.method public final setExpiryYear(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->expiryYear:Ljava/lang/String;

    return-void
.end method

.method public final setExtendedTransactionType(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->extendedTransactionType:Ljava/lang/String;

    return-void
.end method

.method public final setFromAccount(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->fromAccount:Ljava/lang/String;

    return-void
.end method

.method public final setHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->header:Ljava/lang/String;

    return-void
.end method

.method public final setIad(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->iad:Ljava/lang/String;

    return-void
.end method

.method public final setKeyLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->keyLabel:Ljava/lang/String;

    return-void
.end method

.method public final setKsn(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->ksn:Ljava/lang/String;

    return-void
.end method

.method public final setKsnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->ksnd:Ljava/lang/String;

    return-void
.end method

.method public final setLanguageInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->languageInfo:Ljava/lang/String;

    return-void
.end method

.method public final setMerchantId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->merchantId:Ljava/lang/String;

    return-void
.end method

.method public final setMerchantLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->merchantLocation:Ljava/lang/String;

    return-void
.end method

.method public final setMinorAmount(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->minorAmount:Ljava/lang/String;

    return-void
.end method

.method public final setOriginalTransmissionDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->originalTransmissionDate:Ljava/lang/String;

    return-void
.end method

.method public final setPan(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->pan:Ljava/lang/String;

    return-void
.end method

.method public final setPinBlock(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->pinBlock:Ljava/lang/String;

    return-void
.end method

.method public final setPinType(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->pinType:Ljava/lang/String;

    return-void
.end method

.method public final setPosConditionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->posConditionCode:Ljava/lang/String;

    return-void
.end method

.method public final setPosDataCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->posDataCode:Ljava/lang/String;

    return-void
.end method

.method public final setPosEntryMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->posEntryMode:Ljava/lang/String;

    return-void
.end method

.method public final setPosGeoCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->posGeoCode:Ljava/lang/String;

    return-void
.end method

.method public final setPrinterStatus(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 48
    iput p1, p0, Lcom/isw/iswclient/request/TransferRequest;->printerStatus:I

    return-void
.end method

.method public final setReceivingInstitutionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->receivingInstitutionId:Ljava/lang/String;

    return-void
.end method

.method public final setRrn(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->rrn:Ljava/lang/String;

    return-void
.end method

.method public final setStan(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->stan:Ljava/lang/String;

    return-void
.end method

.method public final setSurcharge(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->surcharge:Ljava/lang/String;

    return-void
.end method

.method public final setTerminalCapabilities(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalCapabilities:Ljava/lang/String;

    return-void
.end method

.method public final setTerminalCountryCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalCountryCode:Ljava/lang/String;

    return-void
.end method

.method public final setTerminalId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalId:Ljava/lang/String;

    return-void
.end method

.method public final setTerminalType(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalType:Ljava/lang/String;

    return-void
.end method

.method public final setTerminalType2(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalType2:Ljava/lang/String;

    return-void
.end method

.method public final setTerminalVerficationResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->terminalVerficationResult:Ljava/lang/String;

    return-void
.end method

.method public final setToAccount(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->toAccount:Ljava/lang/String;

    return-void
.end method

.method public final setTrack2(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->track2:Ljava/lang/String;

    return-void
.end method

.method public final setTransactionCurrencyCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->transactionCurrencyCode:Ljava/lang/String;

    return-void
.end method

.method public final setTransactionType(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->transactionType:Ljava/lang/String;

    return-void
.end method

.method public final setTransationDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->transationDate:Ljava/lang/String;

    return-void
.end method

.method public final setTransmissionDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->transmissionDate:Ljava/lang/String;

    return-void
.end method

.method public final setUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setUnpredictableNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/isw/iswclient/request/TransferRequest;->unpredictableNumber:Ljava/lang/String;

    return-void
.end method
