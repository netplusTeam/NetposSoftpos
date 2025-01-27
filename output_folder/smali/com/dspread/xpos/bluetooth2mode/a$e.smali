.class Lcom/dspread/xpos/bluetooth2mode/a$e;
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
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/bluetooth/BluetoothServerSocket;

.field private b:Ljava/lang/Thread;

.field private c:Z

.field final synthetic d:Lcom/dspread/xpos/bluetooth2mode/a;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/bluetooth2mode/a;Z)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->d:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->a:Landroid/bluetooth/BluetoothServerSocket;

    .line 3
    iput-object p2, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->b:Ljava/lang/Thread;

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->c:Z

    .line 9
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->b:Ljava/lang/Thread;

    .line 13
    :try_start_0
    const-string v1, "BluetoothConnModel[ServerSocketThread] Enter the listen server socket"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->c(Lcom/dspread/xpos/bluetooth2mode/a;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const-string v2, "BluetoothConn"

    .line 24
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->a()Ljava/util/UUID;

    move-result-object v3

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothConnModel[ServerSocketThread] serverSocket hash code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->c:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, p2

    .line 40
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothConnModel[ServerSocketThread] Constructure: listen() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 47
    const-string v2, "Listen failed. Restart application again"

    invoke-static {p1, v2}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/a;Ljava/lang/String;)V

    .line 48
    iput-boolean v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->c:Z

    .line 49
    invoke-static {p1, p2}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/a;Lcom/dspread/xpos/bluetooth2mode/a$e;)Lcom/dspread/xpos/bluetooth2mode/a$e;

    .line 52
    :goto_1
    iput-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->a:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothConnModel[ServerSocketThread] serverSocket name = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothConnModel[ServerSocketThread] disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothConnModel[ServerSocketThread] disconnect serverSocket name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->a:Landroid/bluetooth/BluetoothServerSocket;

    .line 5
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->a:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 10
    const-string v0, "BluetoothConnModel[ServerSocketThread] mmServerSocket is closed."

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothConnModelclose() of server failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothConnModelBEGIN ServerSocketThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->c:Z

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    const-string v0, "BluetoothConnModel[ServerSocketThread] Enter while loop"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothConnModel[ServerSocketThread] serverSocket hash code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->a:Landroid/bluetooth/BluetoothServerSocket;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->a:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 15
    const-string v1, "BluetoothConnModel[ServerSocketThread] Got client socket"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->d:Lcom/dspread/xpos/bluetooth2mode/a;

    monitor-enter v1

    .line 23
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothConnModel[ServerSocketThread] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 24
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is connected."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->d:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Landroid/bluetooth/BluetoothSocket;)V

    .line 33
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->d:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/a;->b()V

    .line 34
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothConnModelaccept() failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    const-string v0, "BluetoothConnModel[ServerSocketThread] break from while"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$e;->d:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-static {v0}, Lcom/dspread/xpos/bluetooth2mode/a;->d(Lcom/dspread/xpos/bluetooth2mode/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Z)V

    return-void
.end method
