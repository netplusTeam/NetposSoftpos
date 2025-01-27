.class Lcom/dspread/xpos/d$d;
.super Ljava/lang/Thread;
.source "BlueToothConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/bluetooth/BluetoothSocket;

.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/io/OutputStream;

.field final synthetic d:Lcom/dspread/xpos/d;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/d;Landroid/bluetooth/BluetoothSocket;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/d$d;->d:Lcom/dspread/xpos/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    const-string v0, "create ConnectedThread"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/dspread/xpos/d$d;->a:Landroid/bluetooth/BluetoothSocket;

    .line 9
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 12
    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v0

    :goto_0
    invoke-static {p2}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/Exception;)V

    .line 13
    invoke-static {p1}, Lcom/dspread/xpos/d;->c(Lcom/dspread/xpos/d;)V

    .line 16
    :goto_1
    iput-object v1, p0, Lcom/dspread/xpos/d$d;->b:Ljava/io/InputStream;

    .line 17
    iput-object v0, p0, Lcom/dspread/xpos/d$d;->c:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/d$d;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/Exception;)V

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/d$d;->d:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->c(Lcom/dspread/xpos/d;)V

    :goto_0
    return-void
.end method

.method public a([B)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/d$d;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/d$d;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/Exception;)V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/d$d;->d:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->c(Lcom/dspread/xpos/d;)V

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRITE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    const-string v0, "BEGIN mConnectedThread"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    :goto_0
    nop

    .line 31
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/d$d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 36
    const-string v1, "mmInStream.read() IOException <<<"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v1, v0

    :goto_1
    if-ne v1, v0, :cond_0

    .line 48
    const-string v0, "mmInStream.read() connectionLost <<<"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/dspread/xpos/d$d;->d:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->c(Lcom/dspread/xpos/d;)V

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/d$d;->d:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->d(Lcom/dspread/xpos/d;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
