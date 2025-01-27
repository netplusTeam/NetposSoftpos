.class Lcom/dspread/xpos/BLE/a$a;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/BLE/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/BLE/a;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/BLE/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    const-string v0, "com.example.bluetooth.le.ACTION_DATA_AVAILABLE"

    invoke-static {p1, v0, p2}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    const-string p3, "com.example.bluetooth.le.ACTION_DATA_AVAILABLE"

    invoke-static {p1, p3, p2}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    invoke-static {p2, p1}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;I)I

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    const-string p2, "com.example.bluetooth.le.ACTION_GATT_CONNECTED"

    invoke-static {p1, p2}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/dspread/xpos/BLE/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connected to GATT server."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/dspread/xpos/BLE/a;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempting to start service discovery:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    .line 6
    invoke-static {p3}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;I)I

    .line 14
    invoke-static {}, Lcom/dspread/xpos/BLE/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Disconnected from GATT server."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    const-string p2, "com.example.bluetooth.le.ACTION_GATT_DISCONNECTED"

    invoke-static {p1, p2}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    if-nez p2, :cond_3

    .line 1
    const-string p1, "AAAAA"

    const-string/jumbo p2, "onServicesDiscovered"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    invoke-static {p2}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "com.example.bluetooth.le.ACTION_GATT_SERVICES_DISCOVERED"

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 7
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "49535343-1e4d-4bd9-ba61-23c647249616"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    const-string p2, "gattCharacteristic.getUuid().equals()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    invoke-static {p1}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    invoke-static {p1, v1}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/BLE/a$a;->a:Lcom/dspread/xpos/BLE/a;

    invoke-static {p1, v1}, Lcom/dspread/xpos/BLE/a;->a(Lcom/dspread/xpos/BLE/a;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_3
    invoke-static {}, Lcom/dspread/xpos/BLE/a;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServicesDiscovered received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
