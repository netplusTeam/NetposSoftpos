.class Lcom/dspread/xpos/bt2mode/dbridge4/f;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"


# static fields
.field private static final i:Ljava/lang/String; = "IBridgeConnectedThread"

.field private static final j:I = 0x10000


# instance fields
.field private final a:Landroid/bluetooth/BluetoothSocket;

.field private final b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

.field private final c:Ljava/io/InputStream;

.field private final d:Ljava/io/OutputStream;

.field private final e:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bt2mode/dbridge4/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private g:[B

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Lcom/dspread/xpos/bt2mode/dbridge4/a$f;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothSocket;",
            "Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;",
            "Lcom/dspread/xpos/bt2mode/dbridge4/a$f;",
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bt2mode/dbridge4/a$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->h:Z

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create ConnectedThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v2, "IBridgeConnectedThread"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->a:Landroid/bluetooth/BluetoothSocket;

    .line 13
    iput-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    .line 17
    iput-object p3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->e:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    .line 18
    iput-object p4, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->f:Ljava/util/ArrayList;

    .line 19
    const/high16 p2, 0x10000

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->g:[B

    .line 21
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p3, p2

    .line 24
    :goto_0
    const-string/jumbo p4, "temp sockets not created"

    invoke-static {v2, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :goto_1
    iput-object p3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->c:Ljava/io/InputStream;

    .line 28
    iput-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->d:Ljava/io/OutputStream;

    .line 29
    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->h:Z

    return-void
.end method

.method static a(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 52
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    :cond_2
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->e:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10
    const-string v2, "exception"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->e:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    iget-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->h:Z

    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/f;->a(Landroid/bluetooth/BluetoothSocket;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->h:Z

    .line 37
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/f;->a(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method public a([BI)V
    .locals 3

    const/16 v0, 0x400

    .line 16
    :try_start_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->g:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "write data in Connections\'s ConnectionThread:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->d:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->g:[B

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 22
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->d:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->e:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->e:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    const-string p2, "Exception during write"

    invoke-static {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    .line 35
    const-string v0, "IBridgeConnectedThread"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public b()Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/dspread/xpos/bt2mode/dbridge4/f;

    if-nez v1, :cond_1

    return v0

    .line 5
    :cond_1
    check-cast p1, Lcom/dspread/xpos/bt2mode/dbridge4/f;

    .line 6
    iget-object p1, p1, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 9

    .line 1
    const-string v0, "IBridgeConnectedThread"

    const-string v1, "BEGIN mConnectedThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 5
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->c:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iput-object v1, v3, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->h:[B

    .line 7
    iput v2, v3, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->i:I

    .line 9
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 16
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dspread/xpos/bt2mode/dbridge4/a$d;

    .line 18
    iget-object v6, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->j()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 19
    iget-object v6, p0, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    iget-object v7, v6, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->h:[B

    iget v8, v6, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->i:I

    invoke-interface {v5, v6, v7, v8}, Lcom/dspread/xpos/bt2mode/dbridge4/a$d;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 25
    const-string v2, "disconnected"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/f;->a(Ljava/lang/String;)V

    return-void
.end method
