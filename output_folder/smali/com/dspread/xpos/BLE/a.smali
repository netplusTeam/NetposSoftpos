.class public Lcom/dspread/xpos/BLE/a;
.super Landroid/app/Service;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/BLE/a$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "a"

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field public static final l:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_GATT_CONNECTED"

.field public static final m:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_GATT_DISCONNECTED"

.field public static final n:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_GATT_SERVICES_DISCOVERED"

.field public static final o:Ljava/lang/String; = "com.example.bluetooth.le.ACTION_DATA_AVAILABLE"

.field public static final p:Ljava/lang/String; = "com.example.bluetooth.le.EXTRA_DATA"

.field public static final q:Ljava/util/UUID;


# instance fields
.field private a:Landroid/bluetooth/BluetoothManager;

.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Ljava/lang/String;

.field private d:Landroid/bluetooth/BluetoothGatt;

.field private e:I

.field private final f:Landroid/bluetooth/BluetoothGattCallback;

.field private final g:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/BLE/b;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/BLE/a;->q:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/BLE/a;->e:I

    .line 24
    new-instance v0, Lcom/dspread/xpos/BLE/a$a;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/BLE/a$a;-><init>(Lcom/dspread/xpos/BLE/a;)V

    iput-object v0, p0, Lcom/dspread/xpos/BLE/a;->f:Landroid/bluetooth/BluetoothGattCallback;

    .line 159
    new-instance v0, Lcom/dspread/xpos/BLE/a$b;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/BLE/a$b;-><init>(Lcom/dspread/xpos/BLE/a;)V

    iput-object v0, p0, Lcom/dspread/xpos/BLE/a;->g:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/BLE/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/dspread/xpos/BLE/a;->e:I

    return p1
.end method

.method static synthetic a(Lcom/dspread/xpos/BLE/a;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dspread/xpos/BLE/a;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/BLE/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/BLE/a;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/BLE/a;->a(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 8

    .line 8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/dspread/xpos/BLE/a;->q:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "com.example.bluetooth.le.EXTRA_DATA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    .line 18
    sget-object v4, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v5, "Heart rate format UINT16."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    .line 21
    sget-object v4, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v5, "Heart rate format UINT8."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    .line 23
    invoke-virtual {p2, p1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 24
    sget-object p2, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Received heart rate: %d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 29
    array-length p2, p1

    if-lez p2, :cond_3

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    array-length v4, p1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, p1, v5

    .line 32
    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v7, v2

    const-string v6, "%02X "

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 33
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    .line 42
    :cond_1
    :goto_0
    sget-object p1, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCharacteristicNotification---------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AAAAA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    const/16 p2, 0xa

    .line 50
    new-array p2, p2, [B

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    const/4 p2, 0x1

    .line 51
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 52
    iget-object p2, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    .line 53
    :cond_1
    :goto_0
    sget-object p1, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string p2, "BluetoothAdapter not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x0t
        0x6t
        0x21t
        0x10t
        0x0t
        0xat
        0x0t
        0x0t
        0x70t
    .end array-data
.end method

.method public b()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->b:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->c:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 9
    sget-object p1, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v0, "Trying to use an existing mBluetoothGatt for connection."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iput v2, p0, Lcom/dspread/xpos/BLE/a;->e:I

    return v2

    :cond_1
    return v1

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    .line 20
    sget-object p1, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v0, "Device not found.  Unable to connect."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 25
    :cond_3
    iget-object v1, p0, Lcom/dspread/xpos/BLE/a;->f:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    .line 26
    sget-object v0, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v1, "Trying to create a new connection."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, Lcom/dspread/xpos/BLE/a;->c:Ljava/lang/String;

    .line 28
    iput v2, p0, Lcom/dspread/xpos/BLE/a;->e:I

    return v2

    .line 29
    :cond_4
    :goto_0
    sget-object p1, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v0, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    return-void

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->d:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->a:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/dspread/xpos/BLE/a;->a:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v2, "Unable to initialize BluetoothManager."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a;->a:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/BLE/a;->b:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 11
    sget-object v0, Lcom/dspread/xpos/BLE/a;->h:Ljava/lang/String;

    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a;->g:Landroid/os/IBinder;

    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/BLE/a;->b()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
