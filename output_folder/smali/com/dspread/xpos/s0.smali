.class public Lcom/dspread/xpos/s0;
.super Lcom/dspread/xpos/Vpos;
.source "VPosBluetooth_copyVer2.java"

# interfaces
.implements Lcom/dspread/xpos/bt2mode/dbridge/a$b;


# static fields
.field private static e0:Lcom/dspread/xpos/s0; = null

.field private static final f0:I = 0x2800


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

.field private Y:Z

.field private Z:Lcom/dspread/xpos/QPOSService;

.field private a0:Landroid/content/Context;

.field private b0:Z

.field private c0:[B

.field private d0:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/s0;->P:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->Q:Z

    .line 4
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->R:Z

    .line 5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 6
    iput-object v1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    .line 7
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->U:Z

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dspread/xpos/s0;->V:Ljava/lang/Object;

    .line 10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/s0;->W:Z

    .line 11
    const/16 v2, 0x14

    iput v2, p0, Lcom/dspread/xpos/s0;->X:I

    .line 12
    iput-boolean v1, p0, Lcom/dspread/xpos/s0;->Y:Z

    .line 106
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->b0:Z

    .line 286
    const/16 v1, 0x2800

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/s0;->c0:[B

    .line 287
    iput v0, p0, Lcom/dspread/xpos/s0;->d0:I

    return-void
.end method

.method private F()V
    .locals 2

    .line 1
    const-string v0, ">>>>>>>>>>>>disconnectbt"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x96

    .line 8
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    iget-object v1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;)V

    .line 13
    const-string v0, "disconnect bt success "

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    const-wide/16 v0, 0x12c

    .line 16
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

.method public static H()Lcom/dspread/xpos/s0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/s0;->e0:Lcom/dspread/xpos/s0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/s0;

    invoke-direct {v0}, Lcom/dspread/xpos/s0;-><init>()V

    sput-object v0, Lcom/dspread/xpos/s0;->e0:Lcom/dspread/xpos/s0;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/s0;->e0:Lcom/dspread/xpos/s0;

    return-object v0
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

    const-string v2, "VPosBluetooth_2mode: open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dspread/xpos/s0;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/s0;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/dspread/xpos/s0;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-nez v1, :cond_1

    .line 9
    const-string v1, "VPosBluetooth_2mode: mAdapter is null"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-nez v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/dspread/xpos/s0;->P:Ljava/lang/String;

    invoke-static {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Ljava/lang/String;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 17
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPosBluetooth_2mode: open state isOpen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dspread/xpos/s0;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mSelectedDevice.isConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 19
    iget-boolean v1, p0, Lcom/dspread/xpos/s0;->Q:Z

    if-nez v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {v1, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    const-string v0, "VPosBluetooth_2mode: is connet----------------------"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    iput-boolean v3, p0, Lcom/dspread/xpos/s0;->Q:Z

    return v3

    .line 29
    :cond_4
    iget-object v1, p0, Lcom/dspread/xpos/s0;->V:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->Q:Z

    .line 31
    iput-boolean v3, p0, Lcom/dspread/xpos/s0;->U:Z

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    iget-object v1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/a;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 35
    iget-object v1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    iget-boolean v2, p0, Lcom/dspread/xpos/s0;->Y:Z

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Z)V

    .line 36
    iget-object v1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    iget-object v2, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    iget v4, p0, Lcom/dspread/xpos/s0;->X:I

    invoke-virtual {v1, v2, v4}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 38
    iget-object v1, p0, Lcom/dspread/xpos/s0;->V:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_1
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->U:Z

    .line 40
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 43
    :cond_5
    iget-object v2, p0, Lcom/dspread/xpos/s0;->V:Ljava/lang/Object;

    monitor-enter v2

    .line 44
    :try_start_2
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->U:Z

    .line 45
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :cond_6
    :goto_0
    iget-boolean v1, p0, Lcom/dspread/xpos/s0;->U:Z

    if-eqz v1, :cond_14

    .line 52
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->b0:Z

    .line 53
    iget-boolean v1, p0, Lcom/dspread/xpos/s0;->Y:Z

    if-eqz v1, :cond_d

    move v1, v0

    .line 55
    :cond_7
    iget-object v2, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_8

    if-nez v1, :cond_c

    .line 57
    iget-object v1, p0, Lcom/dspread/xpos/s0;->Z:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->w1()V

    move v1, v3

    goto :goto_1

    .line 61
    :cond_8
    iget-object v2, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_9

    .line 62
    iput-boolean v3, p0, Lcom/dspread/xpos/s0;->b0:Z

    .line 63
    iget-object v1, p0, Lcom/dspread/xpos/s0;->Z:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->v1()V

    goto :goto_2

    .line 65
    :cond_9
    iget-object v2, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDFAILED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_a

    .line 66
    iget-object v1, p0, Lcom/dspread/xpos/s0;->Z:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->t1()V

    goto :goto_2

    .line 68
    :cond_a
    iget-object v2, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BOND_OVERTIME:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_b

    .line 69
    iget-object v1, p0, Lcom/dspread/xpos/s0;->Z:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->u1()V

    goto :goto_2

    .line 71
    :cond_b
    iget-object v2, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDNONE:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-ne v2, v4, :cond_c

    .line 72
    iget-object v1, p0, Lcom/dspread/xpos/s0;->Z:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->t1()V

    goto :goto_2

    .line 75
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    iget-object v1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a()V

    .line 81
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedDevice.getBondStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v1

    sget-object v2, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    if-eq v1, v2, :cond_e

    .line 84
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->Q:Z

    .line 85
    iget-object v1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-virtual {v1, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    .line 86
    invoke-direct {p0}, Lcom/dspread/xpos/s0;->F()V

    return v0

    :cond_d
    nop

    .line 90
    iput-boolean v3, p0, Lcom/dspread/xpos/s0;->b0:Z

    .line 94
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPosBluetooth_IVT: mSelectedDevice.getConnectStatus() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v5}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    const/16 v4, 0x1e

    .line 99
    iput v4, p0, Lcom/dspread/xpos/s0;->X:I

    move v4, v0

    move v5, v4

    .line 101
    :goto_3
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 102
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->Q:Z

    goto/16 :goto_6

    .line 105
    :cond_f
    iget-object v6, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v6

    sget-object v7, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTFAILED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-ne v6, v7, :cond_11

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect status =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    if-ne v4, v3, :cond_10

    .line 109
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->Q:Z

    goto :goto_6

    :cond_10
    const-wide/16 v5, 0x3e8

    .line 114
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 118
    :goto_4
    iget-object v5, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    iget-object v6, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v5, v6}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;)Z

    add-int/lit8 v4, v4, 0x1

    move v5, v0

    .line 123
    :cond_11
    iget-object v6, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    .line 124
    invoke-virtual {v6}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v6

    sget-object v7, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-ne v6, v7, :cond_12

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>>>>>>>>connected time: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 126
    iput-boolean v3, p0, Lcom/dspread/xpos/s0;->Q:Z

    const-wide/16 v0, 0xc8

    .line 128
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

    .line 136
    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v6

    :goto_5
    add-int/lit8 v6, v5, 0x1

    .line 140
    iget v7, p0, Lcom/dspread/xpos/s0;->X:I

    mul-int/lit8 v7, v7, 0x64

    if-lt v5, v7, :cond_13

    .line 141
    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->Q:Z

    goto :goto_6

    .line 140
    :cond_13
    move v5, v6

    goto/16 :goto_3

    .line 149
    :cond_14
    :goto_6
    iget-object v0, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz v0, :cond_15

    iget-boolean v1, p0, Lcom/dspread/xpos/s0;->Q:Z

    if-nez v1, :cond_15

    .line 150
    invoke-virtual {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    .line 151
    invoke-direct {p0}, Lcom/dspread/xpos/s0;->F()V

    .line 153
    :cond_15
    iget-boolean v0, p0, Lcom/dspread/xpos/s0;->Q:Z

    return v0

    :catchall_1
    move-exception v0

    .line 154
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 155
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 156
    :cond_16
    :goto_7
    const-string v1, "VPosBluetooth_2mode: bluetooth address is null"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0
.end method

.method public B()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/s0;->R:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move v2, v0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v3, :cond_8

    .line 12
    invoke-virtual {v3}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v3}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    iget v3, p0, Lcom/dspread/xpos/s0;->d0:I

    if-lez v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 19
    new-array v2, v3, [B

    .line 20
    iget-object v4, p0, Lcom/dspread/xpos/s0;->c0:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_6

    .line 25
    iget-object v2, p0, Lcom/dspread/xpos/s0;->c0:[B

    aget-byte v4, v2, v0

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    .line 28
    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit16 v4, v4, 0x100

    :cond_4
    const/4 v5, 0x1

    .line 32
    aget-byte v5, v2, v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    if-ne v4, v3, :cond_5

    .line 36
    new-array v1, v3, [B

    .line 37
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_5
    if-ge v4, v3, :cond_6

    goto :goto_2

    .line 43
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 44
    const-string v1, "VPosBluetooth_IVT: read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 45
    new-array v1, v0, [B

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_0

    .line 46
    :cond_8
    :goto_1
    const-string v2, "VPosBluetooth_IVT: read >> is not connected"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 85
    new-array v1, v0, [B

    :goto_2
    return-object v1
.end method

.method protected G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/s0;->Y:Z

    return v0
.end method

.method protected I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/s0;->b0:Z

    return v0
.end method

.method protected J()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/s0;->e0:Lcom/dspread/xpos/s0;

    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;[BI)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/dspread/xpos/s0;->d0:I

    add-int v0, p1, p3

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/s0;->c0:[B

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lcom/dspread/xpos/s0;->d0:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/dspread/xpos/s0;->d0:I

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/a;

    invoke-direct {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/dspread/xpos/s0;->a0:Landroid/content/Context;

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/s0;->Z:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method protected c()V
    .locals 3

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/s0;->d0:I

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/dspread/xpos/s0;->c0:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/dspread/xpos/s0;->F()V

    .line 17
    iput-object p1, p0, Lcom/dspread/xpos/s0;->P:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/dspread/xpos/s0;->P:Ljava/lang/String;

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz p1, :cond_3

    .line 21
    iget-boolean v0, p0, Lcom/dspread/xpos/s0;->Q:Z

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p1, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    :cond_2
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/dspread/xpos/s0;->Q:Z

    .line 25
    invoke-direct {p0}, Lcom/dspread/xpos/s0;->F()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    return-void
.end method

.method public d()V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPosBluetooth_IVT: close isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dspread/xpos/s0;->Q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/dspread/xpos/s0;->Q:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge/a;->b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/s0;->V:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lcom/dspread/xpos/s0;->Q:Z

    .line 9
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/s0;->V:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_1
    iput-boolean v1, p0, Lcom/dspread/xpos/s0;->Q:Z

    .line 13
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method protected d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/s0;->Y:Z

    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

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
    iput-object v0, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

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
    iput p1, p0, Lcom/dspread/xpos/s0;->X:I

    return-void
.end method

.method public f([B)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>>>>>>>>>>>>>.VPosBluetooth_2mode write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/s0;->R:Z

    .line 4
    iget-boolean v0, p0, Lcom/dspread/xpos/s0;->Q:Z

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/s0;->c()V

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/dspread/xpos/s0;->T:Lcom/dspread/xpos/bt2mode/dbridge/a;

    iget-object v1, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;[BI)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/dspread/xpos/s0;->R:Z

    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "VPosBluetooth_IVT: write error"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/s0;->P:Ljava/lang/String;

    return-object v0
.end method

.method protected h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/s0;->X:I

    return v0
.end method

.method protected k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->e()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    move-result-object v0

    sget-object v2, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/dspread/xpos/s0;->S:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
