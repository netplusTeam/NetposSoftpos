.class final enum Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;
.super Ljava/lang/Enum;
.source "VPosBluetoothBLE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/VPosBluetoothBLE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BlutoothBLEStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION_DATA_AVAILABLE:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

.field public static final enum ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

.field public static final enum ACTION_GATT_CONNECTFAIL:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

.field public static final enum ACTION_GATT_CONNECTING:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

.field public static final enum ACTION_GATT_DISCONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

.field public static final enum ACTION_GATT_SERVICES_DISCOVERED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

.field public static final enum EXTRA_DATA:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

.field public static final enum NONE:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

.field private static final synthetic a:[Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->NONE:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const-string v1, "ACTION_GATT_CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const-string v1, "ACTION_GATT_DISCONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_DISCONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const-string v1, "ACTION_GATT_SERVICES_DISCOVERED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_SERVICES_DISCOVERED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const-string v1, "ACTION_DATA_AVAILABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_DATA_AVAILABLE:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const-string v1, "EXTRA_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->EXTRA_DATA:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    .line 2
    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const-string v1, "ACTION_GATT_CONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTING:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const-string v1, "ACTION_GATT_CONNECTFAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTFAIL:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    .line 3
    invoke-static {}, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->a()[Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->a:[Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

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

.method private static synthetic a()[Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;
    .locals 3

    .line 1
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->NONE:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_DISCONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_SERVICES_DISCOVERED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_DATA_AVAILABLE:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->EXTRA_DATA:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTING:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTFAIL:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->a:[Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    invoke-virtual {v0}, [Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    return-object v0
.end method
