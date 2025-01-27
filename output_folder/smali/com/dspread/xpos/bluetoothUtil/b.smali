.class public Lcom/dspread/xpos/bluetoothUtil/b;
.super Ljava/lang/Thread;
.source "BluetoothCommunThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bluetoothUtil/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/bluetooth/BluetoothSocket;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;

.field public volatile d:Z

.field private e:Lcom/dspread/xpos/bluetoothUtil/b$a;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bluetoothUtil/b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z

    .line 11
    iput-object p1, p0, Lcom/dspread/xpos/bluetoothUtil/b;->a:Landroid/bluetooth/BluetoothSocket;

    .line 12
    iput-object p2, p0, Lcom/dspread/xpos/bluetoothUtil/b;->e:Lcom/dspread/xpos/bluetoothUtil/b$a;

    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/bluetoothUtil/b;->c:Ljava/io/OutputStream;

    .line 15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/bluetoothUtil/b;->b:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 18
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 24
    :goto_0
    sget-object p1, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {p1}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/b;->b:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :goto_0
    iput-object v1, p0, Lcom/dspread/xpos/bluetoothUtil/b;->b:Ljava/io/InputStream;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/b;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 18
    :goto_1
    iput-object v1, p0, Lcom/dspread/xpos/bluetoothUtil/b;->c:Ljava/io/OutputStream;

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/b;->a:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    .line 22
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 26
    :goto_2
    iput-object v1, p0, Lcom/dspread/xpos/bluetoothUtil/b;->a:Landroid/bluetooth/BluetoothSocket;

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/b;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    :goto_0
    const/16 v0, 0x400

    .line 1
    new-array v0, v0, [B

    .line 3
    iget-boolean v1, p0, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/dspread/xpos/bluetoothUtil/b;->a()V

    return-void

    .line 28
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/bluetoothUtil/b;->b:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 30
    iget-object v2, p0, Lcom/dspread/xpos/bluetoothUtil/b;->e:Lcom/dspread/xpos/bluetoothUtil/b$a;

    invoke-interface {v2, v0, v1}, Lcom/dspread/xpos/bluetoothUtil/b$a;->a([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v0}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    .line 38
    iget-object v1, p0, Lcom/dspread/xpos/bluetoothUtil/b;->e:Lcom/dspread/xpos/bluetoothUtil/b$a;

    invoke-interface {v1, v0}, Lcom/dspread/xpos/bluetoothUtil/b$a;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    return-void
.end method
