.class public final enum Lcom/dspread/xpos/DspFingerPrint$Error;
.super Ljava/lang/Enum;
.source "DspFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/DspFingerPrint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/DspFingerPrint$Error;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES_KEY_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum AES_KEY_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum ALREADY_ENROLLED:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum APDU_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum CASHBACK_NOT_SUPPORTED:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum CMD_NOT_AVAILABLE:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum CMD_TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum COMM_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum CRC_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum DEVICE_BUSY:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum DEVICE_RESET:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum EMV_APP_CFG_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum EMV_CAPK_CFG_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum ICC_ONLINE_TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum ILVERR_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum INPUT_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum INPUT_INVALID_FORMAT:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum INPUT_OUT_OF_RANGE:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum INPUT_ZERO_VALUES:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum INVALID_ID_PROTOCOL:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum MAC_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum POWER_FAIL:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum RC_DIFFERENT:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum RC_SAME:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum TRANSMISSION_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

.field public static final enum WR_DATA_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

.field private static final synthetic a:[Lcom/dspread/xpos/DspFingerPrint$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "MAC_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->MAC_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "CMD_TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->CMD_TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "CMD_NOT_AVAILABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->CMD_NOT_AVAILABLE:Lcom/dspread/xpos/DspFingerPrint$Error;

    .line 2
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "DEVICE_RESET"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_RESET:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "DEVICE_BUSY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_BUSY:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "INPUT_OUT_OF_RANGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_OUT_OF_RANGE:Lcom/dspread/xpos/DspFingerPrint$Error;

    .line 3
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "INPUT_INVALID_FORMAT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "INPUT_ZERO_VALUES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_ZERO_VALUES:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "INPUT_INVALID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

    .line 4
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "CASHBACK_NOT_SUPPORTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->CASHBACK_NOT_SUPPORTED:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "CRC_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->CRC_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "COMM_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->COMM_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "WR_DATA_ERROR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->WR_DATA_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    .line 5
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "EMV_APP_CFG_ERROR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->EMV_APP_CFG_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "EMV_CAPK_CFG_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->EMV_CAPK_CFG_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "APDU_ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->APDU_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    .line 6
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "ICC_ONLINE_TIMEOUT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->ICC_ONLINE_TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "AMOUNT_OUT_OF_LIMIT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "ILVERR_ERROR"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->ILVERR_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "INVALID_ID_PROTOCOL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->INVALID_ID_PROTOCOL:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "ALREADY_ENROLLED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->ALREADY_ENROLLED:Lcom/dspread/xpos/DspFingerPrint$Error;

    .line 7
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "TRANSMISSION_ERROR"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->TRANSMISSION_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "RC_DIFFERENT"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->RC_DIFFERENT:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "RC_SAME"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->RC_SAME:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "POWER_FAIL"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->POWER_FAIL:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "AES_KEY_INVALID"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->AES_KEY_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    const-string v1, "AES_KEY_ERROR"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->AES_KEY_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    .line 8
    invoke-static {}, Lcom/dspread/xpos/DspFingerPrint$Error;->a()[Lcom/dspread/xpos/DspFingerPrint$Error;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->a:[Lcom/dspread/xpos/DspFingerPrint$Error;

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

.method private static synthetic a()[Lcom/dspread/xpos/DspFingerPrint$Error;
    .locals 3

    .line 1
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/dspread/xpos/DspFingerPrint$Error;

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->MAC_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->CMD_TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->CMD_NOT_AVAILABLE:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_RESET:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_BUSY:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_OUT_OF_RANGE:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_ZERO_VALUES:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->CASHBACK_NOT_SUPPORTED:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->CRC_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->COMM_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->WR_DATA_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->EMV_APP_CFG_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->EMV_CAPK_CFG_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->APDU_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->ICC_ONLINE_TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->ILVERR_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->INVALID_ID_PROTOCOL:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->ALREADY_ENROLLED:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->TRANSMISSION_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->RC_DIFFERENT:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->RC_SAME:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->POWER_FAIL:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->AES_KEY_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->AES_KEY_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/DspFingerPrint$Error;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/DspFingerPrint$Error;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/DspFingerPrint$Error;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->a:[Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {v0}, [Lcom/dspread/xpos/DspFingerPrint$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/DspFingerPrint$Error;

    return-object v0
.end method
