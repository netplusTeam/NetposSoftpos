.class public final enum Lcom/dspread/xpos/QPOSService$Error;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$Error;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum APDU_ERROR:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum APP_SELECT_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum CASHBACK_NOT_SUPPORTED:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum CMD_NOT_AVAILABLE:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum CMD_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum COMM_ERROR:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum CRC_ERROR:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum DEVICE_BUSY:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum DEVICE_IN_BOOT_STATE:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum DEVICE_RESET:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum EMV_APP_CFG_ERROR:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum EMV_CAPK_CFG_ERROR:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum EXPIRED_CERT:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum ICC_EXISTS_ERROR:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum ICC_ONLINE_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum INPUT_INVALID:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum INPUT_OUT_OF_RANGE:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum INPUT_ZERO_VALUES:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum INVALID_TRUSTED_CERT:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum MAC_ERROR:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum UNKNOWN:Lcom/dspread/xpos/QPOSService$Error;

.field public static final enum WR_DATA_ERROR:Lcom/dspread/xpos/QPOSService$Error;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "MAC_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->MAC_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    .line 9
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "CMD_TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->CMD_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    .line 13
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "CMD_NOT_AVAILABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->CMD_NOT_AVAILABLE:Lcom/dspread/xpos/QPOSService$Error;

    .line 17
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "DEVICE_RESET"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->DEVICE_RESET:Lcom/dspread/xpos/QPOSService$Error;

    .line 21
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->UNKNOWN:Lcom/dspread/xpos/QPOSService$Error;

    .line 25
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "DEVICE_BUSY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->DEVICE_BUSY:Lcom/dspread/xpos/QPOSService$Error;

    .line 29
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "INPUT_OUT_OF_RANGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->INPUT_OUT_OF_RANGE:Lcom/dspread/xpos/QPOSService$Error;

    .line 33
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "INPUT_INVALID_FORMAT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    .line 37
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "INPUT_ZERO_VALUES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->INPUT_ZERO_VALUES:Lcom/dspread/xpos/QPOSService$Error;

    .line 41
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "INPUT_INVALID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID:Lcom/dspread/xpos/QPOSService$Error;

    .line 45
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "CASHBACK_NOT_SUPPORTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->CASHBACK_NOT_SUPPORTED:Lcom/dspread/xpos/QPOSService$Error;

    .line 49
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "CRC_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->CRC_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    .line 53
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "COMM_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->COMM_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    .line 57
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "WR_DATA_ERROR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->WR_DATA_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    .line 61
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "EMV_APP_CFG_ERROR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->EMV_APP_CFG_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    .line 65
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "EMV_CAPK_CFG_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->EMV_CAPK_CFG_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    .line 69
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "APDU_ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->APDU_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    .line 73
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "APP_SELECT_TIMEOUT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->APP_SELECT_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    .line 77
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "ICC_ONLINE_TIMEOUT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->ICC_ONLINE_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    .line 81
    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "AMOUNT_OUT_OF_LIMIT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/QPOSService$Error;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "INVALID_TRUSTED_CERT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->INVALID_TRUSTED_CERT:Lcom/dspread/xpos/QPOSService$Error;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "EXPIRED_CERT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->EXPIRED_CERT:Lcom/dspread/xpos/QPOSService$Error;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "ICC_EXISTS_ERROR"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->ICC_EXISTS_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Error;

    const-string v1, "DEVICE_IN_BOOT_STATE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->DEVICE_IN_BOOT_STATE:Lcom/dspread/xpos/QPOSService$Error;

    .line 82
    invoke-static {}, Lcom/dspread/xpos/QPOSService$Error;->a()[Lcom/dspread/xpos/QPOSService$Error;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$Error;->a:[Lcom/dspread/xpos/QPOSService$Error;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$Error;
    .locals 3

    .line 1
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$Error;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->MAC_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->CMD_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->CMD_NOT_AVAILABLE:Lcom/dspread/xpos/QPOSService$Error;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->DEVICE_RESET:Lcom/dspread/xpos/QPOSService$Error;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->UNKNOWN:Lcom/dspread/xpos/QPOSService$Error;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->DEVICE_BUSY:Lcom/dspread/xpos/QPOSService$Error;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->INPUT_OUT_OF_RANGE:Lcom/dspread/xpos/QPOSService$Error;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->INPUT_ZERO_VALUES:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->CASHBACK_NOT_SUPPORTED:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->CRC_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->COMM_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->WR_DATA_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->EMV_APP_CFG_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->EMV_CAPK_CFG_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->APDU_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->APP_SELECT_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->ICC_ONLINE_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->INVALID_TRUSTED_CERT:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->EXPIRED_CERT:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->ICC_EXISTS_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->DEVICE_IN_BOOT_STATE:Lcom/dspread/xpos/QPOSService$Error;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$Error;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$Error;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$Error;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$Error;->a:[Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$Error;

    return-object v0
.end method
