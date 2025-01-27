.class Lcom/dspread/xpos/bt2mode/dbridge/b$a;
.super Ljava/lang/Thread;
.source "BluetoothDBridgeConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/bluetooth/BluetoothSocket;

.field private final b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:Z

.field final synthetic f:Lcom/dspread/xpos/bt2mode/dbridge/b;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge/b;Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->e:Z

    .line 6
    iput-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 7
    invoke-virtual {p2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->c()Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->a:Landroid/bluetooth/BluetoothSocket;

    .line 8
    invoke-virtual {p2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->c:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->d:I

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
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->a:Landroid/bluetooth/BluetoothSocket;

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

    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " socket failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDBridgeConnManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->e:Z

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

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b;->a(Lcom/dspread/xpos/bt2mode/dbridge/b;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b;->a(Lcom/dspread/xpos/bt2mode/dbridge/b;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v0, :cond_1

    .line 7
    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTTING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    .line 8
    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b;->b(Lcom/dspread/xpos/bt2mode/dbridge/b;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    move v0, v3

    move v4, v0

    move v5, v4

    .line 14
    :goto_0
    iget-boolean v6, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->e:Z

    if-nez v6, :cond_6

    if-nez v0, :cond_6

    iget v6, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->d:I

    mul-int/2addr v6, v1

    if-ge v4, v6, :cond_6

    .line 16
    iget-object v6, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    invoke-static {v6}, Lcom/dspread/xpos/bt2mode/dbridge/b;->a(Lcom/dspread/xpos/bt2mode/dbridge/b;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 17
    invoke-virtual {v7}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_2

    .line 22
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    sget-object v5, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    .line 23
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;)V

    .line 24
    const-string v0, "BluetoothDBridgeConnManager"

    const-string v5, "device bonded."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v5, v3

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    const/16 v8, 0xb

    const-wide/16 v9, 0x1f4

    if-ne v7, v8, :cond_3

    .line 26
    iget-object v6, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    sget-object v7, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    .line 27
    invoke-virtual {v6, v7}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;)V

    .line 29
    :try_start_0
    const-string v6, "BluetoothDBridgeConnManager"

    const-string v7, "bonding ..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1

    .line 34
    :cond_3
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_5

    if-nez v5, :cond_4

    .line 37
    :try_start_1
    const-string v6, "BluetoothDBridgeConnManager"

    const-string/jumbo v7, "start bond device"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v6, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 40
    :try_start_2
    iget-object v5, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    sget-object v6, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    .line 41
    invoke-virtual {v5, v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 49
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v5, v2

    goto :goto_1

    .line 30
    :catch_1
    move-exception v5

    move v5, v2

    goto :goto_1

    .line 52
    :catch_2
    move-exception v5

    move v5, v2

    goto :goto_1

    .line 50
    :cond_4
    :try_start_4
    const-string v6, "BluetoothDBridgeConnManager"

    const-string v7, "bond failed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v6, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    sget-object v7, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDFAILED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    .line 52
    invoke-virtual {v6, v7}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v6

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 66
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v5, :cond_8

    .line 67
    iget-boolean v6, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->e:Z

    if-eqz v6, :cond_7

    .line 68
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BOND_CANCLED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    .line 69
    invoke-virtual {v5, v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;)V

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    .line 70
    iget v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->d:I

    if-lt v4, v0, :cond_8

    .line 71
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BOND_OVERTIME:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    .line 72
    invoke-virtual {v5, v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;)V

    :cond_8
    :goto_3
    nop

    .line 83
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b;->b(Lcom/dspread/xpos/bt2mode/dbridge/b;)Z

    move-result v0

    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->e:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 85
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v0

    sget-object v7, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    .line 86
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    move v8, v2

    move-object v7, v6

    .line 89
    :cond_9
    :try_start_5
    iget-object v9, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move v8, v3

    move v10, v8

    goto :goto_5

    :catch_4
    move-exception v7

    .line 93
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 94
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-ne v0, v2, :cond_b

    .line 96
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to connect() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "BluetoothDBridgeConnManager"

    invoke-static {v12, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    if-eqz v10, :cond_c

    if-ne v0, v1, :cond_c

    .line 100
    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception v7

    :cond_c
    :goto_4
    move-object v7, v9

    :goto_5
    if-nez v10, :cond_d

    :goto_6
    goto :goto_7

    :cond_d
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_9

    goto :goto_6

    .line 110
    :goto_7
    move v2, v8

    goto :goto_8

    :cond_e
    const-string v7, "bond failed"

    :goto_8
    if-eqz v2, :cond_f

    .line 116
    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    .line 120
    :goto_9
    :try_start_8
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_b

    .line 122
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to close() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " socket during connection failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDBridgeConnManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_b
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-static {v0, v1, v7}, Lcom/dspread/xpos/bt2mode/dbridge/b;->a(Lcom/dspread/xpos/bt2mode/dbridge/b;Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_f
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    monitor-enter v0

    .line 132
    :try_start_9
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    invoke-static {v1, v6}, Lcom/dspread/xpos/bt2mode/dbridge/b;->a(Lcom/dspread/xpos/bt2mode/dbridge/b;Lcom/dspread/xpos/bt2mode/dbridge/b$a;)Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    .line 133
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 135
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v0, :cond_10

    .line 136
    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->DIRECTION_FORWARD:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    .line 137
    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;)V

    .line 138
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->l()V

    .line 140
    :cond_10
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->f:Lcom/dspread/xpos/bt2mode/dbridge/b;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b;->c(Lcom/dspread/xpos/bt2mode/dbridge/b;)Lcom/dspread/xpos/bt2mode/dbridge/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->a:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/f;->a(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;)V

    return-void

    :catchall_0
    move-exception v1

    .line 141
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v1
.end method
