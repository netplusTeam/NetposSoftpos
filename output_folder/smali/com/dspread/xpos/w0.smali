.class public Lcom/dspread/xpos/w0;
.super Lcom/dspread/xpos/Vpos;
.source "VPosUsb.java"


# static fields
.field private static Z:Lcom/dspread/xpos/w0;


# instance fields
.field public P:Landroid_serialport_api/SerialPort;

.field public Q:Ljava/io/InputStream;

.field public R:Ljava/io/OutputStream;

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:[B

.field private V:I

.field private W:Z

.field private X:I

.field private Y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/w0;->P:Landroid_serialport_api/SerialPort;

    .line 3
    iput-object v0, p0, Lcom/dspread/xpos/w0;->Q:Ljava/io/InputStream;

    .line 4
    iput-object v0, p0, Lcom/dspread/xpos/w0;->R:Ljava/io/OutputStream;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/w0;->S:Z

    .line 6
    const-string v1, "/dev/ttyACM0"

    iput-object v1, p0, Lcom/dspread/xpos/w0;->T:Ljava/lang/String;

    .line 90
    const/16 v1, 0x800

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/w0;->U:[B

    .line 91
    iput v0, p0, Lcom/dspread/xpos/w0;->V:I

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/w0;->W:Z

    .line 93
    iput v0, p0, Lcom/dspread/xpos/w0;->X:I

    .line 286
    iput-boolean v0, p0, Lcom/dspread/xpos/w0;->Y:Z

    return-void
.end method

.method public static F()Lcom/dspread/xpos/w0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/w0;->Z:Lcom/dspread/xpos/w0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/w0;

    invoke-direct {v0}, Lcom/dspread/xpos/w0;-><init>()V

    sput-object v0, Lcom/dspread/xpos/w0;->Z:Lcom/dspread/xpos/w0;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/w0;->Z:Lcom/dspread/xpos/w0;

    return-object v0
.end method

.method private G()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Landroid_serialport_api/SerialPort;

    const/4 v2, 0x1

    const-string v3, "/system/xbin/su"

    new-instance v4, Ljava/io/File;

    iget-object v1, p0, Lcom/dspread/xpos/w0;->T:Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v5, 0x1c200

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid_serialport_api/SerialPort;-><init>(ZLjava/lang/String;Ljava/io/File;II)V

    iput-object v7, p0, Lcom/dspread/xpos/w0;->P:Landroid_serialport_api/SerialPort;

    .line 3
    invoke-virtual {v7}, Landroid_serialport_api/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/w0;->Q:Ljava/io/InputStream;

    .line 4
    iget-object v1, p0, Lcom/dspread/xpos/w0;->P:Landroid_serialport_api/SerialPort;

    invoke-virtual {v1}, Landroid_serialport_api/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/w0;->R:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 11
    const-string v1, "UART SerialPort IOException"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception v1

    .line 12
    const-string v1, "UART SerialPort SecurityException"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0
.end method

.method private H()[B
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/w0;->I()[B

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-string v0, "[VPosUsb] read need exit"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [B

    return-object v0

    .line 7
    :cond_0
    array-length v1, v0

    if-lez v1, :cond_1

    .line 8
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

    .line 10
    :cond_1
    const-string v1, "[VPosUsb] UART read frame failed"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private I()[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 6
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lcom/dspread/xpos/w0;->V:I

    if-lez v3, :cond_0

    .line 7
    iget v4, p0, Lcom/dspread/xpos/w0;->X:I

    if-eq v3, v4, :cond_0

    .line 8
    new-array v4, v3, [B

    .line 9
    iget-object v5, p0, Lcom/dspread/xpos/w0;->U:[B

    invoke-static {v5, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_0
    iput v3, p0, Lcom/dspread/xpos/w0;->X:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_4

    .line 13
    iget-object v4, p0, Lcom/dspread/xpos/w0;->U:[B

    aget-byte v5, v4, v0

    const/16 v6, 0x4d

    if-eq v5, v6, :cond_1

    .line 14
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 15
    new-array v0, v0, [B

    return-object v0

    :cond_1
    const/4 v5, 0x2

    .line 17
    aget-byte v5, v4, v5

    if-gez v5, :cond_2

    add-int/lit16 v5, v5, 0x100

    .line 21
    :cond_2
    aget-byte v6, v4, v2

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    if-ne v5, v3, :cond_3

    .line 25
    new-array v1, v3, [B

    .line 26
    invoke-static {v4, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_3
    if-ge v5, v3, :cond_4

    .line 29
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 30
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 35
    new-array v1, v0, [B

    .line 36
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    :cond_4
    return-object v1
.end method

.method private J()[B
    .locals 9

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [B

    .line 6
    iget v5, p0, Lcom/dspread/xpos/w0;->V:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_4

    .line 7
    iget-object v5, p0, Lcom/dspread/xpos/w0;->U:[B

    aget-byte v6, v5, v0

    const/16 v7, 0x44

    if-eq v6, v7, :cond_0

    .line 8
    const-string v1, "head[0] != \'D\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 10
    new-array v0, v0, [B

    return-object v0

    :cond_0
    nop

    .line 13
    aget-byte v5, v5, v2

    const/16 v6, 0x50

    if-eq v5, v6, :cond_1

    .line 14
    const-string v1, "head[1] != \'P\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 16
    new-array v0, v0, [B

    return-object v0

    :cond_1
    const/4 v5, 0x4

    move v6, v0

    :goto_0
    if-ge v6, v3, :cond_3

    .line 21
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 22
    const-string/jumbo v1, "\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f66"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 23
    new-array v0, v0, [B

    return-object v0

    .line 25
    :cond_2
    iget-object v7, p0, Lcom/dspread/xpos/w0;->U:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    aput-byte v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_0

    .line 27
    :cond_3
    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    goto :goto_1

    .line 6
    :cond_4
    move v3, v0

    .line 31
    :goto_1
    iget v4, p0, Lcom/dspread/xpos/w0;->V:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_5

    if-nez v3, :cond_9

    :cond_5
    add-int/lit8 v3, v3, 0xc

    if-ne v4, v3, :cond_9

    .line 35
    new-array v1, v3, [B

    .line 36
    iget-object v4, p0, Lcom/dspread/xpos/w0;->U:[B

    invoke-static {v4, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v4, v0

    move v5, v4

    :goto_2
    const/16 v6, 0xb

    if-ge v4, v3, :cond_7

    if-eq v4, v6, :cond_6

    .line 42
    aget-byte v6, v1, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 47
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", check: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 48
    aget-byte v3, v1, v6

    if-eq v5, v3, :cond_8

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------crc error------------- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 51
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_8
    return-object v1

    :catch_0
    move-exception v1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 61
    new-array v1, v0, [B

    :cond_9
    return-object v1
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/w0;->V:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 3
    new-array v1, v0, [B

    .line 5
    iput-boolean v0, p0, Lcom/dspread/xpos/w0;->W:Z

    .line 6
    iput v0, p0, Lcom/dspread/xpos/w0;->X:I

    .line 7
    :goto_0
    iget-boolean v2, p0, Lcom/dspread/xpos/w0;->W:Z

    if-nez v2, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    const/16 v1, 0x400

    new-array v3, v1, [B

    .line 12
    invoke-virtual {p1, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 13
    iget-object v4, p0, Lcom/dspread/xpos/w0;->U:[B

    iget v5, p0, Lcom/dspread/xpos/w0;->V:I

    invoke-static {v3, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v3, p0, Lcom/dspread/xpos/w0;->V:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/dspread/xpos/w0;->V:I

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", read_buf_len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dspread/xpos/w0;->V:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUpdate() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/dspread/xpos/w0;->J()[B

    move-result-object v1

    goto :goto_1

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/dspread/xpos/w0;->H()[B

    move-result-object v1

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 29
    array-length v2, v1

    if-lez v2, :cond_2

    return-object v1

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    const-wide/16 v2, 0xa

    .line 37
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/w0;->S:Z

    if-eqz v0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/dspread/xpos/w0;->G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dspread/xpos/w0;->S:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosUsb] open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dspread/xpos/w0;->S:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 12
    iget-boolean v0, p0, Lcom/dspread/xpos/w0;->S:Z

    return v0
.end method

.method public B()[B
    .locals 2

    .line 1
    const-string v0, "[VPosUsb] read"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/dspread/xpos/w0;->Y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "[VPosUsb] write error"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 4
    new-array v0, v1, [B

    return-object v0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/w0;->Q:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/dspread/xpos/w0;->a(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    new-array v0, v1, [B

    return-object v0
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/w0;->T:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const-string v0, "[VPosUsb] close"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 3
    iput-boolean v0, p0, Lcom/dspread/xpos/w0;->W:Z

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/w0;->P:Landroid_serialport_api/SerialPort;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/w0;->R:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    :goto_0
    iput-object v1, p0, Lcom/dspread/xpos/w0;->R:Ljava/io/OutputStream;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/w0;->Q:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 15
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    :goto_1
    iput-object v1, p0, Lcom/dspread/xpos/w0;->Q:Ljava/io/InputStream;

    .line 22
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/dspread/xpos/w0;->P:Landroid_serialport_api/SerialPort;

    invoke-virtual {v0}, Landroid_serialport_api/SerialPort;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 26
    :goto_2
    iput-object v1, p0, Lcom/dspread/xpos/w0;->P:Landroid_serialport_api/SerialPort;

    :cond_2
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/dspread/xpos/w0;->S:Z

    return-void
.end method

.method protected e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/w0;->d()V

    return-void
.end method

.method public f([B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/w0;->Y:Z

    .line 2
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/w0;->R:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/w0;->R:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosUsb] WRITE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dspread/xpos/w0;->Y:Z

    .line 8
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->o(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    const-string/jumbo p1, "write IOException"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/w0;->T:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
