.class final enum Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;
.super Ljava/lang/Enum;
.source "BluetoothIBridgeDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIRECTION_BACKWARD:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

.field public static final enum DIRECTION_FORWARD:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

.field public static final enum DIRECTION_NONE:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

.field private static final synthetic a:[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    const-string v1, "DIRECTION_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_NONE:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    const-string v1, "DIRECTION_FORWARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_FORWARD:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    const-string v1, "DIRECTION_BACKWARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_BACKWARD:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->a()[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->a:[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

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

.method private static synthetic a()[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_NONE:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_FORWARD:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_BACKWARD:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->a:[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    invoke-virtual {v0}, [Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    return-object v0
.end method
