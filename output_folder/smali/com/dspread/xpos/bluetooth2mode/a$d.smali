.class public Lcom/dspread/xpos/bluetooth2mode/a$d;
.super Lcom/dspread/xpos/bluetooth2mode/a$b;
.source "BluetoothConnModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bluetooth2mode/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private f:Ljava/lang/String;

.field final synthetic g:Lcom/dspread/xpos/bluetooth2mode/a;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a$d;->g:Lcom/dspread/xpos/bluetooth2mode/a;

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dspread/xpos/bluetooth2mode/a$b;-><init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bluetooth2mode/a$a;)V

    .line 4
    iput-object p3, p0, Lcom/dspread/xpos/bluetooth2mode/a$d;->f:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SendFileThread Create: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothConnModel"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;Lcom/dspread/xpos/bluetooth2mode/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/bluetooth2mode/a$d;-><init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-string v0, "BluetoothConnModel"

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/dspread/xpos/bluetooth2mode/a$d;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/dspread/xpos/bluetooth2mode/a$d;->g:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-static {v4}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    move-result-object v4

    iget-object v5, p0, Lcom/dspread/xpos/bluetooth2mode/a$d;->g:Lcom/dspread/xpos/bluetooth2mode/a;

    iget-object v5, v5, Lcom/dspread/xpos/bluetooth2mode/a;->n:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4, v5}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->b(Landroid/bluetooth/BluetoothSocket;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-direct {v6, v3, v4, v5, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 21
    invoke-virtual {p0, v6}, Lcom/dspread/xpos/bluetooth2mode/a$b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    const-string v4, "[send file]write OK"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26
    const-string v2, "[SendFile] Exception during send file"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception v1

    .line 27
    const-string v1, "Exception during new FileInputStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
