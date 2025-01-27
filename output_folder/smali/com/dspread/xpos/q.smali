.class public Lcom/dspread/xpos/q;
.super Lcom/dspread/xpos/Vpos;
.source "CopyOfVPosUsb.java"


# static fields
.field private static T:Lcom/dspread/xpos/q;


# instance fields
.field public P:Landroid_serialport_api/SerialPort;

.field public Q:Ljava/io/InputStream;

.field public R:Ljava/io/OutputStream;

.field private S:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/q;->P:Landroid_serialport_api/SerialPort;

    .line 3
    iput-object v0, p0, Lcom/dspread/xpos/q;->Q:Ljava/io/InputStream;

    .line 4
    iput-object v0, p0, Lcom/dspread/xpos/q;->R:Ljava/io/OutputStream;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/q;->S:Z

    return-void
.end method

.method public static F()Lcom/dspread/xpos/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/q;->T:Lcom/dspread/xpos/q;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/q;

    invoke-direct {v0}, Lcom/dspread/xpos/q;-><init>()V

    sput-object v0, Lcom/dspread/xpos/q;->T:Lcom/dspread/xpos/q;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/q;->T:Lcom/dspread/xpos/q;

    return-object v0
.end method

.method private G()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Landroid_serialport_api/SerialPort;

    const/4 v2, 0x0

    const-string v3, "/system/xbin/su"

    new-instance v4, Ljava/io/File;

    const-string v1, "/dev/ttyACM0"

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v5, 0x1c200

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid_serialport_api/SerialPort;-><init>(ZLjava/lang/String;Ljava/io/File;II)V

    iput-object v7, p0, Lcom/dspread/xpos/q;->P:Landroid_serialport_api/SerialPort;

    .line 3
    invoke-virtual {v7}, Landroid_serialport_api/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/q;->Q:Ljava/io/InputStream;

    .line 4
    iget-object v1, p0, Lcom/dspread/xpos/q;->P:Landroid_serialport_api/SerialPort;

    invoke-virtual {v1}, Landroid_serialport_api/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/q;->R:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 11
    const-string v1, "[VPosUsb] SerialPort IOException"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception v1

    .line 12
    const-string v1, "[VPosUsb] SerialPort SecurityException"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0
.end method

.method private H()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    new-array v0, v2, [B

    return-object v0

    .line 10
    :cond_1
    iget-object v4, p0, Lcom/dspread/xpos/q;->Q:Ljava/io/InputStream;

    invoke-direct {p0, v4}, Lcom/dspread/xpos/q;->a(Ljava/io/InputStream;)B

    move-result v4

    aput-byte v4, v1, v3

    .line 11
    aget-byte v4, v1, v2

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 16
    aget-byte v3, v1, v3

    if-gez v3, :cond_3

    add-int/lit16 v3, v3, 0x100

    .line 21
    :cond_3
    const/4 v4, 0x1

    aget-byte v5, v1, v4

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x3

    .line 24
    new-array v4, v4, [B

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_5

    .line 27
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 28
    new-array v0, v2, [B

    return-object v0

    :cond_4
    add-int/lit8 v6, v5, 0x3

    .line 30
    iget-object v7, p0, Lcom/dspread/xpos/q;->Q:Ljava/io/InputStream;

    invoke-direct {p0, v7}, Lcom/dspread/xpos/q;->a(Ljava/io/InputStream;)B

    move-result v7

    aput-byte v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 33
    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method private a(Ljava/io/InputStream;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VPosUsb] readInputStream ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_0

    :cond_2
    int-to-byte p1, v0

    return p1
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/q;->S:Z

    if-eqz v0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/dspread/xpos/q;->G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dspread/xpos/q;->S:Z

    const-wide/16 v0, 0x3e8

    .line 7
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    :goto_0
    iget-boolean v0, p0, Lcom/dspread/xpos/q;->S:Z

    return v0
.end method

.method public B()[B
    .locals 3

    .line 1
    const-string v0, "[VPosUsb] read()"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/dspread/xpos/q;->H()[B

    move-result-object v0

    .line 6
    array-length v1, v0

    if-lez v1, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    const-string v1, "[VPosUsb] read frame failed"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    const-string/jumbo v1, "read IOException"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected I()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/q;->T:Lcom/dspread/xpos/q;

    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/q;->P:Landroid_serialport_api/SerialPort;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/q;->R:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    :goto_0
    iput-object v1, p0, Lcom/dspread/xpos/q;->R:Ljava/io/OutputStream;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/q;->Q:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 13
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 17
    :goto_1
    iput-object v1, p0, Lcom/dspread/xpos/q;->Q:Ljava/io/InputStream;

    .line 20
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/dspread/xpos/q;->P:Landroid_serialport_api/SerialPort;

    invoke-virtual {v0}, Landroid_serialport_api/SerialPort;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 24
    :goto_2
    iput-object v1, p0, Lcom/dspread/xpos/q;->P:Landroid_serialport_api/SerialPort;

    :cond_2
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/dspread/xpos/q;->S:Z

    return-void
.end method

.method protected e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/q;->d()V

    return-void
.end method

.method public f([B)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/q;->R:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/q;->R:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRITE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    const-string p1, "[VPosUsb] write IOException"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
