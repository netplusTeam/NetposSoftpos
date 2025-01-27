.class public final enum Lcom/dspread/xpos/QPOSService$TransactionResult;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$TransactionResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPROVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum APP_BLOCKED:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum CANCEL:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum CAPK_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum CARD_BLOCKED:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum CARD_BLOCKED_OR_NO_EMV_APPS:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum CARD_NOT_SUPPORTED:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum CARD_REMOVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum CONTACTLESS_TRANSACTION_NOT_ALLOW:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum DEVICE_ERROR:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum FALLBACK:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum INVALID_ICC_DATA:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum MISSING_MANDATORY_DATA:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum MULTIPLE_CARDS:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum NFC_TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum NOT_ICC:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum SELECT_APP_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum TRADE_LOG_FULL:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum TRANSACTION_NOT_ALLOWED_AMOUNT_EXCEED:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field public static final enum TRANS_TOKEN_INVALID:Lcom/dspread/xpos/QPOSService$TransactionResult;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$TransactionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "APPROVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->APPROVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "TERMINATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 9
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "DECLINED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 13
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "CANCEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->CANCEL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 17
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "CAPK_FAIL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->CAPK_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 21
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "NOT_ICC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->NOT_ICC:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 25
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "SELECT_APP_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->SELECT_APP_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 29
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "DEVICE_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DEVICE_ERROR:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 33
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "CARD_NOT_SUPPORTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_NOT_SUPPORTED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 37
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "MISSING_MANDATORY_DATA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->MISSING_MANDATORY_DATA:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 41
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "CARD_BLOCKED_OR_NO_EMV_APPS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_BLOCKED_OR_NO_EMV_APPS:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 45
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "INVALID_ICC_DATA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->INVALID_ICC_DATA:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 49
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "FALLBACK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->FALLBACK:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 53
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "NFC_TERMINATED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->NFC_TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 57
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "CARD_REMOVED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_REMOVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 61
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "TRADE_LOG_FULL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->TRADE_LOG_FULL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 65
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "TRANSACTION_NOT_ALLOWED_AMOUNT_EXCEED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->TRANSACTION_NOT_ALLOWED_AMOUNT_EXCEED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 69
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "CONTACTLESS_TRANSACTION_NOT_ALLOW"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->CONTACTLESS_TRANSACTION_NOT_ALLOW:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 73
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "TRANS_TOKEN_INVALID"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->TRANS_TOKEN_INVALID:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 77
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "CARD_BLOCKED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_BLOCKED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 81
    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "APP_BLOCKED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->APP_BLOCKED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    new-instance v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    const-string v1, "MULTIPLE_CARDS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$TransactionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->MULTIPLE_CARDS:Lcom/dspread/xpos/QPOSService$TransactionResult;

    .line 82
    invoke-static {}, Lcom/dspread/xpos/QPOSService$TransactionResult;->a()[Lcom/dspread/xpos/QPOSService$TransactionResult;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->a:[Lcom/dspread/xpos/QPOSService$TransactionResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$TransactionResult;
    .locals 3

    .line 1
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$TransactionResult;

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->APPROVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CANCEL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CAPK_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->NOT_ICC:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->SELECT_APP_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->DEVICE_ERROR:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_NOT_SUPPORTED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->MISSING_MANDATORY_DATA:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_BLOCKED_OR_NO_EMV_APPS:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->INVALID_ICC_DATA:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->FALLBACK:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->NFC_TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_REMOVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->TRADE_LOG_FULL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->TRANSACTION_NOT_ALLOWED_AMOUNT_EXCEED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CONTACTLESS_TRANSACTION_NOT_ALLOW:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->TRANS_TOKEN_INVALID:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_BLOCKED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->APP_BLOCKED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->MULTIPLE_CARDS:Lcom/dspread/xpos/QPOSService$TransactionResult;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$TransactionResult;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$TransactionResult;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$TransactionResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->a:[Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$TransactionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$TransactionResult;

    return-object v0
.end method
