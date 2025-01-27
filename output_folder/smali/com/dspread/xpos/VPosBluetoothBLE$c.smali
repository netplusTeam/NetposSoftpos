.class Lcom/dspread/xpos/VPosBluetoothBLE$c;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "VPosBluetoothBLE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/VPosBluetoothBLE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/VPosBluetoothBLE$c$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic c:Lcom/dspread/xpos/VPosBluetoothBLE;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/VPosBluetoothBLE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosBluetoothBLE$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->a:I

    return p0
.end method

.method static synthetic b(Lcom/dspread/xpos/VPosBluetoothBLE$c;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCharacteristicChanged+getValue"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    array-length p2, p1

    if-lez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {p2, p1}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;[B)V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCharacteristicRead status:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCharacteristicRead"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 5
    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 6
    aget-byte p1, p1, p2

    iput p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->a:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x89

    if-ne p3, p1, :cond_1

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->a:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCharacteristicWrite"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 1
    const-string/jumbo p1, "\u84dd\u7259\u8fde\u63a5\u6210\u529f"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {p1}, Lcom/dspread/xpos/VPosBluetoothBLE;->h(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    const-string/jumbo p1, "\u53d1\u73b0\u670d\u52a1"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {p1}, Lcom/dspread/xpos/VPosBluetoothBLE;->h(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 9
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    sget-object p2, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_DISCONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    invoke-static {p1, p2}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;)Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    iget-object p1, p1, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-virtual {p1}, Lcom/dspread/xpos/VPosBluetoothBLE;->G()V

    .line 12
    const-string p1, "Disconnected from GATT server."

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    if-nez p3, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onMtuChanged success MTU = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {p1}, Lcom/dspread/xpos/VPosBluetoothBLE;->h(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iget-object p2, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 5
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    sget-object p2, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    invoke-static {p1, p2}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;)Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "onMtuChanged fail "

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    sget-object p2, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTFAIL:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    invoke-static {p1, p2}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;)Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    .line 9
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {p1}, Lcom/dspread/xpos/VPosBluetoothBLE;->f(Lcom/dspread/xpos/VPosBluetoothBLE;)Lcom/dspread/xpos/QPOSService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    :goto_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    if-nez p2, :cond_5

    .line 1
    const-string/jumbo p1, "onServicesDiscovered"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {p1}, Lcom/dspread/xpos/VPosBluetoothBLE;->h(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGattService;

    .line 5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service_uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v1}, Lcom/dspread/xpos/VPosBluetoothBLE;->i(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo v0, "service_uuid"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p2

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gattCharacteristic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v2}, Lcom/dspread/xpos/VPosBluetoothBLE;->c(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    const-string/jumbo v1, "write_uuid"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v1, v0}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 21
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v2}, Lcom/dspread/xpos/VPosBluetoothBLE;->d(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    const-string v1, "AAAAAnotify_uuid"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 23
    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 25
    const-string v1, "BBBBBnotify_uuid"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 28
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v2}, Lcom/dspread/xpos/VPosBluetoothBLE;->e(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 31
    const-string/jumbo v0, "onServicesDiscovered:\u8001\u84dd\u7259"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;I)I

    .line 34
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v0}, Lcom/dspread/xpos/VPosBluetoothBLE;->h(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 35
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    invoke-static {v0, v1}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;)Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    goto/16 :goto_0

    .line 41
    :cond_4
    const-string/jumbo v1, "onServicesDiscovered:\u65b0\u84dd\u7259"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-static {v1}, Lcom/dspread/xpos/VPosBluetoothBLE;->h(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->a:I

    .line 44
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/VPosBluetoothBLE$c$a;-><init>(Lcom/dspread/xpos/VPosBluetoothBLE$c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 53
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onServicesDiscovered received: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE$c;->c:Lcom/dspread/xpos/VPosBluetoothBLE;

    sget-object p2, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTFAIL:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    invoke-static {p1, p2}, Lcom/dspread/xpos/VPosBluetoothBLE;->a(Lcom/dspread/xpos/VPosBluetoothBLE;Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;)Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    :cond_6
    return-void
.end method
