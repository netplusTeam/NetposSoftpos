.class Lcom/dspread/xpos/d$c;
.super Ljava/lang/Thread;
.source "BlueToothConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/bluetooth/BluetoothSocket;

.field private final b:Landroid/bluetooth/BluetoothDevice;

.field final synthetic c:Lcom/dspread/xpos/d;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/d;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/d$c;->c:Lcom/dspread/xpos/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dspread/xpos/d$c;->b:Landroid/bluetooth/BluetoothDevice;

    .line 8
    :try_start_0
    invoke-static {}, Lcom/dspread/xpos/d;->d()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-object p1, p0, Lcom/dspread/xpos/d$c;->a:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/d$c;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    const-string v0, "BEGIN mConnectThread"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 2
    const-string v0, "ConnectThread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dspread/xpos/d;->e()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/d$c;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iget-object v0, p0, Lcom/dspread/xpos/d$c;->c:Lcom/dspread/xpos/d;

    monitor-enter v0

    .line 27
    :try_start_1
    iget-object v1, p0, Lcom/dspread/xpos/d$c;->c:Lcom/dspread/xpos/d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/dspread/xpos/d;->a(Lcom/dspread/xpos/d;Lcom/dspread/xpos/d$c;)Lcom/dspread/xpos/d$c;

    .line 28
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/dspread/xpos/d$c;->c:Lcom/dspread/xpos/d;

    iget-object v1, p0, Lcom/dspread/xpos/d$c;->a:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/dspread/xpos/d$c;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/d;->a(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :catchall_0
    move-exception v1

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .line 33
    iget-object v0, p0, Lcom/dspread/xpos/d$c;->c:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->g(Lcom/dspread/xpos/d;)V

    .line 36
    :try_start_3
    iget-object v0, p0, Lcom/dspread/xpos/d$c;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
