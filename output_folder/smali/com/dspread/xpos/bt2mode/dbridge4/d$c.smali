.class Lcom/dspread/xpos/bt2mode/dbridge4/d$c;
.super Ljava/lang/Object;
.source "BluetoothIBridgeGatt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# static fields
.field static final m:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"

.field static final n:Ljava/lang/String; = "0000ff00-0000-1000-8000-00805f9b34fb"

.field static final o:Ljava/lang/String; = "0000ff01-0000-1000-8000-00805f9b34fb"

.field static final p:Ljava/lang/String; = "0000ff02-0000-1000-8000-00805f9b34fb"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

.field public final c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

.field private final d:Landroid/bluetooth/BluetoothAdapter;

.field private e:Landroid/bluetooth/BluetoothGatt;

.field private final f:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bt2mode/dbridge4/a$d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public i:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private j:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final k:Landroid/bluetooth/BluetoothGattCallback;

.field final synthetic l:Lcom/dspread/xpos/bt2mode/dbridge4/d;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge4/d;Landroid/content/Context;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Lcom/dspread/xpos/bt2mode/dbridge4/a$f;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;",
            "Lcom/dspread/xpos/bt2mode/dbridge4/a$f;",
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bt2mode/dbridge4/a$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->l:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    .line 8
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c$a;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->k:Landroid/bluetooth/BluetoothGattCallback;

    .line 80
    iput-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->b:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 81
    iput-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a:Landroid/content/Context;

    .line 82
    iput-object p4, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->f:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    .line 83
    iput-object p5, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->g:Ljava/util/ArrayList;

    .line 84
    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d;->b(Lcom/dspread/xpos/bt2mode/dbridge4/d;)Landroid/bluetooth/BluetoothManager;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    iput-object p3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    .line 88
    invoke-virtual {p3}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 89
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic b(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Lcom/dspread/xpos/bt2mode/dbridge4/d$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->b:Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    return-object p0
.end method

.method static synthetic c(Lcom/dspread/xpos/bt2mode/dbridge4/d$c;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->f:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    :cond_0
    return-void
.end method

.method a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    .line 61
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    array-length v0, p1

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iput-object p1, v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->h:[B

    .line 67
    array-length p1, p1

    iput p1, v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->i:I

    .line 68
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->g:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 75
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dspread/xpos/bt2mode/dbridge4/a$d;

    .line 77
    iget-object v3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-virtual {v3}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iget-object v4, v3, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->h:[B

    iget v5, v3, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->i:I

    invoke-interface {v2, v3, v4, v5}, Lcom/dspread/xpos/bt2mode/dbridge4/a$d;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 32
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 41
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    :cond_1
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 45
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    const-string v2, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 52
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "0000ff02-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->h:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 58
    :cond_2
    const-string v2, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->j:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->a(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method a([BI)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->h:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "write Gatt data in Connections:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x14

    if-le p2, v2, :cond_0

    .line 11
    new-array v3, v2, [B

    .line 12
    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->h:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 14
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->h:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    add-int/lit8 v1, v1, 0x14

    add-int/lit8 p2, p2, -0x14

    const-wide/16 v2, 0x5

    .line 18
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 24
    :cond_0
    new-array v2, p2, [B

    .line 25
    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->h:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 27
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->h:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_1
    return-void
.end method

.method b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_0
    return-void
.end method

.method b(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    :cond_0
    return-void
.end method

.method c(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_0
    return-void
.end method

.method public d()Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    return-object v0
.end method

.method e()Ljava/util/List;
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
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->e:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    if-nez v1, :cond_1

    return v0

    .line 5
    :cond_1
    check-cast p1, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    .line 6
    iget-object p1, p1, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->c:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
