.class public Lcom/dspread/xpos/r0;
.super Lcom/dspread/xpos/Vpos;
.source "VPosBluetooth_VER2.java"

# interfaces
.implements Lcom/dspread/xpos/bt2mode/dbridge/a$b;


# static fields
.field private static d0:Lcom/dspread/xpos/r0; = null

.field private static final e0:I = 0x2800


# instance fields
.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Z

.field private S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

.field private T:Lcom/dspread/xpos/bt2mode/dbridge/a;

.field private U:Z

.field private V:Ljava/lang/Object;

.field private W:Z

.field private X:I

.field private Y:Lcom/dspread/xpos/QPOSService;

.field private Z:Landroid/content/Context;

.field private a0:Z

.field private b0:[B

.field private c0:I


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
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/r0;->P:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    .line 4
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->R:Z

    .line 5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 6
    iput-object v1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    .line 7
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->U:Z

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dspread/xpos/r0;->V:Ljava/lang/Object;

    .line 10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/r0;->W:Z

    .line 11
    const/16 v1, 0x14

    iput v1, p0, Lcom/dspread/xpos/r0;->X:I

    .line 127
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->a0:Z

    .line 320
    const/16 v1, 0x2800

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/r0;->b0:[B

    .line 321
    iput v0, p0, Lcom/dspread/xpos/r0;->c0:I

    return-void
.end method

.method private F()V
    .locals 2

    .line 1
    const-string v0, ">>>>>>>>>>>>disconnectbt"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

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
    iget-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    iget-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;)V

    .line 12
    const-string v0, "disconnect bt success "

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    const-wide/16 v0, 0x12c

    .line 15
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_1
    :goto_1
    return-void
.end method

.method public static G()Lcom/dspread/xpos/r0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/r0;->d0:Lcom/dspread/xpos/r0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/r0;

    invoke-direct {v0}, Lcom/dspread/xpos/r0;-><init>()V

    sput-object v0, Lcom/dspread/xpos/r0;->d0:Lcom/dspread/xpos/r0;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/r0;->d0:Lcom/dspread/xpos/r0;

    return-object v0
.end method

.method private I()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/r0;->R:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move v2, v0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v3, :cond_8

    .line 13
    invoke-virtual {v3}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 14
    invoke-virtual {v3}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    iget v3, p0, Lcom/dspread/xpos/r0;->c0:I

    if-lez v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 21
    new-array v2, v3, [B

    .line 22
    iget-object v4, p0, Lcom/dspread/xpos/r0;->b0:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_6

    .line 27
    iget-object v2, p0, Lcom/dspread/xpos/r0;->b0:[B

    aget-byte v4, v2, v0

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    .line 31
    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit16 v4, v4, 0x100

    :cond_4
    const/4 v5, 0x1

    .line 35
    aget-byte v5, v2, v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    if-ne v4, v3, :cond_5

    .line 39
    new-array v1, v3, [B

    .line 40
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_5
    if-ge v4, v3, :cond_6

    goto :goto_2

    .line 49
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 50
    const-string v1, "VPosBluetooth_IVT: read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 51
    new-array v1, v0, [B

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_0

    .line 52
    :cond_8
    :goto_1
    const-string v2, "VPosBluetooth_IVT: read >> is not connected"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 95
    new-array v1, v0, [B

    :goto_2
    return-object v1
.end method

.method private J()[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/r0;->R:Z

    if-nez v2, :cond_0

    .line 4
    const-string v2, "Read:!isWrite"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x2

    .line 7
    new-array v3, v2, [B

    move v4, v0

    .line 11
    :cond_1
    iget-object v5, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v5, :cond_d

    .line 13
    invoke-virtual {v5}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v5

    sget-object v6, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 14
    invoke-virtual {v5}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 19
    new-array v0, v0, [B

    return-object v0

    .line 22
    :cond_3
    iget v5, p0, Lcom/dspread/xpos/r0;->c0:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_8

    .line 23
    iget-object v4, p0, Lcom/dspread/xpos/r0;->b0:[B

    aget-byte v5, v4, v0

    const/16 v6, 0x44

    if-eq v5, v6, :cond_4

    .line 24
    const-string v1, "head[0] != \'D\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    new-array v0, v0, [B

    return-object v0

    :cond_4
    nop

    .line 28
    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x50

    if-eq v4, v5, :cond_5

    .line 29
    const-string v1, "head[1] != \'P\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 30
    new-array v0, v0, [B

    return-object v0

    :cond_5
    const/4 v4, 0x4

    move v5, v0

    :goto_0
    if-ge v5, v2, :cond_7

    .line 35
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 36
    const-string/jumbo v1, "\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f66"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 37
    new-array v0, v0, [B

    return-object v0

    .line 39
    :cond_6
    iget-object v6, p0, Lcom/dspread/xpos/r0;->b0:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    aput-byte v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_0

    .line 41
    :cond_7
    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    .line 45
    :cond_8
    iget v5, p0, Lcom/dspread/xpos/r0;->c0:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_9

    if-nez v4, :cond_1

    :cond_9
    add-int/lit8 v6, v4, 0xc

    if-ne v5, v6, :cond_1

    .line 49
    new-array v1, v6, [B

    .line 50
    iget-object v2, p0, Lcom/dspread/xpos/r0;->b0:[B

    invoke-static {v2, v0, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v2, v0

    move v3, v2

    :goto_1
    const/16 v4, 0xb

    if-ge v2, v6, :cond_b

    if-eq v2, v4, :cond_a

    .line 56
    aget-byte v4, v1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crc: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", check: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 62
    aget-byte v2, v1, v4

    if-eq v3, v2, :cond_c

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------crc error------------- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 64
    new-array v0, v0, [B

    return-object v0

    :cond_c
    return-object v1

    .line 65
    :cond_d
    :goto_2
    const-string v2, "VPosBluetooth_IVT: read >> is not connected"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 125
    new-array v1, v0, [B

    :goto_3
    return-object v1
.end method


# virtual methods
.method public A()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPosBluetooth_IVT: open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dspread/xpos/r0;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/r0;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/dspread/xpos/r0;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-nez v1, :cond_1

    .line 9
    const-string v1, "VPosBluetooth_IVT: mAdapter is null"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-nez v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/dspread/xpos/r0;->P:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Ljava/lang/String;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 18
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPosBluetooth_IVT: open state isOpen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dspread/xpos/r0;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mSelectedDevice.isConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 20
    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    iget-boolean v1, p0, Lcom/dspread/xpos/r0;->Q:Z

    if-nez v1, :cond_3

    .line 26
    const-string v1, "VPosBluetooth_IVT: ___________registerDataReceiver"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {v1, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 31
    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    const-string v0, "VPosBluetooth_IVT: is connet----------------------"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 33
    iput-boolean v3, p0, Lcom/dspread/xpos/r0;->Q:Z

    return v3

    .line 37
    :cond_4
    iget-object v1, p0, Lcom/dspread/xpos/r0;->V:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    .line 39
    iput-boolean v3, p0, Lcom/dspread/xpos/r0;->U:Z

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 42
    iget-object v1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/a;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    iget-object v1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->s()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Z)V

    .line 44
    iget-object v1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    iget-object v2, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    iget v4, p0, Lcom/dspread/xpos/r0;->X:I

    invoke-virtual {v1, v2, v4}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 46
    iget-object v1, p0, Lcom/dspread/xpos/r0;->V:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_1
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->U:Z

    .line 48
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 51
    :cond_5
    iget-object v2, p0, Lcom/dspread/xpos/r0;->V:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_2
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->U:Z

    .line 53
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :cond_6
    :goto_0
    iget-boolean v1, p0, Lcom/dspread/xpos/r0;->U:Z

    if-eqz v1, :cond_14

    .line 60
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->a0:Z

    .line 61
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->s()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v0

    .line 63
    :cond_7
    iget-object v2, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_8

    if-nez v1, :cond_c

    .line 65
    iget-object v1, p0, Lcom/dspread/xpos/r0;->Y:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->w1()V

    move v1, v3

    goto :goto_1

    .line 69
    :cond_8
    iget-object v2, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_9

    .line 70
    iput-boolean v3, p0, Lcom/dspread/xpos/r0;->a0:Z

    .line 71
    iget-object v1, p0, Lcom/dspread/xpos/r0;->Y:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->v1()V

    goto :goto_2

    .line 73
    :cond_9
    iget-object v2, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDFAILED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_a

    .line 74
    iget-object v1, p0, Lcom/dspread/xpos/r0;->Y:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->t1()V

    goto :goto_2

    .line 76
    :cond_a
    iget-object v2, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BOND_OVERTIME:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_b

    .line 77
    iget-object v1, p0, Lcom/dspread/xpos/r0;->Y:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->u1()V

    goto :goto_2

    .line 79
    :cond_b
    iget-object v2, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDNONE:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_c

    .line 80
    iget-object v1, p0, Lcom/dspread/xpos/r0;->Y:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->t1()V

    goto :goto_2

    .line 83
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 84
    iget-object v1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a()V

    .line 89
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedDevice.getBondStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 90
    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v1

    sget-object v2, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-eq v1, v2, :cond_e

    .line 95
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    .line 96
    iget-object v1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {v1, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    .line 97
    invoke-direct {p0}, Lcom/dspread/xpos/r0;->F()V

    return v0

    :cond_d
    nop

    .line 101
    iput-boolean v3, p0, Lcom/dspread/xpos/r0;->a0:Z

    .line 106
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPosBluetooth_IVT: mSelectedDevice.getConnectStatus() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 109
    invoke-virtual {v5}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    const/16 v4, 0x1e

    .line 114
    iput v4, p0, Lcom/dspread/xpos/r0;->X:I

    move v4, v0

    move v5, v4

    .line 116
    :goto_3
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 117
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    goto/16 :goto_6

    .line 121
    :cond_f
    iget-object v6, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v6

    sget-object v7, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTFAILED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-ne v6, v7, :cond_11

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect status =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 123
    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {v5}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    if-ne v4, v3, :cond_10

    .line 128
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    goto :goto_6

    :cond_10
    const-wide/16 v5, 0x5dc

    .line 133
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 137
    :goto_4
    iget-object v5, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    iget-object v6, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v5, v6}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;)Z

    add-int/lit8 v4, v4, 0x1

    move v5, v0

    .line 142
    :cond_11
    iget-object v6, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v6

    sget-object v7, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-ne v6, v7, :cond_12

    iget-object v6, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 143
    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>>>>>>>>connected time: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 148
    iput-boolean v3, p0, Lcom/dspread/xpos/r0;->Q:Z

    const-wide/16 v0, 0xc8

    .line 150
    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_12
    const-wide/16 v6, 0xa

    .line 158
    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v6

    :goto_5
    add-int/lit8 v6, v5, 0x1

    .line 163
    iget v7, p0, Lcom/dspread/xpos/r0;->X:I

    mul-int/lit8 v7, v7, 0x64

    if-lt v5, v7, :cond_13

    .line 164
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    .line 169
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>>connect end status =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 170
    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_7

    .line 163
    :cond_13
    move v5, v6

    goto/16 :goto_3

    .line 174
    :cond_14
    :goto_7
    iget-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    if-nez v0, :cond_15

    .line 175
    const-string v0, "VPosBluetooth_IVT:  is not open"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    .line 177
    invoke-direct {p0}, Lcom/dspread/xpos/r0;->F()V

    .line 179
    :cond_15
    iget-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    return v0

    :catchall_1
    move-exception v0

    .line 180
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 181
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 182
    :cond_16
    :goto_8
    const-string v1, "VPosBluetooth_IVT: bluetooth address is null"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0
.end method

.method public B()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/dspread/xpos/r0;->J()[B

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/dspread/xpos/r0;->I()[B

    move-result-object v0

    return-object v0
.end method

.method protected H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/r0;->a0:Z

    return v0
.end method

.method protected K()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/r0;->d0:Lcom/dspread/xpos/r0;

    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;[BI)V
    .locals 2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VPosBluetooth_IVT: onDataReceived>>len = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 11
    iget p1, p0, Lcom/dspread/xpos/r0;->c0:I

    add-int v0, p1, p3

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/dspread/xpos/r0;->b0:[B

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget p1, p0, Lcom/dspread/xpos/r0;->c0:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/dspread/xpos/r0;->c0:I

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-direct {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/dspread/xpos/r0;->Z:Landroid/content/Context;

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/r0;->Y:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method protected c()V
    .locals 3

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/r0;->c0:I

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/dspread/xpos/r0;->b0:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    .line 17
    invoke-direct {p0}, Lcom/dspread/xpos/r0;->F()V

    .line 18
    iput-object p1, p0, Lcom/dspread/xpos/r0;->P:Ljava/lang/String;

    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/dspread/xpos/r0;->P:Ljava/lang/String;

    .line 21
    :try_start_0
    iget-object p1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz p1, :cond_3

    .line 22
    iget-boolean v1, p0, Lcom/dspread/xpos/r0;->Q:Z

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p1, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    :cond_2
    nop

    .line 25
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    .line 26
    invoke-direct {p0}, Lcom/dspread/xpos/r0;->F()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPosBluetooth_IVT: close isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dspread/xpos/r0;->Q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/dspread/xpos/r0;->Q:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/r0;->V:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/dspread/xpos/r0;->Q:Z

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/r0;->V:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_1
    iput-boolean v1, p0, Lcom/dspread/xpos/r0;->Q:Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    const-wide/16 v0, 0x1f4

    .line 9
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method

.method protected f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dspread/xpos/r0;->X:I

    return-void
.end method

.method public f([B)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>>>>>>>>>>>>>.VPosBluetooth_VER2 write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 3
    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->R:Z

    .line 7
    iget-boolean v0, p0, Lcom/dspread/xpos/r0;->Q:Z

    if-nez v0, :cond_0

    .line 8
    const-string p1, "VPosBluetooth_IVT: BluetoothIBridgeDevice connected failed"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/r0;->c()V

    .line 13
    iget-object v0, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-ne v0, v1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/dspread/xpos/r0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    iget-object v1, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;[BI)V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/dspread/xpos/r0;->R:Z

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[write:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_1
    const-string p1, "VPosBluetooth_IVT: write error"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/r0;->P:Ljava/lang/String;

    return-object v0
.end method

.method protected h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/r0;->X:I

    return v0
.end method

.method protected k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v0

    sget-object v2, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/dspread/xpos/r0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 3
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :cond_1
    :goto_0
    return v1
.end method
