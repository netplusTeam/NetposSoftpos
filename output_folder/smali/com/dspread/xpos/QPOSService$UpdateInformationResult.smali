.class public final enum Lcom/dspread/xpos/QPOSService$UpdateInformationResult;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateInformationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$UpdateInformationResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum UPDATE_CMD_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATE_DATA_FORMAT_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATE_FRAME_LENGTH_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATE_LOWPOWER:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATE_PACKET_LEN_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATE_PACKET_VEFIRY_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATE_SIGNATURE_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATE_SUCCESS:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATE_WRITE_VALUE_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPDATING:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum UPGRADE_NOT_FINISH:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field public static final enum USB_RECONNECTING:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$UpdateInformationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SUCCESS:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_PACKET_VEFIRY_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_PACKET_VEFIRY_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    .line 2
    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_PACKET_LEN_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_PACKET_LEN_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    .line 3
    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_LOWPOWER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_LOWPOWER:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    .line 4
    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATING:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "USB_RECONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->USB_RECONNECTING:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    .line 6
    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_CMD_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_CMD_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_SIGNATURE_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SIGNATURE_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_FRAME_LENGTH_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FRAME_LENGTH_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_DATA_FORMAT_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_DATA_FORMAT_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPDATE_WRITE_VALUE_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_WRITE_VALUE_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    new-instance v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const-string v1, "UPGRADE_NOT_FINISH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPGRADE_NOT_FINISH:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    .line 7
    invoke-static {}, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->a()[Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->a:[Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$UpdateInformationResult;
    .locals 3

    .line 1
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SUCCESS:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_PACKET_VEFIRY_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_PACKET_LEN_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_LOWPOWER:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATING:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->USB_RECONNECTING:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_CMD_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SIGNATURE_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FRAME_LENGTH_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_DATA_FORMAT_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_WRITE_VALUE_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPGRADE_NOT_FINISH:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$UpdateInformationResult;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$UpdateInformationResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->a:[Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    return-object v0
.end method
