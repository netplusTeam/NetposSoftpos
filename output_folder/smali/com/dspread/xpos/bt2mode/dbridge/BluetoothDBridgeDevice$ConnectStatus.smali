.class public final enum Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;
.super Ljava/lang/Enum;
.source "BluetoothDBridgeDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STATE_BONDED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

.field public static final enum STATE_BONDING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

.field public static final enum STATE_BONDNONE:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

.field public static final enum STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

.field public static final enum STATUS_CONNECTFAILED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

.field public static final enum STATUS_CONNECTTING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

.field public static final enum STATUS_DISCONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

.field public static final enum STATUS_DISCONNECTTING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

.field private static final synthetic a:[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const-string v1, "STATUS_DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_DISCONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const-string v1, "STATUS_CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const-string v1, "STATUS_DISCONNECTTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_DISCONNECTTING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const-string v1, "STATUS_CONNECTTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTTING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const-string v1, "STATUS_CONNECTFAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTFAILED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const-string v1, "STATE_BONDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATE_BONDED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const-string v1, "STATE_BONDING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATE_BONDING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const-string v1, "STATE_BONDNONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATE_BONDNONE:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->a()[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->a:[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

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

.method private static synthetic a()[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;
    .locals 3

    .line 1
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_DISCONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_DISCONNECTTING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTTING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTFAILED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATE_BONDED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATE_BONDING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATE_BONDNONE:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->a:[Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    invoke-virtual {v0}, [Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    return-object v0
.end method
