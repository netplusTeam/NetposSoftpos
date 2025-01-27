.class public final enum Lorg/jpos/rc/CMF;
.super Ljava/lang/Enum;
.source "CMF.java"

# interfaces
.implements Lorg/jpos/rc/IRC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/rc/CMF;",
        ">;",
        "Lorg/jpos/rc/IRC;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/rc/CMF;

.field public static final enum ABORTED_AT_TERMINAL:Lorg/jpos/rc/CMF;

.field public static final enum ACQUIRER_NOT_SUPPORTED:Lorg/jpos/rc/CMF;

.field public static final enum ADMIN_MESSAGE_ACCEPTED:Lorg/jpos/rc/CMF;

.field public static final enum ADVICE_ACCEPTED:Lorg/jpos/rc/CMF;

.field public static final enum ADVICE_ACK_NO_FINANCIAL:Lorg/jpos/rc/CMF;

.field public static final enum AGREEMENT_VIOLATION:Lorg/jpos/rc/CMF;

.field public static final enum AMOUNT_NOT_FOUND:Lorg/jpos/rc/CMF;

.field public static final enum AMOUNT_NOT_RECONCILED_TOTALS_PROVIDED:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_CUSTOMER_REACTIVATED:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_FEES_DISPUTED:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_ISSUER_SPECIFIED_ACCOUNT:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_OFFLINE:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_OFFLINE_REFERRAL:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_PARTIAL:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_PARTIAL_ISSUER_SPECIFIED_ACCOUNT:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_TERMINAL_UNABLE_TO_PROCESS_ONLINE:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_UPDATE_TRACK3:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_VIP:Lorg/jpos/rc/CMF;

.field public static final enum APPROVED_WITH_OVERDRAFT:Lorg/jpos/rc/CMF;

.field public static final enum AUTHORIZATION_LIFECYCLE_EXPIRED:Lorg/jpos/rc/CMF;

.field public static final enum AUTHORIZATION_LIFECYCLE_UNACCEPTABLE:Lorg/jpos/rc/CMF;

.field public static final enum BAD_DEBT:Lorg/jpos/rc/CMF;

.field public static final enum BANK_NOT_EFFECTIVE:Lorg/jpos/rc/CMF;

.field public static final enum BANK_NOT_FOUND:Lorg/jpos/rc/CMF;

.field public static final enum CARD_NOT_ACTIVE:Lorg/jpos/rc/CMF;

.field public static final enum CARD_NOT_CONFIGURED:Lorg/jpos/rc/CMF;

.field public static final enum CARD_NOT_EFFECTIVE:Lorg/jpos/rc/CMF;

.field public static final enum CARD_VERIFICATION_DATA_FAILED:Lorg/jpos/rc/CMF;

.field public static final enum CASHBACK_AMOUNT_EXCEEDED:Lorg/jpos/rc/CMF;

.field public static final enum CASHBACK_NOT_ALLOWED:Lorg/jpos/rc/CMF;

.field public static final enum CERTIFICATE_EXPIRED:Lorg/jpos/rc/CMF;

.field public static final enum CHEQUE_ALREADY_POSTED:Lorg/jpos/rc/CMF;

.field public static final enum CLOSED_ACCOUNT:Lorg/jpos/rc/CMF;

.field public static final enum CLOSED_ACCOUNT_TYPE:Lorg/jpos/rc/CMF;

.field public static final enum CLOSED_CHEQUE_ACCOUNT:Lorg/jpos/rc/CMF;

.field public static final enum CLOSED_CREDIT_ACCOUNT:Lorg/jpos/rc/CMF;

.field public static final enum CLOSED_SAVINGS_ACCOUNT:Lorg/jpos/rc/CMF;

.field public static final enum CONTACT_ACQUIRER:Lorg/jpos/rc/CMF;

.field public static final enum CONTACT_ACQUIRER_SECURITY:Lorg/jpos/rc/CMF;

.field public static final enum CRYPTO_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum CUSTOMER_VENDOR_ACCOUNT_INVALID:Lorg/jpos/rc/CMF;

.field public static final enum CUSTOMER_VENDOR_FORMAT_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum CUSTOMER_VENDOR_NOT_EFFECTIVE:Lorg/jpos/rc/CMF;

.field public static final enum CUSTOMER_VENDOR_NOT_FOUND:Lorg/jpos/rc/CMF;

.field public static final enum CUTOVER_IN_PROCESS:Lorg/jpos/rc/CMF;

.field public static final enum DATABASE_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum DECLINED_FEES_DISPUTED:Lorg/jpos/rc/CMF;

.field public static final enum DECLINED_PROCESSED_OFFLINE:Lorg/jpos/rc/CMF;

.field public static final enum DECLINED_PROCESSED_OFFLINE_REFERRAL:Lorg/jpos/rc/CMF;

.field public static final enum DECLINED_UNABLE_TO_PROCESS:Lorg/jpos/rc/CMF;

.field public static final enum DO_NOT_HONOUR:Lorg/jpos/rc/CMF;

.field public static final enum DRIVER_NUMBER_INVALID:Lorg/jpos/rc/CMF;

.field public static final enum DUPLICATE:Lorg/jpos/rc/CMF;

.field public static final enum DUPLICATE_TRANSMISSION:Lorg/jpos/rc/CMF;

.field public static final enum EXCEEDS_WITHDRAWAL_AMOUNT_LIMIT:Lorg/jpos/rc/CMF;

.field public static final enum EXCEEDS_WITHDRAWAL_FREQUENCY_LIMIT:Lorg/jpos/rc/CMF;

.field public static final enum EXPIRED:Lorg/jpos/rc/CMF;

.field public static final enum EXTRA_FIELD:Lorg/jpos/rc/CMF;

.field public static final enum FEE_COLLECTION_ACCEPTED:Lorg/jpos/rc/CMF;

.field public static final enum FIELD_EDIT_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum FILE_LOCKED_OUT:Lorg/jpos/rc/CMF;

.field public static final enum FINANCIAL_CONTACT_ACQUIRER:Lorg/jpos/rc/CMF;

.field public static final enum FINANCIAL_CONTACT_ACQUIRER_SECURITY:Lorg/jpos/rc/CMF;

.field public static final enum FINANCIAL_DO_NOT_HONOUR:Lorg/jpos/rc/CMF;

.field public static final enum FINANCIAL_EXPIRED:Lorg/jpos/rc/CMF;

.field public static final enum FINANCIAL_MAX_PIN_TRIES_EXCEEDED:Lorg/jpos/rc/CMF;

.field public static final enum FINANCIAL_RESTRICTED_CARD:Lorg/jpos/rc/CMF;

.field public static final enum FINANCIAL_SUSPECTED_FRAUD:Lorg/jpos/rc/CMF;

.field public static final enum FORMAT_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum FROM_ACCOUNT_BAD_STATUS:Lorg/jpos/rc/CMF;

.field public static final enum GENERAL_DECLINE:Lorg/jpos/rc/CMF;

.field public static final enum HONOR_WITH_ID:Lorg/jpos/rc/CMF;

.field public static final enum HOST_UNREACHABLE:Lorg/jpos/rc/CMF;

.field public static final enum HSM_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum HSM_ERROR_RETRY:Lorg/jpos/rc/CMF;

.field public static final enum ID_NUMBER_INVALID:Lorg/jpos/rc/CMF;

.field public static final enum INCORRECT_PIN:Lorg/jpos/rc/CMF;

.field public static final enum INFORMATION_NOT_ON_FILE:Lorg/jpos/rc/CMF;

.field public static final enum INTERNAL_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_AMOUNT:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_CARD:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_CARD_ACCEPTOR:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_CARD_NUMBER:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_CARD_OR_CARDHOLDER_NUMBER:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_FIELD:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_PINBLOCK:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_REQUEST:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_SECURITY_CODE:Lorg/jpos/rc/CMF;

.field public static final enum INVALID_TRANSACTION:Lorg/jpos/rc/CMF;

.field public static final enum ISSUER_NOT_AVAILABLE:Lorg/jpos/rc/CMF;

.field public static final enum ISSUER_SIGNED_OFF:Lorg/jpos/rc/CMF;

.field public static final enum ISSUER_TIMEOUT:Lorg/jpos/rc/CMF;

.field public static final enum ISSUER_UNAVAILABLE:Lorg/jpos/rc/CMF;

.field public static final enum JPOS:Lorg/jpos/rc/CMF;

.field public static final enum LAW_VIOLATION:Lorg/jpos/rc/CMF;

.field public static final enum LOST_CARD:Lorg/jpos/rc/CMF;

.field public static final enum LOST_OR_STOLEN_CARD:Lorg/jpos/rc/CMF;

.field public static final enum MAC_INCORRECT:Lorg/jpos/rc/CMF;

.field public static final enum MAC_KEY_SYNC_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum MAX_DAILY_AMOUNT:Lorg/jpos/rc/CMF;

.field public static final enum MAX_DAILY_WITHDRAWAL:Lorg/jpos/rc/CMF;

.field public static final enum MAX_PIN_TRIES_EXCEEDED:Lorg/jpos/rc/CMF;

.field public static final enum MESSAGE_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum MISCONFIGURED_ENDPOINT:Lorg/jpos/rc/CMF;

.field public static final enum MISSING_FIELD:Lorg/jpos/rc/CMF;

.field public static final enum NET_ACCEPTED:Lorg/jpos/rc/CMF;

.field public static final enum NET_RETRY:Lorg/jpos/rc/CMF;

.field public static final enum NEW_PIN_INVALID:Lorg/jpos/rc/CMF;

.field public static final enum NOT_PERMITTED_TO_CARDHOLDER:Lorg/jpos/rc/CMF;

.field public static final enum NOT_PERMITTED_TO_TERMINAL:Lorg/jpos/rc/CMF;

.field public static final enum NOT_RECONCILED_TOTALS_PROVIDED:Lorg/jpos/rc/CMF;

.field public static final enum NOT_SUCCESSFUL:Lorg/jpos/rc/CMF;

.field public static final enum NOT_SUFFICIENT_FUNDS:Lorg/jpos/rc/CMF;

.field public static final enum NOT_SUPPORTED_BY_RECEIVER:Lorg/jpos/rc/CMF;

.field public static final enum NO_ACCCOUNT_TYPE:Lorg/jpos/rc/CMF;

.field public static final enum NO_CARD_RECORD:Lorg/jpos/rc/CMF;

.field public static final enum ORIGINAL_NOT_FOUND:Lorg/jpos/rc/CMF;

.field public static final enum OUT_OF_SEQUENCE:Lorg/jpos/rc/CMF;

.field public static final enum PAYMENT_DATE_INVALID:Lorg/jpos/rc/CMF;

.field public static final enum PERSONAL_ID_NOT_FOUND:Lorg/jpos/rc/CMF;

.field public static final enum PIN_CHANGE_REQUIRED:Lorg/jpos/rc/CMF;

.field public static final enum PIN_DATA_REQUIRED:Lorg/jpos/rc/CMF;

.field public static final enum PIN_KEY_SYNC_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum PIN_LENGTH_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum RECONCILED_IN_BALANCE:Lorg/jpos/rc/CMF;

.field public static final enum RECONCILED_OUT_OF_BALANCE:Lorg/jpos/rc/CMF;

.field public static final enum RECONCILIATION_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum RECURRING_DATA_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum REFER_TO_ISSUER:Lorg/jpos/rc/CMF;

.field public static final enum REFER_TO_ISSUER_SPECIAL:Lorg/jpos/rc/CMF;

.field public static final enum REQUEST_IN_PROGRESS:Lorg/jpos/rc/CMF;

.field public static final enum RESTRICTED_CARD:Lorg/jpos/rc/CMF;

.field public static final enum RETRY_TRANSACTION:Lorg/jpos/rc/CMF;

.field public static final enum REVERSAL_ACCEPTED:Lorg/jpos/rc/CMF;

.field public static final enum ROUTING_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum SCHEDULED_TRANSACTION_EXISTS:Lorg/jpos/rc/CMF;

.field public static final enum SECURITY_VIOLATION:Lorg/jpos/rc/CMF;

.field public static final enum SPECIAL_CONDITIONA:Lorg/jpos/rc/CMF;

.field public static final enum STOLEN_CARD:Lorg/jpos/rc/CMF;

.field public static final enum SUCCESSFUL:Lorg/jpos/rc/CMF;

.field public static final enum SUSPECTED_COUNTERFEIT_CARD:Lorg/jpos/rc/CMF;

.field public static final enum SUSPECTED_COUNTERFELT_CARD:Lorg/jpos/rc/CMF;

.field public static final enum SUSPECTED_FRAUD:Lorg/jpos/rc/CMF;

.field public static final enum SYSTEM_ERROR:Lorg/jpos/rc/CMF;

.field public static final enum SYSTEM_ERROR_DB:Lorg/jpos/rc/CMF;

.field public static final enum SYSTEM_ERROR_TXN:Lorg/jpos/rc/CMF;

.field public static final enum TOTALS_NOT_AVAILABLE:Lorg/jpos/rc/CMF;

.field public static final enum TO_ACCOUNT_BAD_STATUS:Lorg/jpos/rc/CMF;

.field public static final enum UNABLE_TO_LOCATE_RECORD:Lorg/jpos/rc/CMF;

.field public static final enum UNACCEPTABLE_FEE:Lorg/jpos/rc/CMF;

.field public static final enum UNACCEPTED_CURRENCY:Lorg/jpos/rc/CMF;

.field public static final enum UNKNOWN_FILE:Lorg/jpos/rc/CMF;

.field public static final enum UNSUPPORTED_FUNCTION:Lorg/jpos/rc/CMF;

.field public static final enum UNSUPPORTED_TRANSACTION:Lorg/jpos/rc/CMF;

.field public static final enum UPDATED_RECORD:Lorg/jpos/rc/CMF;

.field public static final enum UPDATE_NOT_ALLOWED:Lorg/jpos/rc/CMF;

.field public static final enum USER:Lorg/jpos/rc/CMF;

.field public static final enum VENDOR_DATA_INVALID:Lorg/jpos/rc/CMF;

.field public static final enum VENDOR_NOT_EFFECTIVE:Lorg/jpos/rc/CMF;

.field public static final enum VENDOR_NOT_FOUND:Lorg/jpos/rc/CMF;

.field public static final enum VID_INVALID:Lorg/jpos/rc/CMF;

.field public static final enum ZMK_NOT_AVAILABLE:Lorg/jpos/rc/CMF;

.field private static lookupInt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jpos/rc/IRC;",
            ">;"
        }
    .end annotation
.end field

.field private static lookupStr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/rc/IRC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field inhibit:Z

.field irc:I

.field ircStr:Ljava/lang/String;

.field success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 170

    .line 26
    new-instance v0, Lorg/jpos/rc/CMF;

    const-string v1, "APPROVED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/jpos/rc/CMF;->APPROVED:Lorg/jpos/rc/CMF;

    .line 27
    new-instance v1, Lorg/jpos/rc/CMF;

    const-string v4, "HONOR_WITH_ID"

    invoke-direct {v1, v4, v3, v3, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lorg/jpos/rc/CMF;->HONOR_WITH_ID:Lorg/jpos/rc/CMF;

    .line 28
    new-instance v4, Lorg/jpos/rc/CMF;

    const-string v5, "APPROVED_PARTIAL"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v6, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v4, Lorg/jpos/rc/CMF;->APPROVED_PARTIAL:Lorg/jpos/rc/CMF;

    .line 29
    new-instance v5, Lorg/jpos/rc/CMF;

    const-string v7, "APPROVED_VIP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Lorg/jpos/rc/CMF;->APPROVED_VIP:Lorg/jpos/rc/CMF;

    .line 30
    new-instance v7, Lorg/jpos/rc/CMF;

    const-string v9, "APPROVED_UPDATE_TRACK3"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v7, Lorg/jpos/rc/CMF;->APPROVED_UPDATE_TRACK3:Lorg/jpos/rc/CMF;

    .line 31
    new-instance v9, Lorg/jpos/rc/CMF;

    const-string v11, "APPROVED_ISSUER_SPECIFIED_ACCOUNT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v9, Lorg/jpos/rc/CMF;->APPROVED_ISSUER_SPECIFIED_ACCOUNT:Lorg/jpos/rc/CMF;

    .line 32
    new-instance v11, Lorg/jpos/rc/CMF;

    const-string v13, "APPROVED_PARTIAL_ISSUER_SPECIFIED_ACCOUNT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v11, Lorg/jpos/rc/CMF;->APPROVED_PARTIAL_ISSUER_SPECIFIED_ACCOUNT:Lorg/jpos/rc/CMF;

    .line 33
    new-instance v13, Lorg/jpos/rc/CMF;

    const-string v15, "APPROVED_FEES_DISPUTED"

    const/4 v14, 0x7

    const/16 v12, 0x8

    invoke-direct {v13, v15, v14, v12, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v13, Lorg/jpos/rc/CMF;->APPROVED_FEES_DISPUTED:Lorg/jpos/rc/CMF;

    .line 34
    new-instance v15, Lorg/jpos/rc/CMF;

    const-string v14, "APPROVED_WITH_OVERDRAFT"

    const/16 v10, 0x9

    invoke-direct {v15, v14, v12, v10, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v15, Lorg/jpos/rc/CMF;->APPROVED_WITH_OVERDRAFT:Lorg/jpos/rc/CMF;

    .line 35
    new-instance v14, Lorg/jpos/rc/CMF;

    const-string v12, "APPROVED_CUSTOMER_REACTIVATED"

    const/16 v8, 0xa

    invoke-direct {v14, v12, v10, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v14, Lorg/jpos/rc/CMF;->APPROVED_CUSTOMER_REACTIVATED:Lorg/jpos/rc/CMF;

    .line 36
    new-instance v12, Lorg/jpos/rc/CMF;

    const-string v10, "APPROVED_TERMINAL_UNABLE_TO_PROCESS_ONLINE"

    const/16 v6, 0xb

    invoke-direct {v12, v10, v8, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/jpos/rc/CMF;->APPROVED_TERMINAL_UNABLE_TO_PROCESS_ONLINE:Lorg/jpos/rc/CMF;

    .line 37
    new-instance v10, Lorg/jpos/rc/CMF;

    const-string v8, "APPROVED_OFFLINE"

    const/16 v2, 0xc

    invoke-direct {v10, v8, v6, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/jpos/rc/CMF;->APPROVED_OFFLINE:Lorg/jpos/rc/CMF;

    .line 38
    new-instance v8, Lorg/jpos/rc/CMF;

    const-string v6, "APPROVED_OFFLINE_REFERRAL"

    const/16 v3, 0xd

    invoke-direct {v8, v6, v2, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/jpos/rc/CMF;->APPROVED_OFFLINE_REFERRAL:Lorg/jpos/rc/CMF;

    .line 41
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v2, "DO_NOT_HONOUR"

    move-object/from16 v16, v8

    const/16 v8, 0x3e8

    invoke-direct {v6, v2, v3, v8}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->DO_NOT_HONOUR:Lorg/jpos/rc/CMF;

    .line 42
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "EXPIRED"

    const/16 v3, 0xe

    move-object/from16 v17, v6

    const/16 v6, 0x3e9

    invoke-direct {v2, v8, v3, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->EXPIRED:Lorg/jpos/rc/CMF;

    .line 43
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "SUSPECTED_FRAUD"

    const/16 v3, 0xf

    move-object/from16 v18, v2

    const/16 v2, 0x3ea

    invoke-direct {v6, v8, v3, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->SUSPECTED_FRAUD:Lorg/jpos/rc/CMF;

    .line 44
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "CONTACT_ACQUIRER"

    const/16 v3, 0x10

    move-object/from16 v19, v6

    const/16 v6, 0x3eb

    invoke-direct {v2, v8, v3, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CONTACT_ACQUIRER:Lorg/jpos/rc/CMF;

    .line 45
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "RESTRICTED_CARD"

    const/16 v3, 0x11

    move-object/from16 v20, v2

    const/16 v2, 0x3ec

    invoke-direct {v6, v8, v3, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->RESTRICTED_CARD:Lorg/jpos/rc/CMF;

    .line 46
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "CONTACT_ACQUIRER_SECURITY"

    const/16 v3, 0x12

    move-object/from16 v21, v6

    const/16 v6, 0x3ed

    invoke-direct {v2, v8, v3, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CONTACT_ACQUIRER_SECURITY:Lorg/jpos/rc/CMF;

    .line 47
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "MAX_PIN_TRIES_EXCEEDED"

    const/16 v3, 0x13

    move-object/from16 v22, v2

    const/16 v2, 0x3ee

    invoke-direct {v6, v8, v3, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->MAX_PIN_TRIES_EXCEEDED:Lorg/jpos/rc/CMF;

    .line 48
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "REFER_TO_ISSUER"

    const/16 v3, 0x14

    move-object/from16 v23, v6

    const/16 v6, 0x3ef

    invoke-direct {v2, v8, v3, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->REFER_TO_ISSUER:Lorg/jpos/rc/CMF;

    .line 49
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "REFER_TO_ISSUER_SPECIAL"

    const/16 v3, 0x15

    move-object/from16 v24, v2

    const/16 v2, 0x3f0

    invoke-direct {v6, v8, v3, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->REFER_TO_ISSUER_SPECIAL:Lorg/jpos/rc/CMF;

    .line 50
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "INVALID_CARD_ACCEPTOR"

    const/16 v3, 0x16

    move-object/from16 v25, v6

    const/16 v6, 0x3f1

    invoke-direct {v2, v8, v3, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->INVALID_CARD_ACCEPTOR:Lorg/jpos/rc/CMF;

    .line 51
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "INVALID_AMOUNT"

    const/16 v8, 0x17

    move-object/from16 v26, v2

    const/16 v2, 0x3f2

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->INVALID_AMOUNT:Lorg/jpos/rc/CMF;

    .line 52
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "INVALID_CARD_NUMBER"

    const/16 v8, 0x18

    move-object/from16 v27, v3

    const/16 v3, 0x3f3

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->INVALID_CARD_NUMBER:Lorg/jpos/rc/CMF;

    .line 53
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "PIN_DATA_REQUIRED"

    const/16 v8, 0x19

    move-object/from16 v28, v2

    const/16 v2, 0x3f4

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->PIN_DATA_REQUIRED:Lorg/jpos/rc/CMF;

    .line 54
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "UNACCEPTABLE_FEE"

    const/16 v8, 0x1a

    move-object/from16 v29, v3

    const/16 v3, 0x3f5

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->UNACCEPTABLE_FEE:Lorg/jpos/rc/CMF;

    .line 55
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "NO_ACCCOUNT_TYPE"

    const/16 v8, 0x1b

    move-object/from16 v30, v2

    const/16 v2, 0x3f6

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->NO_ACCCOUNT_TYPE:Lorg/jpos/rc/CMF;

    .line 56
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "UNSUPPORTED_FUNCTION"

    const/16 v8, 0x1c

    move-object/from16 v31, v3

    const/16 v3, 0x3f7

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->UNSUPPORTED_FUNCTION:Lorg/jpos/rc/CMF;

    .line 57
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "NOT_SUFFICIENT_FUNDS"

    const/16 v8, 0x1d

    move-object/from16 v32, v2

    const/16 v2, 0x3f8

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->NOT_SUFFICIENT_FUNDS:Lorg/jpos/rc/CMF;

    .line 58
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "INCORRECT_PIN"

    const/16 v8, 0x1e

    move-object/from16 v33, v3

    const/16 v3, 0x3f9

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->INCORRECT_PIN:Lorg/jpos/rc/CMF;

    .line 59
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "NO_CARD_RECORD"

    const/16 v8, 0x1f

    move-object/from16 v34, v2

    const/16 v2, 0x3fa

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->NO_CARD_RECORD:Lorg/jpos/rc/CMF;

    .line 60
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "NOT_PERMITTED_TO_CARDHOLDER"

    const/16 v8, 0x20

    move-object/from16 v35, v3

    const/16 v3, 0x3fb

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->NOT_PERMITTED_TO_CARDHOLDER:Lorg/jpos/rc/CMF;

    .line 61
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "NOT_PERMITTED_TO_TERMINAL"

    const/16 v8, 0x21

    move-object/from16 v36, v2

    const/16 v2, 0x3fc

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->NOT_PERMITTED_TO_TERMINAL:Lorg/jpos/rc/CMF;

    .line 62
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "EXCEEDS_WITHDRAWAL_AMOUNT_LIMIT"

    const/16 v8, 0x22

    move-object/from16 v37, v3

    const/16 v3, 0x3fd

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->EXCEEDS_WITHDRAWAL_AMOUNT_LIMIT:Lorg/jpos/rc/CMF;

    .line 63
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "SECURITY_VIOLATION"

    const/16 v8, 0x23

    move-object/from16 v38, v2

    const/16 v2, 0x3fe

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->SECURITY_VIOLATION:Lorg/jpos/rc/CMF;

    .line 64
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "EXCEEDS_WITHDRAWAL_FREQUENCY_LIMIT"

    const/16 v8, 0x24

    move-object/from16 v39, v3

    const/16 v3, 0x3ff

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->EXCEEDS_WITHDRAWAL_FREQUENCY_LIMIT:Lorg/jpos/rc/CMF;

    .line 65
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "LAW_VIOLATION"

    const/16 v8, 0x25

    move-object/from16 v40, v2

    const/16 v2, 0x400

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->LAW_VIOLATION:Lorg/jpos/rc/CMF;

    .line 66
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CARD_NOT_EFFECTIVE"

    const/16 v8, 0x26

    move-object/from16 v41, v3

    const/16 v3, 0x401

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CARD_NOT_EFFECTIVE:Lorg/jpos/rc/CMF;

    .line 67
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "INVALID_PINBLOCK"

    const/16 v8, 0x27

    move-object/from16 v42, v2

    const/16 v2, 0x402

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->INVALID_PINBLOCK:Lorg/jpos/rc/CMF;

    .line 68
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "PIN_LENGTH_ERROR"

    const/16 v8, 0x28

    move-object/from16 v43, v3

    const/16 v3, 0x403

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->PIN_LENGTH_ERROR:Lorg/jpos/rc/CMF;

    .line 69
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "PIN_KEY_SYNC_ERROR"

    const/16 v8, 0x29

    move-object/from16 v44, v2

    const/16 v2, 0x404

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->PIN_KEY_SYNC_ERROR:Lorg/jpos/rc/CMF;

    .line 70
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "SUSPECTED_COUNTERFEIT_CARD"

    const/16 v8, 0x2a

    move-object/from16 v45, v3

    const/16 v3, 0x405

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->SUSPECTED_COUNTERFEIT_CARD:Lorg/jpos/rc/CMF;

    .line 71
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "UNACCEPTED_CURRENCY"

    const/16 v8, 0x2b

    move-object/from16 v46, v2

    const/16 v2, 0x406

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->UNACCEPTED_CURRENCY:Lorg/jpos/rc/CMF;

    .line 72
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "DECLINED_FEES_DISPUTED"

    const/16 v8, 0x2c

    move-object/from16 v47, v3

    const/16 v3, 0x407

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->DECLINED_FEES_DISPUTED:Lorg/jpos/rc/CMF;

    .line 73
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "LOST_OR_STOLEN_CARD"

    const/16 v8, 0x2d

    move-object/from16 v48, v2

    const/16 v2, 0x408

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->LOST_OR_STOLEN_CARD:Lorg/jpos/rc/CMF;

    .line 74
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "AUTHORIZATION_LIFECYCLE_UNACCEPTABLE"

    const/16 v8, 0x2e

    move-object/from16 v49, v3

    const/16 v3, 0x409

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->AUTHORIZATION_LIFECYCLE_UNACCEPTABLE:Lorg/jpos/rc/CMF;

    .line 75
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "AUTHORIZATION_LIFECYCLE_EXPIRED"

    const/16 v8, 0x2f

    move-object/from16 v50, v2

    const/16 v2, 0x40a

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->AUTHORIZATION_LIFECYCLE_EXPIRED:Lorg/jpos/rc/CMF;

    .line 76
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CLOSED_ACCOUNT"

    const/16 v8, 0x30

    move-object/from16 v51, v3

    const/16 v3, 0x40b

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CLOSED_ACCOUNT:Lorg/jpos/rc/CMF;

    .line 77
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "CLOSED_SAVINGS_ACCOUNT"

    const/16 v8, 0x31

    move-object/from16 v52, v2

    const/16 v2, 0x40c

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->CLOSED_SAVINGS_ACCOUNT:Lorg/jpos/rc/CMF;

    .line 78
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CLOSED_CREDIT_ACCOUNT"

    const/16 v8, 0x32

    move-object/from16 v53, v3

    const/16 v3, 0x40d

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CLOSED_CREDIT_ACCOUNT:Lorg/jpos/rc/CMF;

    .line 79
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "CLOSED_ACCOUNT_TYPE"

    const/16 v8, 0x33

    move-object/from16 v54, v2

    const/16 v2, 0x40e

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->CLOSED_ACCOUNT_TYPE:Lorg/jpos/rc/CMF;

    .line 80
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CLOSED_CHEQUE_ACCOUNT"

    const/16 v8, 0x34

    move-object/from16 v55, v3

    const/16 v3, 0x40f

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CLOSED_CHEQUE_ACCOUNT:Lorg/jpos/rc/CMF;

    .line 81
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "BAD_DEBT"

    const/16 v8, 0x35

    move-object/from16 v56, v2

    const/16 v2, 0x410

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->BAD_DEBT:Lorg/jpos/rc/CMF;

    .line 82
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "FROM_ACCOUNT_BAD_STATUS"

    const/16 v8, 0x36

    move-object/from16 v57, v3

    const/16 v3, 0x411

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->FROM_ACCOUNT_BAD_STATUS:Lorg/jpos/rc/CMF;

    .line 83
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "TO_ACCOUNT_BAD_STATUS"

    const/16 v8, 0x37

    move-object/from16 v58, v2

    const/16 v2, 0x412

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->TO_ACCOUNT_BAD_STATUS:Lorg/jpos/rc/CMF;

    .line 84
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CHEQUE_ALREADY_POSTED"

    const/16 v8, 0x38

    move-object/from16 v59, v3

    const/16 v3, 0x413

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CHEQUE_ALREADY_POSTED:Lorg/jpos/rc/CMF;

    .line 85
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "INFORMATION_NOT_ON_FILE"

    const/16 v8, 0x39

    move-object/from16 v60, v2

    const/16 v2, 0x414

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->INFORMATION_NOT_ON_FILE:Lorg/jpos/rc/CMF;

    .line 86
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CARD_VERIFICATION_DATA_FAILED"

    const/16 v8, 0x3a

    move-object/from16 v61, v3

    const/16 v3, 0x415

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CARD_VERIFICATION_DATA_FAILED:Lorg/jpos/rc/CMF;

    .line 87
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "AMOUNT_NOT_FOUND"

    const/16 v8, 0x3b

    move-object/from16 v62, v2

    const/16 v2, 0x416

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->AMOUNT_NOT_FOUND:Lorg/jpos/rc/CMF;

    .line 88
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "PIN_CHANGE_REQUIRED"

    const/16 v8, 0x3c

    move-object/from16 v63, v3

    const/16 v3, 0x417

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->PIN_CHANGE_REQUIRED:Lorg/jpos/rc/CMF;

    .line 89
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "NEW_PIN_INVALID"

    const/16 v8, 0x3d

    move-object/from16 v64, v2

    const/16 v2, 0x418

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->NEW_PIN_INVALID:Lorg/jpos/rc/CMF;

    .line 90
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "BANK_NOT_FOUND"

    const/16 v8, 0x3e

    move-object/from16 v65, v3

    const/16 v3, 0x419

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->BANK_NOT_FOUND:Lorg/jpos/rc/CMF;

    .line 91
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "BANK_NOT_EFFECTIVE"

    const/16 v8, 0x3f

    move-object/from16 v66, v2

    const/16 v2, 0x41a

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->BANK_NOT_EFFECTIVE:Lorg/jpos/rc/CMF;

    .line 92
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CUSTOMER_VENDOR_NOT_FOUND"

    const/16 v8, 0x40

    move-object/from16 v67, v3

    const/16 v3, 0x41b

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CUSTOMER_VENDOR_NOT_FOUND:Lorg/jpos/rc/CMF;

    .line 93
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "CUSTOMER_VENDOR_NOT_EFFECTIVE"

    const/16 v8, 0x41

    move-object/from16 v68, v2

    const/16 v2, 0x41c

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->CUSTOMER_VENDOR_NOT_EFFECTIVE:Lorg/jpos/rc/CMF;

    .line 94
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CUSTOMER_VENDOR_ACCOUNT_INVALID"

    const/16 v8, 0x42

    move-object/from16 v69, v3

    const/16 v3, 0x41d

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CUSTOMER_VENDOR_ACCOUNT_INVALID:Lorg/jpos/rc/CMF;

    .line 95
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "VENDOR_NOT_FOUND"

    const/16 v8, 0x43

    move-object/from16 v70, v2

    const/16 v2, 0x41e

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->VENDOR_NOT_FOUND:Lorg/jpos/rc/CMF;

    .line 96
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "VENDOR_NOT_EFFECTIVE"

    const/16 v8, 0x44

    move-object/from16 v71, v3

    const/16 v3, 0x41f

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->VENDOR_NOT_EFFECTIVE:Lorg/jpos/rc/CMF;

    .line 97
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "VENDOR_DATA_INVALID"

    const/16 v8, 0x45

    move-object/from16 v72, v2

    const/16 v2, 0x420

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->VENDOR_DATA_INVALID:Lorg/jpos/rc/CMF;

    .line 98
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "PAYMENT_DATE_INVALID"

    const/16 v8, 0x46

    move-object/from16 v73, v3

    const/16 v3, 0x421

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->PAYMENT_DATE_INVALID:Lorg/jpos/rc/CMF;

    .line 99
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "PERSONAL_ID_NOT_FOUND"

    const/16 v8, 0x47

    move-object/from16 v74, v2

    const/16 v2, 0x422

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->PERSONAL_ID_NOT_FOUND:Lorg/jpos/rc/CMF;

    .line 100
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "SCHEDULED_TRANSACTION_EXISTS"

    const/16 v8, 0x48

    move-object/from16 v75, v3

    const/16 v3, 0x423

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->SCHEDULED_TRANSACTION_EXISTS:Lorg/jpos/rc/CMF;

    .line 101
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "ABORTED_AT_TERMINAL"

    const/16 v8, 0x49

    move-object/from16 v76, v2

    const/16 v2, 0x424

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->ABORTED_AT_TERMINAL:Lorg/jpos/rc/CMF;

    .line 102
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "UNSUPPORTED_TRANSACTION"

    const/16 v8, 0x4a

    move-object/from16 v77, v3

    const/16 v3, 0x425

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->UNSUPPORTED_TRANSACTION:Lorg/jpos/rc/CMF;

    .line 103
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "CASHBACK_NOT_ALLOWED"

    const/16 v8, 0x4b

    move-object/from16 v78, v2

    const/16 v2, 0x426

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->CASHBACK_NOT_ALLOWED:Lorg/jpos/rc/CMF;

    .line 104
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CASHBACK_AMOUNT_EXCEEDED"

    const/16 v8, 0x4c

    move-object/from16 v79, v3

    const/16 v3, 0x427

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CASHBACK_AMOUNT_EXCEEDED:Lorg/jpos/rc/CMF;

    .line 105
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "DECLINED_PROCESSED_OFFLINE"

    const/16 v8, 0x4d

    move-object/from16 v80, v2

    const/16 v2, 0x428

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->DECLINED_PROCESSED_OFFLINE:Lorg/jpos/rc/CMF;

    .line 106
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "DECLINED_UNABLE_TO_PROCESS"

    const/16 v8, 0x4e

    move-object/from16 v81, v3

    const/16 v3, 0x429

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->DECLINED_UNABLE_TO_PROCESS:Lorg/jpos/rc/CMF;

    .line 107
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "DECLINED_PROCESSED_OFFLINE_REFERRAL"

    const/16 v8, 0x4f

    move-object/from16 v82, v2

    const/16 v2, 0x42a

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->DECLINED_PROCESSED_OFFLINE_REFERRAL:Lorg/jpos/rc/CMF;

    .line 108
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "ID_NUMBER_INVALID"

    const/16 v8, 0x50

    move-object/from16 v83, v3

    const/16 v3, 0x42c

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->ID_NUMBER_INVALID:Lorg/jpos/rc/CMF;

    .line 109
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "DRIVER_NUMBER_INVALID"

    const/16 v8, 0x51

    move-object/from16 v84, v2

    const/16 v2, 0x42d

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->DRIVER_NUMBER_INVALID:Lorg/jpos/rc/CMF;

    .line 110
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "VID_INVALID"

    const/16 v8, 0x52

    move-object/from16 v85, v3

    const/16 v3, 0x42e

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->VID_INVALID:Lorg/jpos/rc/CMF;

    .line 111
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "CERTIFICATE_EXPIRED"

    const/16 v8, 0x53

    move-object/from16 v86, v2

    const/16 v2, 0x42f

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->CERTIFICATE_EXPIRED:Lorg/jpos/rc/CMF;

    .line 112
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "MISSING_FIELD"

    const/16 v8, 0x54

    move-object/from16 v87, v3

    const/16 v3, 0x70a

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    .line 113
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "EXTRA_FIELD"

    const/16 v8, 0x55

    move-object/from16 v88, v2

    const/16 v2, 0x70b

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->EXTRA_FIELD:Lorg/jpos/rc/CMF;

    .line 114
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "INVALID_CARD"

    const/16 v8, 0x56

    move-object/from16 v89, v3

    const/16 v3, 0x70c

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->INVALID_CARD:Lorg/jpos/rc/CMF;

    .line 115
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "CARD_NOT_ACTIVE"

    const/16 v8, 0x57

    move-object/from16 v90, v2

    const/16 v2, 0x70e

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->CARD_NOT_ACTIVE:Lorg/jpos/rc/CMF;

    .line 116
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "CARD_NOT_CONFIGURED"

    const/16 v8, 0x58

    move-object/from16 v91, v3

    const/16 v3, 0x710

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CARD_NOT_CONFIGURED:Lorg/jpos/rc/CMF;

    .line 117
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "SYSTEM_ERROR_DB"

    const/16 v8, 0x59

    move-object/from16 v92, v2

    const/16 v2, 0x713

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->SYSTEM_ERROR_DB:Lorg/jpos/rc/CMF;

    .line 118
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "SYSTEM_ERROR_TXN"

    const/16 v8, 0x5a

    move-object/from16 v93, v3

    const/16 v3, 0x714

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->SYSTEM_ERROR_TXN:Lorg/jpos/rc/CMF;

    .line 119
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "INVALID_FIELD"

    const/16 v8, 0x5b

    move-object/from16 v94, v2

    const/16 v2, 0x726

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->INVALID_FIELD:Lorg/jpos/rc/CMF;

    .line 120
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "MISCONFIGURED_ENDPOINT"

    const/16 v8, 0x5c

    move-object/from16 v95, v3

    const/16 v3, 0x727

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->MISCONFIGURED_ENDPOINT:Lorg/jpos/rc/CMF;

    .line 121
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "INVALID_REQUEST"

    const/16 v8, 0x5d

    move-object/from16 v96, v2

    const/16 v2, 0x728

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->INVALID_REQUEST:Lorg/jpos/rc/CMF;

    .line 122
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "HOST_UNREACHABLE"

    const/16 v8, 0x5e

    move-object/from16 v97, v3

    const/16 v3, 0x729

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->HOST_UNREACHABLE:Lorg/jpos/rc/CMF;

    .line 126
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "FINANCIAL_DO_NOT_HONOUR"

    const/16 v8, 0x5f

    move-object/from16 v98, v2

    const/16 v2, 0x7d0

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->FINANCIAL_DO_NOT_HONOUR:Lorg/jpos/rc/CMF;

    .line 127
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "FINANCIAL_EXPIRED"

    const/16 v8, 0x60

    move-object/from16 v99, v3

    const/16 v3, 0x7d1

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->FINANCIAL_EXPIRED:Lorg/jpos/rc/CMF;

    .line 128
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "FINANCIAL_SUSPECTED_FRAUD"

    const/16 v8, 0x61

    move-object/from16 v100, v2

    const/16 v2, 0x7d2

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->FINANCIAL_SUSPECTED_FRAUD:Lorg/jpos/rc/CMF;

    .line 129
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "FINANCIAL_CONTACT_ACQUIRER"

    const/16 v8, 0x62

    move-object/from16 v101, v3

    const/16 v3, 0x7d3

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->FINANCIAL_CONTACT_ACQUIRER:Lorg/jpos/rc/CMF;

    .line 130
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "FINANCIAL_RESTRICTED_CARD"

    const/16 v8, 0x63

    move-object/from16 v102, v2

    const/16 v2, 0x7d4

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->FINANCIAL_RESTRICTED_CARD:Lorg/jpos/rc/CMF;

    .line 131
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "FINANCIAL_CONTACT_ACQUIRER_SECURITY"

    const/16 v8, 0x64

    move-object/from16 v103, v3

    const/16 v3, 0x7d5

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->FINANCIAL_CONTACT_ACQUIRER_SECURITY:Lorg/jpos/rc/CMF;

    .line 132
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "FINANCIAL_MAX_PIN_TRIES_EXCEEDED"

    const/16 v8, 0x65

    move-object/from16 v104, v2

    const/16 v2, 0x7d6

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->FINANCIAL_MAX_PIN_TRIES_EXCEEDED:Lorg/jpos/rc/CMF;

    .line 133
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "SPECIAL_CONDITIONA"

    const/16 v8, 0x66

    move-object/from16 v105, v3

    const/16 v3, 0x7d7

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->SPECIAL_CONDITIONA:Lorg/jpos/rc/CMF;

    .line 134
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "LOST_CARD"

    const/16 v8, 0x67

    move-object/from16 v106, v2

    const/16 v2, 0x7d8

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->LOST_CARD:Lorg/jpos/rc/CMF;

    .line 135
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "STOLEN_CARD"

    const/16 v8, 0x68

    move-object/from16 v107, v3

    const/16 v3, 0x7d9

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->STOLEN_CARD:Lorg/jpos/rc/CMF;

    .line 136
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "SUSPECTED_COUNTERFELT_CARD"

    const/16 v8, 0x69

    move-object/from16 v108, v2

    const/16 v2, 0x7da

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->SUSPECTED_COUNTERFELT_CARD:Lorg/jpos/rc/CMF;

    .line 137
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "MAX_DAILY_WITHDRAWAL"

    const/16 v8, 0x6a

    move-object/from16 v109, v3

    const/16 v3, 0x7db

    invoke-direct {v2, v6, v8, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->MAX_DAILY_WITHDRAWAL:Lorg/jpos/rc/CMF;

    .line 138
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "MAX_DAILY_AMOUNT"

    const/16 v8, 0x6b

    move-object/from16 v110, v2

    const/16 v2, 0x7dc

    invoke-direct {v3, v6, v8, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->MAX_DAILY_AMOUNT:Lorg/jpos/rc/CMF;

    .line 141
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "SUCCESSFUL"

    const/16 v8, 0x6c

    move-object/from16 v111, v3

    const/16 v3, 0xbb8

    move-object/from16 v112, v10

    const/4 v10, 0x1

    invoke-direct {v2, v6, v8, v3, v10}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v2, Lorg/jpos/rc/CMF;->SUCCESSFUL:Lorg/jpos/rc/CMF;

    .line 142
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "NOT_SUPPORTED_BY_RECEIVER"

    const/16 v8, 0x6d

    const/16 v10, 0xbb9

    invoke-direct {v3, v6, v8, v10}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->NOT_SUPPORTED_BY_RECEIVER:Lorg/jpos/rc/CMF;

    .line 143
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "UNABLE_TO_LOCATE_RECORD"

    const/16 v10, 0x6e

    move-object/from16 v113, v3

    const/16 v3, 0xbba

    invoke-direct {v6, v8, v10, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->UNABLE_TO_LOCATE_RECORD:Lorg/jpos/rc/CMF;

    .line 144
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v8, "UPDATED_RECORD"

    const/16 v10, 0x6f

    move-object/from16 v114, v6

    const/16 v6, 0xbbb

    invoke-direct {v3, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->UPDATED_RECORD:Lorg/jpos/rc/CMF;

    .line 145
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "FIELD_EDIT_ERROR"

    const/16 v10, 0x70

    move-object/from16 v115, v3

    const/16 v3, 0xbbc

    invoke-direct {v6, v8, v10, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->FIELD_EDIT_ERROR:Lorg/jpos/rc/CMF;

    .line 146
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v8, "FILE_LOCKED_OUT"

    const/16 v10, 0x71

    move-object/from16 v116, v6

    const/16 v6, 0xbbd

    invoke-direct {v3, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->FILE_LOCKED_OUT:Lorg/jpos/rc/CMF;

    .line 147
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "NOT_SUCCESSFUL"

    const/16 v10, 0x72

    move-object/from16 v117, v3

    const/16 v3, 0xbbe

    invoke-direct {v6, v8, v10, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->NOT_SUCCESSFUL:Lorg/jpos/rc/CMF;

    .line 148
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v8, "FORMAT_ERROR"

    const/16 v10, 0x73

    move-object/from16 v118, v6

    const/16 v6, 0xbbf

    invoke-direct {v3, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->FORMAT_ERROR:Lorg/jpos/rc/CMF;

    .line 149
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "DUPLICATE"

    const/16 v10, 0x74

    move-object/from16 v119, v3

    const/16 v3, 0xbc0

    invoke-direct {v6, v8, v10, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->DUPLICATE:Lorg/jpos/rc/CMF;

    .line 150
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v8, "UNKNOWN_FILE"

    const/16 v10, 0x75

    move-object/from16 v120, v6

    const/16 v6, 0xbc1

    invoke-direct {v3, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->UNKNOWN_FILE:Lorg/jpos/rc/CMF;

    .line 151
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "INVALID_CARD_OR_CARDHOLDER_NUMBER"

    const/16 v10, 0x76

    move-object/from16 v121, v3

    const/16 v3, 0xbc2

    invoke-direct {v6, v8, v10, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->INVALID_CARD_OR_CARDHOLDER_NUMBER:Lorg/jpos/rc/CMF;

    .line 154
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v8, "REVERSAL_ACCEPTED"

    const/16 v10, 0x77

    move-object/from16 v122, v6

    const/16 v6, 0xfa0

    move-object/from16 v123, v2

    const/4 v2, 0x1

    invoke-direct {v3, v8, v10, v6, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v3, Lorg/jpos/rc/CMF;->REVERSAL_ACCEPTED:Lorg/jpos/rc/CMF;

    .line 157
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "RECONCILED_IN_BALANCE"

    const/16 v10, 0x78

    move-object/from16 v124, v3

    const/16 v3, 0x1388

    invoke-direct {v6, v8, v10, v3, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v6, Lorg/jpos/rc/CMF;->RECONCILED_IN_BALANCE:Lorg/jpos/rc/CMF;

    .line 158
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v3, "RECONCILED_OUT_OF_BALANCE"

    const/16 v8, 0x79

    const/16 v10, 0x1389

    invoke-direct {v2, v3, v8, v10}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->RECONCILED_OUT_OF_BALANCE:Lorg/jpos/rc/CMF;

    .line 159
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v8, "AMOUNT_NOT_RECONCILED_TOTALS_PROVIDED"

    const/16 v10, 0x7a

    move-object/from16 v125, v2

    const/16 v2, 0x138a

    invoke-direct {v3, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->AMOUNT_NOT_RECONCILED_TOTALS_PROVIDED:Lorg/jpos/rc/CMF;

    .line 160
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "TOTALS_NOT_AVAILABLE"

    const/16 v10, 0x7b

    move-object/from16 v126, v3

    const/16 v3, 0x138b

    invoke-direct {v2, v8, v10, v3}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->TOTALS_NOT_AVAILABLE:Lorg/jpos/rc/CMF;

    .line 161
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v8, "NOT_RECONCILED_TOTALS_PROVIDED"

    const/16 v10, 0x7c

    move-object/from16 v127, v2

    const/16 v2, 0x138c

    invoke-direct {v3, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->NOT_RECONCILED_TOTALS_PROVIDED:Lorg/jpos/rc/CMF;

    .line 164
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "ADMIN_MESSAGE_ACCEPTED"

    const/16 v10, 0x7d

    move-object/from16 v128, v3

    const/16 v3, 0x1770

    move-object/from16 v129, v6

    const/4 v6, 0x1

    invoke-direct {v2, v8, v10, v3, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v2, Lorg/jpos/rc/CMF;->ADMIN_MESSAGE_ACCEPTED:Lorg/jpos/rc/CMF;

    .line 167
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v8, "FEE_COLLECTION_ACCEPTED"

    const/16 v10, 0x7e

    move-object/from16 v130, v2

    const/16 v2, 0x1b58

    invoke-direct {v3, v8, v10, v2, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v3, Lorg/jpos/rc/CMF;->FEE_COLLECTION_ACCEPTED:Lorg/jpos/rc/CMF;

    .line 170
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "NET_ACCEPTED"

    const/16 v10, 0x7f

    move-object/from16 v131, v3

    const/16 v3, 0x1f40

    invoke-direct {v2, v8, v10, v3, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v2, Lorg/jpos/rc/CMF;->NET_ACCEPTED:Lorg/jpos/rc/CMF;

    .line 171
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v6, "NET_RETRY"

    const/16 v8, 0x80

    const/16 v10, 0x1f41

    invoke-direct {v3, v6, v8, v10}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/rc/CMF;->NET_RETRY:Lorg/jpos/rc/CMF;

    .line 174
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "ADVICE_ACK_NO_FINANCIAL"

    const/16 v10, 0x81

    move-object/from16 v132, v3

    const/16 v3, 0x2328

    move-object/from16 v133, v2

    const/4 v2, 0x1

    invoke-direct {v6, v8, v10, v3, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v6, Lorg/jpos/rc/CMF;->ADVICE_ACK_NO_FINANCIAL:Lorg/jpos/rc/CMF;

    .line 175
    new-instance v3, Lorg/jpos/rc/CMF;

    const-string v8, "ADVICE_ACCEPTED"

    const/16 v10, 0x82

    move-object/from16 v134, v6

    const/16 v6, 0x2329

    invoke-direct {v3, v8, v10, v6, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZ)V

    sput-object v3, Lorg/jpos/rc/CMF;->ADVICE_ACCEPTED:Lorg/jpos/rc/CMF;

    .line 176
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v6, "MESSAGE_ERROR"

    const/16 v8, 0x83

    const/16 v10, 0x238c

    invoke-direct {v2, v6, v8, v10}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->MESSAGE_ERROR:Lorg/jpos/rc/CMF;

    .line 177
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "INVALID_TRANSACTION"

    const/16 v10, 0x84

    move-object/from16 v135, v2

    const/16 v2, 0x238e

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->INVALID_TRANSACTION:Lorg/jpos/rc/CMF;

    .line 178
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "RETRY_TRANSACTION"

    const/16 v10, 0x85

    move-object/from16 v136, v6

    const/16 v6, 0x238f

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->RETRY_TRANSACTION:Lorg/jpos/rc/CMF;

    .line 179
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "ACQUIRER_NOT_SUPPORTED"

    const/16 v10, 0x86

    move-object/from16 v137, v2

    const/16 v2, 0x2391

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->ACQUIRER_NOT_SUPPORTED:Lorg/jpos/rc/CMF;

    .line 180
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "CUTOVER_IN_PROCESS"

    const/16 v10, 0x87

    move-object/from16 v138, v6

    const/16 v6, 0x2392

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CUTOVER_IN_PROCESS:Lorg/jpos/rc/CMF;

    .line 181
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "ISSUER_NOT_AVAILABLE"

    const/16 v10, 0x88

    move-object/from16 v139, v2

    const/16 v2, 0x2393

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->ISSUER_NOT_AVAILABLE:Lorg/jpos/rc/CMF;

    .line 182
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "ROUTING_ERROR"

    const/16 v10, 0x89

    move-object/from16 v140, v6

    const/16 v6, 0x2394

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->ROUTING_ERROR:Lorg/jpos/rc/CMF;

    .line 183
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "SYSTEM_ERROR"

    const/16 v10, 0x8a

    move-object/from16 v141, v2

    const/16 v2, 0x2395

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->SYSTEM_ERROR:Lorg/jpos/rc/CMF;

    .line 184
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "ISSUER_SIGNED_OFF"

    const/16 v10, 0x8b

    move-object/from16 v142, v6

    const/16 v6, 0x2396

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->ISSUER_SIGNED_OFF:Lorg/jpos/rc/CMF;

    .line 185
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "ISSUER_TIMEOUT"

    const/16 v10, 0x8c

    move-object/from16 v143, v2

    const/16 v2, 0x2397

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->ISSUER_TIMEOUT:Lorg/jpos/rc/CMF;

    .line 186
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "ISSUER_UNAVAILABLE"

    const/16 v10, 0x8d

    move-object/from16 v144, v6

    const/16 v6, 0x2398

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->ISSUER_UNAVAILABLE:Lorg/jpos/rc/CMF;

    .line 187
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "DUPLICATE_TRANSMISSION"

    const/16 v10, 0x8e

    move-object/from16 v145, v2

    const/16 v2, 0x2399

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->DUPLICATE_TRANSMISSION:Lorg/jpos/rc/CMF;

    .line 188
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "ORIGINAL_NOT_FOUND"

    const/16 v10, 0x8f

    move-object/from16 v146, v6

    const/16 v6, 0x239a

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->ORIGINAL_NOT_FOUND:Lorg/jpos/rc/CMF;

    .line 189
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "RECONCILIATION_ERROR"

    const/16 v10, 0x90

    move-object/from16 v147, v2

    const/16 v2, 0x239b

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->RECONCILIATION_ERROR:Lorg/jpos/rc/CMF;

    .line 190
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "MAC_INCORRECT"

    const/16 v10, 0x91

    move-object/from16 v148, v6

    const/16 v6, 0x239c

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->MAC_INCORRECT:Lorg/jpos/rc/CMF;

    .line 191
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "MAC_KEY_SYNC_ERROR"

    const/16 v10, 0x92

    move-object/from16 v149, v2

    const/16 v2, 0x239d

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->MAC_KEY_SYNC_ERROR:Lorg/jpos/rc/CMF;

    .line 192
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "ZMK_NOT_AVAILABLE"

    const/16 v10, 0x93

    move-object/from16 v150, v6

    const/16 v6, 0x239e

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->ZMK_NOT_AVAILABLE:Lorg/jpos/rc/CMF;

    .line 193
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "CRYPTO_ERROR"

    const/16 v10, 0x94

    move-object/from16 v151, v2

    const/16 v2, 0x239f

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->CRYPTO_ERROR:Lorg/jpos/rc/CMF;

    .line 194
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "HSM_ERROR_RETRY"

    const/16 v10, 0x95

    move-object/from16 v152, v6

    const/16 v6, 0x23a0

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->HSM_ERROR_RETRY:Lorg/jpos/rc/CMF;

    .line 195
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "HSM_ERROR"

    const/16 v10, 0x96

    move-object/from16 v153, v2

    const/16 v2, 0x23a1

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->HSM_ERROR:Lorg/jpos/rc/CMF;

    .line 196
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "OUT_OF_SEQUENCE"

    const/16 v10, 0x97

    move-object/from16 v154, v6

    const/16 v6, 0x23a2

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->OUT_OF_SEQUENCE:Lorg/jpos/rc/CMF;

    .line 197
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "REQUEST_IN_PROGRESS"

    const/16 v10, 0x98

    move-object/from16 v155, v2

    const/16 v2, 0x23a3

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->REQUEST_IN_PROGRESS:Lorg/jpos/rc/CMF;

    .line 198
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "INVALID_SECURITY_CODE"

    const/16 v10, 0x99

    move-object/from16 v156, v6

    const/16 v6, 0x23a4

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->INVALID_SECURITY_CODE:Lorg/jpos/rc/CMF;

    .line 199
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "DATABASE_ERROR"

    const/16 v10, 0x9a

    move-object/from16 v157, v2

    const/16 v2, 0x23a5

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->DATABASE_ERROR:Lorg/jpos/rc/CMF;

    .line 200
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "CUSTOMER_VENDOR_FORMAT_ERROR"

    const/16 v10, 0x9b

    move-object/from16 v158, v6

    const/16 v6, 0x23a8

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->CUSTOMER_VENDOR_FORMAT_ERROR:Lorg/jpos/rc/CMF;

    .line 201
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "RECURRING_DATA_ERROR"

    const/16 v10, 0x9c

    move-object/from16 v159, v2

    const/16 v2, 0x23ac

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->RECURRING_DATA_ERROR:Lorg/jpos/rc/CMF;

    .line 202
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "UPDATE_NOT_ALLOWED"

    const/16 v10, 0x9d

    move-object/from16 v160, v6

    const/16 v6, 0x23ad

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->UPDATE_NOT_ALLOWED:Lorg/jpos/rc/CMF;

    .line 203
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "AGREEMENT_VIOLATION"

    const/16 v10, 0x9e

    move-object/from16 v161, v2

    const/16 v2, 0x2486

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->AGREEMENT_VIOLATION:Lorg/jpos/rc/CMF;

    .line 205
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v8, "GENERAL_DECLINE"

    const/16 v10, 0x9f

    move-object/from16 v162, v6

    const/16 v6, 0x270f

    invoke-direct {v2, v8, v10, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/jpos/rc/CMF;->GENERAL_DECLINE:Lorg/jpos/rc/CMF;

    .line 208
    new-instance v6, Lorg/jpos/rc/CMF;

    const-string v8, "JPOS"

    const/16 v10, 0xa0

    move-object/from16 v163, v2

    const/16 v2, 0x2710

    invoke-direct {v6, v8, v10, v2}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/jpos/rc/CMF;->JPOS:Lorg/jpos/rc/CMF;

    .line 209
    new-instance v2, Lorg/jpos/rc/CMF;

    const-string v165, "INTERNAL_ERROR"

    const/16 v166, 0xa1

    const/16 v167, 0x4e1f

    const/16 v168, 0x0

    const/16 v169, 0x1

    move-object/from16 v164, v2

    invoke-direct/range {v164 .. v169}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v2, Lorg/jpos/rc/CMF;->INTERNAL_ERROR:Lorg/jpos/rc/CMF;

    .line 212
    new-instance v8, Lorg/jpos/rc/CMF;

    const-string v10, "USER"

    const/16 v2, 0xa2

    move-object/from16 v165, v6

    const v6, 0x15f90

    invoke-direct {v8, v10, v2, v6}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/jpos/rc/CMF;->USER:Lorg/jpos/rc/CMF;

    .line 24
    const/16 v2, 0xa3

    new-array v2, v2, [Lorg/jpos/rc/CMF;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v112, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v46, v2, v0

    const/16 v0, 0x2b

    aput-object v47, v2, v0

    const/16 v0, 0x2c

    aput-object v48, v2, v0

    const/16 v0, 0x2d

    aput-object v49, v2, v0

    const/16 v0, 0x2e

    aput-object v50, v2, v0

    const/16 v0, 0x2f

    aput-object v51, v2, v0

    const/16 v0, 0x30

    aput-object v52, v2, v0

    const/16 v0, 0x31

    aput-object v53, v2, v0

    const/16 v0, 0x32

    aput-object v54, v2, v0

    const/16 v0, 0x33

    aput-object v55, v2, v0

    const/16 v0, 0x34

    aput-object v56, v2, v0

    const/16 v0, 0x35

    aput-object v57, v2, v0

    const/16 v0, 0x36

    aput-object v58, v2, v0

    const/16 v0, 0x37

    aput-object v59, v2, v0

    const/16 v0, 0x38

    aput-object v60, v2, v0

    const/16 v0, 0x39

    aput-object v61, v2, v0

    const/16 v0, 0x3a

    aput-object v62, v2, v0

    const/16 v0, 0x3b

    aput-object v63, v2, v0

    const/16 v0, 0x3c

    aput-object v64, v2, v0

    const/16 v0, 0x3d

    aput-object v65, v2, v0

    const/16 v0, 0x3e

    aput-object v66, v2, v0

    const/16 v0, 0x3f

    aput-object v67, v2, v0

    const/16 v0, 0x40

    aput-object v68, v2, v0

    const/16 v0, 0x41

    aput-object v69, v2, v0

    const/16 v0, 0x42

    aput-object v70, v2, v0

    const/16 v0, 0x43

    aput-object v71, v2, v0

    const/16 v0, 0x44

    aput-object v72, v2, v0

    const/16 v0, 0x45

    aput-object v73, v2, v0

    const/16 v0, 0x46

    aput-object v74, v2, v0

    const/16 v0, 0x47

    aput-object v75, v2, v0

    const/16 v0, 0x48

    aput-object v76, v2, v0

    const/16 v0, 0x49

    aput-object v77, v2, v0

    const/16 v0, 0x4a

    aput-object v78, v2, v0

    const/16 v0, 0x4b

    aput-object v79, v2, v0

    const/16 v0, 0x4c

    aput-object v80, v2, v0

    const/16 v0, 0x4d

    aput-object v81, v2, v0

    const/16 v0, 0x4e

    aput-object v82, v2, v0

    const/16 v0, 0x4f

    aput-object v83, v2, v0

    const/16 v0, 0x50

    aput-object v84, v2, v0

    const/16 v0, 0x51

    aput-object v85, v2, v0

    const/16 v0, 0x52

    aput-object v86, v2, v0

    const/16 v0, 0x53

    aput-object v87, v2, v0

    const/16 v0, 0x54

    aput-object v88, v2, v0

    const/16 v0, 0x55

    aput-object v89, v2, v0

    const/16 v0, 0x56

    aput-object v90, v2, v0

    const/16 v0, 0x57

    aput-object v91, v2, v0

    const/16 v0, 0x58

    aput-object v92, v2, v0

    const/16 v0, 0x59

    aput-object v93, v2, v0

    const/16 v0, 0x5a

    aput-object v94, v2, v0

    const/16 v0, 0x5b

    aput-object v95, v2, v0

    const/16 v0, 0x5c

    aput-object v96, v2, v0

    const/16 v0, 0x5d

    aput-object v97, v2, v0

    const/16 v0, 0x5e

    aput-object v98, v2, v0

    const/16 v0, 0x5f

    aput-object v99, v2, v0

    const/16 v0, 0x60

    aput-object v100, v2, v0

    const/16 v0, 0x61

    aput-object v101, v2, v0

    const/16 v0, 0x62

    aput-object v102, v2, v0

    const/16 v0, 0x63

    aput-object v103, v2, v0

    const/16 v0, 0x64

    aput-object v104, v2, v0

    const/16 v0, 0x65

    aput-object v105, v2, v0

    const/16 v0, 0x66

    aput-object v106, v2, v0

    const/16 v0, 0x67

    aput-object v107, v2, v0

    const/16 v0, 0x68

    aput-object v108, v2, v0

    const/16 v0, 0x69

    aput-object v109, v2, v0

    const/16 v0, 0x6a

    aput-object v110, v2, v0

    const/16 v0, 0x6b

    aput-object v111, v2, v0

    const/16 v0, 0x6c

    aput-object v123, v2, v0

    const/16 v0, 0x6d

    aput-object v113, v2, v0

    const/16 v0, 0x6e

    aput-object v114, v2, v0

    const/16 v0, 0x6f

    aput-object v115, v2, v0

    const/16 v0, 0x70

    aput-object v116, v2, v0

    const/16 v0, 0x71

    aput-object v117, v2, v0

    const/16 v0, 0x72

    aput-object v118, v2, v0

    const/16 v0, 0x73

    aput-object v119, v2, v0

    const/16 v0, 0x74

    aput-object v120, v2, v0

    const/16 v0, 0x75

    aput-object v121, v2, v0

    const/16 v0, 0x76

    aput-object v122, v2, v0

    const/16 v0, 0x77

    aput-object v124, v2, v0

    const/16 v0, 0x78

    aput-object v129, v2, v0

    const/16 v0, 0x79

    aput-object v125, v2, v0

    const/16 v0, 0x7a

    aput-object v126, v2, v0

    const/16 v0, 0x7b

    aput-object v127, v2, v0

    const/16 v0, 0x7c

    aput-object v128, v2, v0

    const/16 v0, 0x7d

    aput-object v130, v2, v0

    const/16 v0, 0x7e

    aput-object v131, v2, v0

    const/16 v0, 0x7f

    aput-object v133, v2, v0

    const/16 v0, 0x80

    aput-object v132, v2, v0

    const/16 v0, 0x81

    aput-object v134, v2, v0

    const/16 v0, 0x82

    aput-object v3, v2, v0

    const/16 v0, 0x83

    aput-object v135, v2, v0

    const/16 v0, 0x84

    aput-object v136, v2, v0

    const/16 v0, 0x85

    aput-object v137, v2, v0

    const/16 v0, 0x86

    aput-object v138, v2, v0

    const/16 v0, 0x87

    aput-object v139, v2, v0

    const/16 v0, 0x88

    aput-object v140, v2, v0

    const/16 v0, 0x89

    aput-object v141, v2, v0

    const/16 v0, 0x8a

    aput-object v142, v2, v0

    const/16 v0, 0x8b

    aput-object v143, v2, v0

    const/16 v0, 0x8c

    aput-object v144, v2, v0

    const/16 v0, 0x8d

    aput-object v145, v2, v0

    const/16 v0, 0x8e

    aput-object v146, v2, v0

    const/16 v0, 0x8f

    aput-object v147, v2, v0

    const/16 v0, 0x90

    aput-object v148, v2, v0

    const/16 v0, 0x91

    aput-object v149, v2, v0

    const/16 v0, 0x92

    aput-object v150, v2, v0

    const/16 v0, 0x93

    aput-object v151, v2, v0

    const/16 v0, 0x94

    aput-object v152, v2, v0

    const/16 v0, 0x95

    aput-object v153, v2, v0

    const/16 v0, 0x96

    aput-object v154, v2, v0

    const/16 v0, 0x97

    aput-object v155, v2, v0

    const/16 v0, 0x98

    aput-object v156, v2, v0

    const/16 v0, 0x99

    aput-object v157, v2, v0

    const/16 v0, 0x9a

    aput-object v158, v2, v0

    const/16 v0, 0x9b

    aput-object v159, v2, v0

    const/16 v0, 0x9c

    aput-object v160, v2, v0

    const/16 v0, 0x9d

    aput-object v161, v2, v0

    const/16 v0, 0x9e

    aput-object v162, v2, v0

    const/16 v0, 0x9f

    aput-object v163, v2, v0

    const/16 v0, 0xa0

    aput-object v165, v2, v0

    const/16 v0, 0xa1

    aput-object v164, v2, v0

    const/16 v0, 0xa2

    aput-object v8, v2, v0

    sput-object v2, Lorg/jpos/rc/CMF;->$VALUES:[Lorg/jpos/rc/CMF;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/rc/CMF;->lookupInt:Ljava/util/Map;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/rc/CMF;->lookupStr:Ljava/util/Map;

    .line 224
    invoke-static {}, Lorg/jpos/rc/CMF;->values()[Lorg/jpos/rc/CMF;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 225
    .local v3, "irc":Lorg/jpos/rc/IRC;
    sget-object v4, Lorg/jpos/rc/CMF;->lookupInt:Ljava/util/Map;

    invoke-interface {v3}, Lorg/jpos/rc/IRC;->irc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v4, Lorg/jpos/rc/CMF;->lookupStr:Ljava/util/Map;

    invoke-interface {v3}, Lorg/jpos/rc/IRC;->ircString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v3    # "irc":Lorg/jpos/rc/IRC;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p3, "irc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 231
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZZ)V

    .line 232
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6
    .param p3, "irc"    # I
    .param p4, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 234
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jpos/rc/CMF;-><init>(Ljava/lang/String;IIZZ)V

    .line 235
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 1
    .param p3, "irc"    # I
    .param p4, "success"    # Z
    .param p5, "inhibit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    iput p3, p0, Lorg/jpos/rc/CMF;->irc:I

    .line 238
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "%04d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jpos/rc/CMF;->ircStr:Ljava/lang/String;

    .line 239
    iput-boolean p4, p0, Lorg/jpos/rc/CMF;->success:Z

    .line 240
    iput-boolean p5, p0, Lorg/jpos/rc/CMF;->inhibit:Z

    .line 241
    return-void
.end method

.method public static fromIsoString(Ljava/lang/String;)Lorg/jpos/rc/CMF;
    .locals 2
    .param p0, "irc"    # Ljava/lang/String;

    .line 275
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/rc/CMF;->lookupStr:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/rc/CMF;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/rc/CMF;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lorg/jpos/rc/CMF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/rc/CMF;

    return-object v0
.end method

.method public static valueOf(I)Lorg/jpos/rc/IRC;
    .locals 2
    .param p0, "i"    # I

    .line 264
    sget-object v0, Lorg/jpos/rc/CMF;->lookupInt:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/rc/IRC;

    return-object v0
.end method

.method public static values()[Lorg/jpos/rc/CMF;
    .locals 1

    .line 24
    sget-object v0, Lorg/jpos/rc/CMF;->$VALUES:[Lorg/jpos/rc/CMF;

    invoke-virtual {v0}, [Lorg/jpos/rc/CMF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/rc/CMF;

    return-object v0
.end method


# virtual methods
.method public inhibit()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lorg/jpos/rc/CMF;->inhibit:Z

    return v0
.end method

.method public irc()I
    .locals 1

    .line 245
    iget v0, p0, Lorg/jpos/rc/CMF;->irc:I

    return v0
.end method

.method public ircString()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/jpos/rc/CMF;->ircStr:Ljava/lang/String;

    return-object v0
.end method

.method public success()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lorg/jpos/rc/CMF;->success:Z

    return v0
.end method
