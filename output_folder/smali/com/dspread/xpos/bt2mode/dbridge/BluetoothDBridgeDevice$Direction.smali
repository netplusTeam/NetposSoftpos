.class final enum Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;
.super Ljava/lang/Enum;
.source "BluetoothDBridgeDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIRECTION_BACKWARD:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

.field public static final enum DIRECTION_FORWARD:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

.field public static final enum DIRECTION_NONE:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

.field private static final synthetic a:[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    const-string v1, "DIRECTION_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->DIRECTION_NONE:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    const-string v1, "DIRECTION_FORWARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->DIRECTION_FORWARD:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    const-string v1, "DIRECTION_BACKWARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->DIRECTION_BACKWARD:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->a()[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->a:[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

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

.method private static synthetic a()[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->DIRECTION_NONE:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->DIRECTION_FORWARD:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->DIRECTION_BACKWARD:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->a:[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    invoke-virtual {v0}, [Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    return-object v0
.end method
