.class public Lcom/dspread/xpos/bluetooth2mode/a$b;
.super Ljava/lang/Object;
.source "BluetoothConnModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bluetooth2mode/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/io/OutputStream;

.field private c:Ljava/lang/Thread;

.field private d:Z

.field final synthetic e:Lcom/dspread/xpos/bluetooth2mode/a;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothSocket;)V
    .locals 4

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->c:Ljava/lang/Thread;

    .line 4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->d:Z

    .line 7
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->c:Ljava/lang/Thread;

    .line 8
    iput-object p2, p1, Lcom/dspread/xpos/bluetooth2mode/a;->n:Landroid/bluetooth/BluetoothSocket;

    .line 13
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 15
    const-string p2, "BluetoothConnModel[ConnectedThread] Constructure: Set up bluetooth socket i/o stream"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 18
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothConnModel[ConnectedThread] temp sockets not created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-static {p2}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 24
    :goto_1
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->a:Ljava/io/InputStream;

    .line 25
    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->b:Ljava/io/OutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bluetooth2mode/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/bluetooth2mode/a$b;-><init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->c(Lcom/dspread/xpos/bluetooth2mode/a;I)I

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->b:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 10
    const-string v0, "BluetoothConnModel"

    const-string v1, "[ConnectedThread] Exception during write"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    sget-object p1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->NOCONNECT:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    .line 15
    iget-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    iget-object v0, v0, Lcom/dspread/xpos/bluetooth2mode/a;->n:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->c(Landroid/bluetooth/BluetoothSocket;)V

    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothConnModelBEGIN ConnectedThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/a;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Lcom/dspread/xpos/bluetooth2mode/a;I)I

    .line 4
    const-string v0, "BluetoothConnModel================read start=================="

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    invoke-static {v0}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-static {v0}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    iget-object v2, v2, Lcom/dspread/xpos/bluetooth2mode/a;->n:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->b(Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 27
    const/16 v0, 0x400

    :try_start_1
    new-array v2, v0, [B

    .line 29
    const-string v3, "BluetoothConnModel>>>>>>>>>>>read start >>>>>>>>>>>>>>>>>"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 30
    iget-object v3, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->a:Ljava/io/InputStream;

    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 31
    const-string v3, "BluetoothConnModel>>>>>>>>>>>read end >>>>>>>>>>>>>>>>>"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-static {v3}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/bluetooth2mode/a$c;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/dspread/xpos/bluetooth2mode/a$c;->a([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    invoke-static {v1}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    .line 39
    const-string v1, "BluetoothConnModel"

    const-string v2, "[ConnectedThread] connection lost"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    iget-object v1, v0, Lcom/dspread/xpos/bluetooth2mode/a;->n:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Landroid/bluetooth/BluetoothSocket;)V

    .line 44
    const-string v0, "BluetoothConnModel[ConnectedThread] disconnect the socket"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during available()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/a;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    invoke-static {v1}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    .line 51
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a$b;->e:Lcom/dspread/xpos/bluetooth2mode/a;

    iget-object v2, v1, Lcom/dspread/xpos/bluetooth2mode/a;->n:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Landroid/bluetooth/BluetoothSocket;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothConnModelException during available()\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
