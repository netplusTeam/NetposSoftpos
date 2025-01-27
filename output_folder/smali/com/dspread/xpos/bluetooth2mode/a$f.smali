.class Lcom/dspread/xpos/bluetooth2mode/a$f;
.super Ljava/lang/Object;
.source "BluetoothConnModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bluetooth2mode/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/bluetooth/BluetoothSocket;

.field private final b:Landroid/bluetooth/BluetoothDevice;

.field private c:Ljava/lang/Thread;

.field final synthetic d:Lcom/dspread/xpos/bluetooth2mode/a;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->d:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->c:Ljava/lang/Thread;

    .line 7
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->c:Ljava/lang/Thread;

    .line 8
    const-string v1, "BluetoothConnModel[SocketThread] Enter these server sockets"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->b:Landroid/bluetooth/BluetoothDevice;

    .line 11
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->c(Lcom/dspread/xpos/bluetooth2mode/a;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->c(Lcom/dspread/xpos/bluetooth2mode/a;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    const-wide/16 v1, 0xc8

    .line 14
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 23
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->e(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    move-result-object v1

    sget-object v2, Lcom/dspread/xpos/QPOSService$BTCONNTYPE;->AUTO:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "+++++++++++++++++++android  ---"

    if-ne v1, v2, :cond_4

    .line 24
    :try_start_2
    const-string v1, "+++++++++++++++++++BTCONNTYPE.AUTO"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++++++++++++++auto api  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->d(Lcom/dspread/xpos/bluetooth2mode/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    .line 30
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->d(Lcom/dspread/xpos/bluetooth2mode/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    .line 34
    :cond_2
    const-string p1, "+++++++++++++++++++other device  ---"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    .line 38
    :cond_3
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    .line 41
    :cond_4
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->e(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    move-result-object v1

    sget-object v2, Lcom/dspread/xpos/QPOSService$BTCONNTYPE;->OLDAPI:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    if-ne v1, v2, :cond_5

    .line 42
    const-string p1, "+++++++++++++++++++BTCONNTYPE.OLDAPI"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    .line 44
    :cond_5
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->e(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    move-result-object v1

    sget-object v2, Lcom/dspread/xpos/QPOSService$BTCONNTYPE;->NEWAPI:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    if-ne v1, v2, :cond_7

    .line 45
    const-string v1, "+++++++++++++++++++BTCONNTYPE.NEWAPI"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->d(Lcom/dspread/xpos/bluetooth2mode/a;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 47
    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    .line 50
    :cond_6
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    move-object v0, p1

    .line 26
    :goto_1
    goto :goto_2

    .line 54
    :cond_7
    const-string p1, "+++++++++++++++++++BTCONNTYPE ERROR"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 62
    :goto_2
    const-string p1, "BluetoothConnModel[SocketThread] Constructure: Get a BluetoothSocket for a connection, create Rfcomm"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothConnModelcreate() failed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 67
    :goto_3
    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->a:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothConnModelBEGIN SocketThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 14
    const-string v1, "BluetoothConnModel"

    const-string v2, "[SocketThread] Return a successful connection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->d:Lcom/dspread/xpos/bluetooth2mode/a;

    monitor-enter v1

    .line 49
    :try_start_1
    iget-object v2, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->d:Lcom/dspread/xpos/bluetooth2mode/a;

    iget-object v3, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Landroid/bluetooth/BluetoothSocket;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothConnModel[SocketThread] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is connected."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 52
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->c:Ljava/lang/Thread;

    .line 55
    const-string v0, "BluetoothConnModelEND mConnectThread"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    .line 57
    iget-object v2, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->d:Lcom/dspread/xpos/bluetooth2mode/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to connect device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->b:Landroid/bluetooth/BluetoothDevice;

    .line 58
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/a;Ljava/lang/String;)V

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothConnModel[SocketThread] Connection failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 65
    :try_start_3
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 67
    const-string v1, "BluetoothConnModel[SocketThread] Connect fail, close the client socket"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothConnModelunable to close() socket during connection failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothConnModelunable to close() socket during connection failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :goto_0
    nop

    .line 93
    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$f;->c:Ljava/lang/Thread;

    .line 94
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    invoke-static {v0}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    return-void
.end method
