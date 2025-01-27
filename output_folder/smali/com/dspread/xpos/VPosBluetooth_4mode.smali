.class public Lcom/dspread/xpos/VPosBluetooth_4mode;
.super Lcom/dspread/xpos/Vpos;
.source "VPosBluetooth_4mode.java"

# interfaces
.implements Lcom/dspread/xpos/bt2mode/dbridge4/a$d;
.implements Lcom/dspread/xpos/bt2mode/dbridge4/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;
    }
.end annotation


# static fields
.field private static X:Lcom/dspread/xpos/VPosBluetooth_4mode; = null

.field private static Y:Z = false

.field public static final Z:Ljava/lang/String; = "VPosBluetooth_4mod"

.field private static final a0:I = 0x2800


# instance fields
.field private P:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

.field private Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:Ljava/lang/Object;

.field private U:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

.field private V:[B

.field private W:I


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

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->R:Ljava/lang/String;

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->S:Z

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->T:Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->connecting:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->U:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    .line 122
    const/16 v1, 0x2800

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->V:[B

    .line 123
    iput v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->W:I

    return-void
.end method

.method private F()V
    .locals 2

    .line 1
    const-string v0, ">>>>>>>>>>>>disconnectbt"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->P:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

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
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->P:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V

    .line 12
    const-string v0, "disconnect bt success "

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->P:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

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

.method public static G()Lcom/dspread/xpos/VPosBluetooth_4mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->X:Lcom/dspread/xpos/VPosBluetooth_4mode;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/VPosBluetooth_4mode;

    invoke-direct {v0}, Lcom/dspread/xpos/VPosBluetooth_4mode;-><init>()V

    sput-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->X:Lcom/dspread/xpos/VPosBluetooth_4mode;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->X:Lcom/dspread/xpos/VPosBluetooth_4mode;

    return-object v0
.end method

.method private H()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->S:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move v2, v0

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    if-nez v3, :cond_1

    .line 11
    const-string v2, "[VPosBluetooth_4mode--]read >> is not connected"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_1
    iget v3, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->W:I

    if-lez v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 18
    new-array v2, v3, [B

    .line 19
    iget-object v4, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->V:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_6

    .line 24
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->V:[B

    aget-byte v4, v2, v0

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    .line 27
    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit16 v4, v4, 0x100

    :cond_4
    const/4 v5, 0x1

    .line 31
    aget-byte v5, v2, v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    if-ne v4, v3, :cond_5

    .line 35
    new-array v1, v3, [B

    .line 36
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    if-ge v4, v3, :cond_6

    goto :goto_1

    .line 42
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 43
    const-string v1, "[VPosBluetooth_4mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 44
    new-array v1, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 51
    new-array v1, v0, [B

    :goto_1
    return-object v1
.end method


# virtual methods
.method public A()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 2
    const-string/jumbo v1, "open +++++++++++++++++++++++++++="

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->P:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-virtual {v1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->h()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    const-string/jumbo v0, "true+++++++++++++++++++++++++++="

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return v2

    .line 7
    :cond_0
    sget-object v1, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->connecting:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->U:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    .line 8
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->P:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    invoke-virtual {v1, v3}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    const-string v1, "Please Enable Bluetooth or InValid Bluetooth address"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 11
    sput-boolean v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Y:Z

    goto :goto_2

    :cond_1
    move v1, v0

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->U:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    sget-object v4, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->success:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    if-ne v3, v4, :cond_2

    .line 16
    sput-boolean v2, Lcom/dspread/xpos/VPosBluetooth_4mode;->Y:Z

    .line 17
    const-string/jumbo v0, "success :connectstate+++++++++++++++++++++++++++="

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_2
    sget-object v4, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->fail:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    if-ne v3, v4, :cond_3

    .line 20
    const-string v1, "fail :connectstate+++++++++++++++++++++++++++="

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 21
    sput-boolean v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Y:Z

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 25
    sput-boolean v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Y:Z

    :cond_4
    const-wide/16 v3, 0x1

    .line 28
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x7530

    if-lt v1, v4, :cond_5

    .line 33
    sput-boolean v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Y:Z

    .line 38
    :goto_2
    sget-boolean v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Y:Z

    return v0

    .line 28
    :cond_5
    move v1, v3

    goto :goto_0
.end method

.method public B()[B
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetooth_4mode;->H()[B

    move-result-object v0

    return-object v0
.end method

.method protected I()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->X:Lcom/dspread/xpos/VPosBluetooth_4mode;

    return-void
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    .locals 0

    .line 15
    sget-object p1, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->success:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->U:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V
    .locals 0

    .line 14
    sget-object p1, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->fail:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->U:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V
    .locals 2

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VPosBluetooth_4mod: read_buf(10240) index out size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->W:I

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 18
    iget p1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->W:I

    add-int v0, p1, p3

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->V:[B

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget p1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->W:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->W:I

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MESSAGE_READ"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->W:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-direct {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-virtual {p1, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a$e;)V

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-virtual {p1, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 3

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->W:I

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->V:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V
    .locals 0

    .line 7
    const-string p1, "VPosBluetooth_4mod: onWriteFailed"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->P:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a(Ljava/lang/String;)Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->P:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 2
    sget-boolean v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Y:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->T:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    sput-boolean v1, Lcom/dspread/xpos/VPosBluetooth_4mode;->Y:Z

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetooth_4mode;->F()V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-virtual {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b(Lcom/dspread/xpos/bt2mode/dbridge4/a$e;)V

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    return-void
.end method

.method public f([B)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPosBluetooth_4mod: read_buf(Write:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetooth_4mode;->c()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->S:Z

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Q:Lcom/dspread/xpos/bt2mode/dbridge4/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->P:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->S:Z

    .line 10
    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V

    :cond_0
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetooth_4mode;->R:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/dspread/xpos/VPosBluetooth_4mode;->Y:Z

    return v0
.end method
