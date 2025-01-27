.class public final enum Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;
.super Ljava/lang/Enum;
.source "BluetoothSocketConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BTConnectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BONDED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

.field public static final enum BONDEDFAIL:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

.field public static final enum BONDING:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

.field public static final enum CONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

.field public static final enum CONNECTED_FAIL:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

.field public static final enum CONNECTING:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

.field public static final enum DISCONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

.field public static final enum NOCONNECT:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

.field private static final synthetic a:[Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const-string v1, "NOCONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->NOCONNECT:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const-string v1, "CONNECTED_FAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTING:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const-string v1, "BONDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->BONDING:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const-string v1, "BONDEDFAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->BONDEDFAIL:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const-string v1, "BONDED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->BONDED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->a()[Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->a:[Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

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

.method private static synthetic a()[Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;
    .locals 3

    .line 1
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->NOCONNECT:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTING:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->BONDING:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->BONDEDFAIL:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->BONDED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->a:[Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    invoke-virtual {v0}, [Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    return-object v0
.end method
