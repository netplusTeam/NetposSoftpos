.class public Lcom/dspread/xpos/utils/j;
.super Ljava/lang/Object;
.source "bluetoothUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    if-nez p0, :cond_0

    .line 1
    const-string p0, ""

    const-string v0, "boundDevice-->bluetoothDevice == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p0}, Lcom/dspread/xpos/utils/a;->c(Ljava/lang/Class;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    const-string p0, ""

    const-string v1, "boundDeviceAPI-->bluetoothDevice == null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static c(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    if-nez p0, :cond_0

    .line 1
    const-string p0, ""

    const-string v0, "disBoundDevice-->bluetoothDevice == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p0}, Lcom/dspread/xpos/utils/a;->d(Ljava/lang/Class;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x1

    return p0
.end method
