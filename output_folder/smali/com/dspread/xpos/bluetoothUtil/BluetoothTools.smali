.class public Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;
.super Ljava/lang/Object;
.source "BluetoothTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;
    }
.end annotation


# static fields
.field private static a:Landroid/bluetooth/BluetoothAdapter; = null

.field public static final b:Ljava/util/UUID;

.field public static final c:Ljava/lang/String; = "DEVICE"

.field public static final d:Ljava/lang/String; = "SERVER_INDEX"

.field public static final e:Ljava/lang/String; = "DATA"

.field public static final f:Ljava/lang/String; = "ACTION_READ_DATA"

.field public static final g:Ljava/lang/String; = "ACTION_NOT_FOUND_DEVICE"

.field public static final h:Ljava/lang/String; = "ACTION_START_DISCOVERY"

.field public static final i:Ljava/lang/String; = "ACTION_FOUND_DEVICE"

.field public static final j:Ljava/lang/String; = "ACTION_SELECTED_DEVICE"

.field public static final k:Ljava/lang/String; = "ACTION_STARRT_SERVER"

.field public static final l:Ljava/lang/String; = "ACTION_STOP_SERVICE"

.field public static final m:Ljava/lang/String; = "ACTION_DATA_TO_SERVICE"

.field public static final n:Ljava/lang/String; = "ACTION_DATA_TO_GAME"

.field public static final o:Ljava/lang/String; = "ACTION_CONNECT_SUCCESS"

.field public static final p:Ljava/lang/String; = "ACTION_CONNECT_ERROR"

.field public static final q:I = 0x2

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field private static t:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 6
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b:Ljava/util/UUID;

    .line 129
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->NOCONNECT:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->t:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    return-void
.end method

.method public static a(I)V
    .locals 2

    if-lez p0, :cond_0

    const/16 v0, 0x12c

    if-le p0, v0, :cond_1

    :cond_0
    const/16 p0, 0xc8

    .line 2
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V
    .locals 0

    .line 4
    sput-object p0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->t:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    return-void
.end method

.method public static b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->t:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    return-object v0
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method

.method public static d()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    return-void
.end method
