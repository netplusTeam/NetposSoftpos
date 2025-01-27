.class public final enum Lcom/danbamitale/epmslib/entities/TransactionType;
.super Ljava/lang/Enum;
.source "TransactionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danbamitale/epmslib/entities/TransactionType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008+\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0011\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000ej\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082j\u0002\u00083j\u0002\u00084j\u0002\u00085j\u0002\u00086\u00a8\u00067"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "",
        "(Ljava/lang/String;I)V",
        "MTI",
        "",
        "getMTI",
        "()I",
        "code",
        "",
        "getCode",
        "()Ljava/lang/String;",
        "hasAdditionalAmount",
        "",
        "getHasAdditionalAmount",
        "()Z",
        "hasOriginalAmount",
        "getHasOriginalAmount",
        "isReversible",
        "toString",
        "PURCHASE",
        "PURCHASE_WITH_CASH_BACK",
        "PURCHASE_WITH_ADDITIONAL_DATA",
        "CASH_ADVANCE",
        "REVERSAL",
        "REFUND",
        "PRE_AUTHORIZATION",
        "PRE_AUTHORIZATION_COMPLETION",
        "BALANCE",
        "MINI_STATEMENT",
        "LINK_ACCOUNT_INQUIRY",
        "PIN_CHANGE",
        "DEPOSIT",
        "TRANSFER",
        "BILL_PAYMENT",
        "PREPAID",
        "VOID",
        "BILLER_LIST_DOWNLOAD",
        "PRODUCT_LIST_DOWNLOAD",
        "BILLER_SUBSCRIPTION_INFO_DOWNLOAD",
        "PAYMENT_VALIDATION",
        "PAYXPRESS",
        "TERMINAL_MASTER_KEY",
        "TERMINAL_SESSION_KEY",
        "TERMINAL_PIN_KEY",
        "TERMINAL_PARAMETER_DOWNLOAD",
        "CALL_HOME",
        "DAILY_TRANSACTION_REPORT_DOWNLOAD",
        "CA_PUBLIC_KEY_DOWNLOAD",
        "EMV_APPLICATION_AID_DOWNLOAD",
        "DYNAMIC_CURRENCY_CONVERSION",
        "INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_EMV",
        "INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_TRACK2_DATA",
        "TRANZAXIS_WORKING_KEY_INQUIRY",
        "TRANZAXIS_TRAFFIC_ENCRYPTION_WORKING_KEY",
        "TRANZAXIS_ECHO_TEST",
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


# static fields
.field private static final synthetic $VALUES:[Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum BALANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum BILLER_LIST_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum BILLER_SUBSCRIPTION_INFO_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum BILL_PAYMENT:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum CALL_HOME:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum CASH_ADVANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum CA_PUBLIC_KEY_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum DAILY_TRANSACTION_REPORT_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum DEPOSIT:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum DYNAMIC_CURRENCY_CONVERSION:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum EMV_APPLICATION_AID_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_EMV:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_TRACK2_DATA:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum LINK_ACCOUNT_INQUIRY:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum MINI_STATEMENT:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PAYMENT_VALIDATION:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PAYXPRESS:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PIN_CHANGE:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PREPAID:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PRE_AUTHORIZATION:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PRE_AUTHORIZATION_COMPLETION:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PRODUCT_LIST_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PURCHASE_WITH_ADDITIONAL_DATA:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum PURCHASE_WITH_CASH_BACK:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum REFUND:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum REVERSAL:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum TERMINAL_MASTER_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum TERMINAL_PARAMETER_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum TERMINAL_PIN_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum TERMINAL_SESSION_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum TRANSFER:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum TRANZAXIS_ECHO_TEST:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum TRANZAXIS_TRAFFIC_ENCRYPTION_WORKING_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum TRANZAXIS_WORKING_KEY_INQUIRY:Lcom/danbamitale/epmslib/entities/TransactionType;

.field public static final enum VOID:Lcom/danbamitale/epmslib/entities/TransactionType;


# direct methods
.method private static final synthetic $values()[Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 3

    const/16 v0, 0x24

    new-array v0, v0, [Lcom/danbamitale/epmslib/entities/TransactionType;

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE_WITH_CASH_BACK:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE_WITH_ADDITIONAL_DATA:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->CASH_ADVANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->REVERSAL:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->REFUND:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PRE_AUTHORIZATION:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PRE_AUTHORIZATION_COMPLETION:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->BALANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->MINI_STATEMENT:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->LINK_ACCOUNT_INQUIRY:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PIN_CHANGE:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->DEPOSIT:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANSFER:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->BILL_PAYMENT:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PREPAID:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->VOID:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->BILLER_LIST_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PRODUCT_LIST_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->BILLER_SUBSCRIPTION_INFO_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PAYMENT_VALIDATION:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PAYXPRESS:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_MASTER_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_SESSION_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_PIN_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_PARAMETER_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->CALL_HOME:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->DAILY_TRANSACTION_REPORT_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->CA_PUBLIC_KEY_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->EMV_APPLICATION_AID_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->DYNAMIC_CURRENCY_CONVERSION:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_EMV:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_TRACK2_DATA:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANZAXIS_WORKING_KEY_INQUIRY:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANZAXIS_TRAFFIC_ENCRYPTION_WORKING_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANZAXIS_ECHO_TEST:Lcom/danbamitale/epmslib/entities/TransactionType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PURCHASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 9
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PURCHASE_WITH_CASH_BACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE_WITH_CASH_BACK:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PURCHASE_WITH_ADDITIONAL_DATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE_WITH_ADDITIONAL_DATA:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "CASH_ADVANCE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->CASH_ADVANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 10
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "REVERSAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->REVERSAL:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "REFUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->REFUND:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PRE_AUTHORIZATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PRE_AUTHORIZATION:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PRE_AUTHORIZATION_COMPLETION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PRE_AUTHORIZATION_COMPLETION:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "BALANCE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->BALANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "MINI_STATEMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->MINI_STATEMENT:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "LINK_ACCOUNT_INQUIRY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->LINK_ACCOUNT_INQUIRY:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 11
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PIN_CHANGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PIN_CHANGE:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "DEPOSIT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->DEPOSIT:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "TRANSFER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANSFER:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "BILL_PAYMENT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->BILL_PAYMENT:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PREPAID"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PREPAID:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "VOID"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->VOID:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "BILLER_LIST_DOWNLOAD"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->BILLER_LIST_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PRODUCT_LIST_DOWNLOAD"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PRODUCT_LIST_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 12
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "BILLER_SUBSCRIPTION_INFO_DOWNLOAD"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->BILLER_SUBSCRIPTION_INFO_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PAYMENT_VALIDATION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PAYMENT_VALIDATION:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 14
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "PAYXPRESS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PAYXPRESS:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 17
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "TERMINAL_MASTER_KEY"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_MASTER_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 18
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "TERMINAL_SESSION_KEY"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_SESSION_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "TERMINAL_PIN_KEY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_PIN_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 19
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "TERMINAL_PARAMETER_DOWNLOAD"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_PARAMETER_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "CALL_HOME"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->CALL_HOME:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "DAILY_TRANSACTION_REPORT_DOWNLOAD"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->DAILY_TRANSACTION_REPORT_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "CA_PUBLIC_KEY_DOWNLOAD"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->CA_PUBLIC_KEY_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "EMV_APPLICATION_AID_DOWNLOAD"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->EMV_APPLICATION_AID_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 20
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "DYNAMIC_CURRENCY_CONVERSION"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->DYNAMIC_CURRENCY_CONVERSION:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_EMV"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_EMV:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_TRACK2_DATA"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_TRACK2_DATA:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 21
    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "TRANZAXIS_WORKING_KEY_INQUIRY"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANZAXIS_WORKING_KEY_INQUIRY:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "TRANZAXIS_TRAFFIC_ENCRYPTION_WORKING_KEY"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANZAXIS_TRAFFIC_ENCRYPTION_WORKING_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    const-string v1, "TRANZAXIS_ECHO_TEST"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/entities/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANZAXIS_ECHO_TEST:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-static {}, Lcom/danbamitale/epmslib/entities/TransactionType;->$values()[Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v0

    sput-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->$VALUES:[Lcom/danbamitale/epmslib/entities/TransactionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1

    const-class v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionType;

    return-object v0
.end method

.method public static values()[Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1

    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->$VALUES:[Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/danbamitale/epmslib/entities/TransactionType;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 2

    .line 24
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "00"

    packed-switch v0, :pswitch_data_0

    .line 59
    const-string v1, ""

    goto/16 :goto_0

    .line 58
    :pswitch_0
    const-string v1, "99"

    goto/16 :goto_0

    .line 57
    :pswitch_1
    const-string v1, "95"

    goto/16 :goto_0

    .line 56
    :pswitch_2
    const-string v1, "92"

    goto/16 :goto_0

    .line 55
    :pswitch_3
    const-string v1, "9I"

    goto/16 :goto_0

    .line 54
    :pswitch_4
    const-string v1, "9J"

    goto/16 :goto_0

    .line 53
    :pswitch_5
    const-string v1, "9F"

    goto/16 :goto_0

    .line 52
    :pswitch_6
    const-string v1, "9E"

    goto/16 :goto_0

    .line 51
    :pswitch_7
    const-string v1, "9K"

    goto :goto_0

    .line 50
    :pswitch_8
    const-string v1, "9H"

    goto :goto_0

    .line 49
    :pswitch_9
    const-string v1, "9D"

    goto :goto_0

    .line 48
    :pswitch_a
    const-string v1, "9C"

    goto :goto_0

    .line 47
    :pswitch_b
    const-string v1, "9G"

    goto :goto_0

    .line 46
    :pswitch_c
    const-string v1, "9B"

    goto :goto_0

    .line 45
    :pswitch_d
    const-string v1, "9A"

    goto :goto_0

    .line 44
    :pswitch_e
    const-string v1, "4E"

    goto :goto_0

    .line 43
    :pswitch_f
    const-string v1, "4D"

    goto :goto_0

    .line 42
    :pswitch_10
    const-string v1, "4C"

    goto :goto_0

    .line 41
    :pswitch_11
    const-string v1, "4B"

    goto :goto_0

    .line 40
    :pswitch_12
    const-string v1, "4A"

    goto :goto_0

    .line 39
    :pswitch_13
    const-string v1, "48"

    goto :goto_0

    .line 38
    :pswitch_14
    const-string v1, "40"

    goto :goto_0

    .line 37
    :pswitch_15
    const-string v1, "21"

    goto :goto_0

    .line 36
    :pswitch_16
    const-string v1, "90"

    goto :goto_0

    .line 35
    :pswitch_17
    const-string v1, "30"

    goto :goto_0

    .line 34
    :pswitch_18
    const-string v1, "38"

    goto :goto_0

    .line 33
    :pswitch_19
    const-string v1, "31"

    goto :goto_0

    .line 32
    :pswitch_1a
    const-string v1, "61"

    goto :goto_0

    .line 31
    :pswitch_1b
    const-string v1, "60"

    goto :goto_0

    .line 30
    :pswitch_1c
    const-string v1, "20"

    goto :goto_0

    .line 29
    :pswitch_1d
    goto :goto_0

    .line 28
    :pswitch_1e
    const-string v1, "01"

    goto :goto_0

    .line 27
    :pswitch_1f
    const-string v1, "4F"

    goto :goto_0

    .line 26
    :pswitch_20
    const-string v1, "09"

    goto :goto_0

    .line 25
    :pswitch_21
    nop

    .line 60
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final getHasAdditionalAmount()Z
    .locals 2

    .line 92
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 93
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0
.end method

.method public final getHasOriginalAmount()Z
    .locals 2

    .line 86
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :pswitch_1
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getMTI()I
    .locals 2

    .line 63
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    const-string v0, "0800"

    goto :goto_0

    .line 73
    :pswitch_0
    const-string v0, "0220"

    goto :goto_0

    .line 78
    :pswitch_1
    const-string v0, "0100"

    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "0420"

    goto :goto_0

    .line 72
    :pswitch_3
    const-string v0, "0200"

    .line 81
    :goto_0
    invoke-static {v0}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->toInt16(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final isReversible()Z
    .locals 2

    .line 98
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :pswitch_1
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 83
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
