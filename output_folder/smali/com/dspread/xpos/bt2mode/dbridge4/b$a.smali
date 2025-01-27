.class Lcom/dspread/xpos/bt2mode/dbridge4/b$a;
.super Ljava/lang/Thread;
.source "BluetoothIBridgeConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/bluetooth/BluetoothSocket;

.field private final b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

.field private final c:Ljava/lang/String;

.field final synthetic d:Lcom/dspread/xpos/bt2mode/dbridge4/b;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge4/b;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    .line 3
    invoke-virtual {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->c()Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->a:Landroid/bluetooth/BluetoothSocket;

    .line 4
    invoke-virtual {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    const-string v0, "Service discovery failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() of connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " socket failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothIBridgeConnManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/b;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/b;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_4

    const/16 v4, 0x8

    if-ge v2, v4, :cond_4

    .line 10
    iget-object v4, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    invoke-static {v4}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/b;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    .line 11
    invoke-virtual {v5}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 14
    const-string v1, "BluetoothIBridgeConnManager"

    const-string v4, "device bonded."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v5, 0xb

    const-wide/16 v6, 0x3e8

    if-ne v3, v5, :cond_2

    .line 17
    :try_start_0
    const-string v3, "BluetoothIBridgeConnManager"

    const-string v4, "bonding ..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 24
    :try_start_1
    const-string v3, "BluetoothIBridgeConnManager"

    const-string/jumbo v4, "start bond device"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-virtual {v3}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v6, v1

    move v4, v2

    move v5, v3

    .line 45
    :goto_2
    const-wide/16 v7, 0x12c

    :try_start_3
    iget-object v9, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v5, v0

    move v10, v5

    goto :goto_4

    :catch_2
    move-exception v6

    .line 49
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 50
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-ne v4, v3, :cond_6

    .line 52
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to connect() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "BluetoothIBridgeConnManager"

    invoke-static {v12, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    if-eqz v10, :cond_7

    if-ne v4, v2, :cond_7

    .line 57
    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v6

    :cond_7
    :goto_3
    move-object v6, v9

    :goto_4
    if-nez v10, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_b

    :goto_5
    if-eqz v5, :cond_9

    .line 71
    :try_start_5
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    .line 75
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 77
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to close() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " socket during connection failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothIBridgeConnManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_8
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-static {v0, v1, v6}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/b;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_9
    iget-object v7, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    monitor-enter v7

    .line 88
    :try_start_7
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    invoke-static {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/b;Lcom/dspread/xpos/bt2mode/dbridge4/b$a;)Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    .line 89
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    if-eqz v0, :cond_a

    .line 92
    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_FORWARD:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    .line 93
    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;)V

    .line 95
    :cond_a
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->b(Lcom/dspread/xpos/bt2mode/dbridge4/b;)Lcom/dspread/xpos/bt2mode/dbridge4/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->a:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V

    return-void

    :catchall_0
    move-exception v0

    .line 96
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    .line 57
    :cond_b
    goto/16 :goto_2
.end method
