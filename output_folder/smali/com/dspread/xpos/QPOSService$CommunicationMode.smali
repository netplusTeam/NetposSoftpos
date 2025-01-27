.class public final enum Lcom/dspread/xpos/QPOSService$CommunicationMode;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommunicationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$CommunicationMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIO:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum BLUETOOTH:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum BLUETOOTH_2Mode:Lcom/dspread/xpos/QPOSService$CommunicationMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BLUETOOTH_4Mode:Lcom/dspread/xpos/QPOSService$CommunicationMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BLUETOOTH_BLE:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum BLUETOOTH_VER2:Lcom/dspread/xpos/QPOSService$CommunicationMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum UART:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum UART_DIRECT:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum UART_GOOD:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum UART_K7:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum UART_SERVICE:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum UNKNOW:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum USB:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum USB_OTG:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field public static final enum USB_OTG_CDC_ACM:Lcom/dspread/xpos/QPOSService$CommunicationMode;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$CommunicationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->AUDIO:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 2
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "BLUETOOTH_VER2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_VER2:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 11
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "UART"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 15
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "UART_SERVICE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_SERVICE:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 16
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "UART_K7"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_K7:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 17
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "BLUETOOTH_2Mode"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_2Mode:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 19
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "USB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->USB:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 20
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "BLUETOOTH_4Mode"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_4Mode:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 22
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "UART_GOOD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_GOOD:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 23
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "USB_OTG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->USB_OTG:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 24
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "USB_OTG_CDC_ACM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->USB_OTG_CDC_ACM:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 25
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "BLUETOOTH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 26
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "BLUETOOTH_BLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_BLE:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 30
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "UART_DIRECT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_DIRECT:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 31
    new-instance v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const-string v1, "UNKNOW"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UNKNOW:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    .line 32
    invoke-static {}, Lcom/dspread/xpos/QPOSService$CommunicationMode;->a()[Lcom/dspread/xpos/QPOSService$CommunicationMode;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->a:[Lcom/dspread/xpos/QPOSService$CommunicationMode;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$CommunicationMode;
    .locals 3

    .line 1
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$CommunicationMode;

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->AUDIO:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_VER2:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_SERVICE:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_K7:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_2Mode:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->USB:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_4Mode:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_GOOD:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->USB_OTG:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->USB_OTG_CDC_ACM:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_BLE:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_DIRECT:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UNKNOW:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$CommunicationMode;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$CommunicationMode;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$CommunicationMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$CommunicationMode;->a:[Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$CommunicationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$CommunicationMode;

    return-object v0
.end method
