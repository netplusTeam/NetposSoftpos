.class public Lcom/dspread/xpos/o;
.super Lcom/dspread/xpos/Vpos;
.source "CopyOfVPosBluetooth_2mode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/o$c;,
        Lcom/dspread/xpos/o$b;
    }
.end annotation


# static fields
.field private static g0:Lcom/dspread/xpos/o; = null

.field private static h0:Z = false

.field public static final i0:Ljava/lang/String; = "VPosBluetooth_2mode"

.field public static final j0:Ljava/lang/String; = "NOTIFY_UI"

.field public static final k0:Ljava/lang/String; = "INCOMING_MSG"

.field public static final l0:Ljava/lang/String; = "OUTGOING_MSG"

.field public static final m0:Ljava/lang/String; = "ALERT_MSG"

.field public static final n0:Ljava/lang/String; = "device_address"

.field public static final o0:Ljava/lang/String; = "disconnected_device_address"

.field public static final p0:I = 0x3b9aca01

.field public static final q0:I = 0x3b9aca02

.field public static final r0:I = 0x3b9aca03

.field public static final s0:I = 0x3b9aca04

.field public static final t0:Ljava/lang/String; = "toast"

.field public static final u0:I = 0x3b9aca05

.field public static final v0:I = 0x3b9aca06

.field public static final w0:I = 0x1

.field public static final x0:I = 0x2

.field private static final y0:I = 0x2800

.field private static final z0:I = 0x80


# instance fields
.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Ljava/lang/Object;

.field private S:Z

.field private T:Lcom/dspread/xpos/bluetooth2mode/a;

.field private U:Lcom/dspread/xpos/o$b;

.field private V:Z

.field private W:Z

.field private X:Lcom/dspread/xpos/bluetooth2mode/a$c;

.field private Y:Z

.field private Z:[B

.field private a0:I

.field private b0:I

.field private c0:I

.field private d0:[B

.field private e0:Z

.field private f0:Z


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

    iput-object v0, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/o;->Q:Z

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dspread/xpos/o;->R:Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/c;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dspread/xpos/o;->S:Z

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    .line 150
    iput-boolean v0, p0, Lcom/dspread/xpos/o;->V:Z

    .line 228
    iput-boolean v0, p0, Lcom/dspread/xpos/o;->W:Z

    .line 250
    iput-object v1, p0, Lcom/dspread/xpos/o;->X:Lcom/dspread/xpos/bluetooth2mode/a$c;

    .line 344
    iput-boolean v0, p0, Lcom/dspread/xpos/o;->Y:Z

    .line 481
    const/16 v2, 0x2800

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/dspread/xpos/o;->Z:[B

    .line 482
    iput v0, p0, Lcom/dspread/xpos/o;->a0:I

    .line 655
    iput v0, p0, Lcom/dspread/xpos/o;->b0:I

    .line 656
    iput v0, p0, Lcom/dspread/xpos/o;->c0:I

    .line 657
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/dspread/xpos/o;->d0:[B

    .line 705
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dspread/xpos/o;->e0:Z

    .line 786
    iput-boolean v0, p0, Lcom/dspread/xpos/o;->f0:Z

    .line 787
    new-instance v0, Lcom/dspread/xpos/o$c;

    invoke-direct {v0, p0, v1}, Lcom/dspread/xpos/o$c;-><init>(Lcom/dspread/xpos/o;Lcom/dspread/xpos/o$a;)V

    iput-object v0, p0, Lcom/dspread/xpos/o;->X:Lcom/dspread/xpos/bluetooth2mode/a$c;

    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosBluetooth_2mode--]disconnectbt>>>>>>>>>>>>blueToothAddress+ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "isDisconnectFlag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/dspread/xpos/o;->V:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/dspread/xpos/o;->V:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/dspread/xpos/o;->V:Z

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VPosBluetooth_2mode--]disconnectbt>>>>>>>>>>>>mConnService+ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x96

    .line 11
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/a;->k()V

    .line 18
    iget-object v0, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    iget-object v2, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    const-wide/16 v2, 0xc8

    .line 21
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 25
    :goto_1
    iput-object v1, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/dspread/xpos/o;->V:Z

    return-void
.end method

.method private G()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/o;->K()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "\u6ca1\u6709\u8fde\u63a5"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/o;->c()V

    return-void

    .line 8
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 9
    const-string v0, "b.length == 0"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/dspread/xpos/o;->c()V

    return-void

    .line 12
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 13
    const-string v0, "b.length ==1"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/dspread/xpos/o;->c()V

    return-void

    :cond_2
    nop

    .line 18
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 19
    const-string v3, "doTrade()setReceiver(false);"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 20
    iput v1, p0, Lcom/dspread/xpos/o;->b0:I

    .line 21
    iput v1, p0, Lcom/dspread/xpos/o;->c0:I

    .line 22
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->a([B)Lcom/dspread/xpos/j;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    .line 26
    invoke-virtual {v1, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    const/4 v4, 0x3

    .line 27
    invoke-virtual {v1, v4, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    .line 28
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v1, v6, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v6

    .line 29
    invoke-virtual {v1, v4, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v6

    add-int/2addr v4, v2

    .line 30
    invoke-virtual {v1, v4, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mod:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 33
    iget-object v4, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v4, :cond_4

    .line 34
    invoke-virtual {v4, v3, v5, v1}, Lcom/dspread/xpos/QPOSService;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_READ:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->l(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static H()Lcom/dspread/xpos/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/o;->g0:Lcom/dspread/xpos/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/o;

    invoke-direct {v0}, Lcom/dspread/xpos/o;-><init>()V

    sput-object v0, Lcom/dspread/xpos/o;->g0:Lcom/dspread/xpos/o;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/o;->g0:Lcom/dspread/xpos/o;

    return-object v0
.end method

.method private J()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-boolean v2, p0, Lcom/dspread/xpos/o;->Q:Z

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readNormalResponse--isReceiver--isWrite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/dspread/xpos/o;->Q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v0

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v3}, Lcom/dspread/xpos/bluetooth2mode/a;->d()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    const-string v1, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 18
    new-array v0, v0, [B

    return-object v0

    .line 22
    :cond_1
    iget v3, p0, Lcom/dspread/xpos/o;->a0:I

    if-lez v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 24
    new-array v2, v3, [B

    .line 25
    iget-object v4, p0, Lcom/dspread/xpos/o;->Z:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_6

    .line 30
    iget-object v2, p0, Lcom/dspread/xpos/o;->Z:[B

    aget-byte v4, v2, v0

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    .line 33
    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit16 v4, v4, 0x100

    :cond_4
    const/4 v5, 0x1

    .line 37
    aget-byte v5, v2, v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    if-ne v4, v3, :cond_5

    .line 41
    new-array v1, v3, [B

    .line 42
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    if-ge v4, v3, :cond_6

    goto :goto_1

    .line 48
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 49
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 50
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_7
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    new-array v1, v0, [B

    .line 63
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-object v1
.end method

.method private K()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    const-string v1, "mConnService is null"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/dspread/xpos/bluetooth2mode/a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    const-string v1, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v2

    .line 10
    :cond_1
    iget v1, p0, Lcom/dspread/xpos/o;->a0:I

    if-lez v1, :cond_2

    .line 11
    iget v2, p0, Lcom/dspread/xpos/o;->c0:I

    if-eq v1, v2, :cond_2

    .line 12
    new-array v2, v1, [B

    .line 13
    iget-object v3, p0, Lcom/dspread/xpos/o;->Z:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :cond_2
    iput v1, p0, Lcom/dspread/xpos/o;->c0:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_6

    .line 18
    iget-object v2, p0, Lcom/dspread/xpos/o;->Z:[B

    aget-byte v3, v2, v0

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_3

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/o;->d0:[B

    return-object v0

    :cond_3
    const/4 v3, 0x2

    .line 21
    aget-byte v3, v2, v3

    iput v3, p0, Lcom/dspread/xpos/o;->b0:I

    if-gez v3, :cond_4

    add-int/lit16 v3, v3, 0x100

    .line 23
    iput v3, p0, Lcom/dspread/xpos/o;->b0:I

    .line 25
    :cond_4
    iget v3, p0, Lcom/dspread/xpos/o;->b0:I

    const/4 v4, 0x1

    aget-byte v5, v2, v4

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    .line 26
    iput v3, p0, Lcom/dspread/xpos/o;->b0:I

    if-ne v3, v1, :cond_5

    .line 29
    new-array v3, v1, [B

    iput-object v3, p0, Lcom/dspread/xpos/o;->d0:[B

    .line 30
    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    if-ge v3, v1, :cond_6

    .line 32
    new-array v0, v4, [B

    return-object v0

    .line 35
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 36
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 37
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/o;->d0:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 40
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/o;->d0:[B

    .line 43
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/o;->d0:[B

    return-object v0
.end method

.method private L()[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/o;->Q:Z

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
    iget-object v5, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v5}, Lcom/dspread/xpos/bluetooth2mode/a;->d()Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    const-string v2, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    new-array v0, v0, [B

    return-object v0

    .line 20
    :cond_3
    iget v5, p0, Lcom/dspread/xpos/o;->a0:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_8

    .line 21
    iget-object v4, p0, Lcom/dspread/xpos/o;->Z:[B

    aget-byte v5, v4, v0

    const/16 v6, 0x44

    if-eq v5, v6, :cond_4

    .line 22
    const-string v1, "head[0] != \'D\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 23
    new-array v0, v0, [B

    return-object v0

    :cond_4
    nop

    .line 26
    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x50

    if-eq v4, v5, :cond_5

    .line 27
    const-string v1, "head[1] != \'P\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 28
    new-array v0, v0, [B

    return-object v0

    :cond_5
    const/4 v4, 0x4

    move v5, v0

    :goto_0
    if-ge v5, v2, :cond_7

    .line 33
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 34
    const-string/jumbo v1, "\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f66"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 35
    new-array v0, v0, [B

    return-object v0

    .line 37
    :cond_6
    iget-object v6, p0, Lcom/dspread/xpos/o;->Z:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    aput-byte v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_0

    .line 39
    :cond_7
    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    .line 43
    :cond_8
    iget v5, p0, Lcom/dspread/xpos/o;->a0:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_9

    if-nez v4, :cond_1

    :cond_9
    add-int/lit8 v6, v4, 0xc

    if-ne v5, v6, :cond_1

    .line 47
    new-array v1, v6, [B

    .line 48
    iget-object v2, p0, Lcom/dspread/xpos/o;->Z:[B

    invoke-static {v2, v0, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
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

    .line 54
    aget-byte v4, v1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
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

    .line 60
    aget-byte v2, v1, v4

    if-eq v3, v2, :cond_c

    .line 61
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

    .line 62
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_c
    return-object v1

    :catch_0
    move-exception v1

    .line 72
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

    .line 73
    new-array v1, v0, [B

    :goto_2
    return-object v1
.end method

.method static synthetic a(Lcom/dspread/xpos/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/o;->a0:I

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/o;I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/o;->a0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dspread/xpos/o;->a0:I

    return v0
.end method

.method static synthetic a(Lcom/dspread/xpos/o;Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/bluetooth2mode/a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    return-object p1
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 9

    .line 5
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HUAWEI D2-6070"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Lenovo A798t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPosBluetooth_2modebondtime===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x78

    if-ge v2, v5, :cond_4

    if-nez v3, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    .line 13
    const-string v3, "VPosBluetooth_2modedevice bonded."

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v3, v0

    move v4, v1

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v6, 0xb

    const-wide/16 v7, 0x1f4

    if-ne v5, v6, :cond_1

    .line 16
    :try_start_1
    const-string v5, "VPosBluetooth_2modebonding ..."

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 17
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    .line 21
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    if-nez v4, :cond_2

    .line 24
    :try_start_3
    const-string v5, "VPosBluetooth_2modestart bond device"

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/b;->a(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 32
    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v4, v0

    goto :goto_1

    .line 33
    :catch_1
    move-exception v4

    move v4, v0

    goto :goto_1

    .line 17
    :catch_2
    move-exception v4

    move v4, v0

    goto :goto_1

    .line 33
    :cond_2
    :try_start_5
    const-string v5, "VPosBluetooth_2modebond failed"

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    return v0

    :catch_4
    move-exception p1

    return v0
.end method

.method static synthetic a(Lcom/dspread/xpos/o;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/dspread/xpos/o;->W:Z

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/o;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/o;->Y:Z

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/o;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/o;->Z:[B

    return-object p0
.end method

.method static synthetic c(Lcom/dspread/xpos/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/o;->G()V

    return-void
.end method

.method static synthetic d(Lcom/dspread/xpos/o;)Lcom/dspread/xpos/bluetooth2mode/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/dspread/xpos/o;->c()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/o;->Q:Z

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dspread/xpos/bluetooth2mode/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v1, p1}, Lcom/dspread/xpos/bluetooth2mode/a;->d(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dspread/xpos/o;->Q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    iput-boolean v0, p0, Lcom/dspread/xpos/o;->Q:Z

    .line 18
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/dspread/xpos/o;->Q:Z

    return p1
.end method

.method static synthetic e(Lcom/dspread/xpos/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/o;->W:Z

    return p0
.end method

.method static synthetic f(Lcom/dspread/xpos/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/o;->Y:Z

    return p0
.end method

.method private p(Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/dspread/xpos/o;->S:Z

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 7
    iget-object v2, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/dspread/xpos/o;->X:Lcom/dspread/xpos/bluetooth2mode/a$c;

    invoke-direct {v2, v3, v4}, Lcom/dspread/xpos/bluetooth2mode/a;-><init>(Landroid/content/Context;Lcom/dspread/xpos/bluetooth2mode/a$c;)V

    iput-object v2, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    .line 9
    invoke-virtual {v2, p1}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Z)V

    .line 13
    :cond_1
    iget-boolean p1, p0, Lcom/dspread/xpos/o;->f0:Z

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    iput-object v1, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    .line 22
    :cond_3
    new-instance p1, Lcom/dspread/xpos/o$b;

    invoke-direct {p1, p0, v1}, Lcom/dspread/xpos/o$b;-><init>(Lcom/dspread/xpos/o;Lcom/dspread/xpos/o$a;)V

    iput-object p1, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    .line 24
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 32
    iput-object v1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/o;->Y:Z

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VPosBluetooth_2mode] start getConnected_state(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->e()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    if-nez v1, :cond_0

    .line 10
    iget-boolean v1, p0, Lcom/dspread/xpos/o;->S:Z

    invoke-direct {p0, v1}, Lcom/dspread/xpos/o;->p(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v1

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    iget-object v2, p0, Lcom/dspread/xpos/Vpos;->H:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Lcom/dspread/xpos/QPOSService$BTCONNTYPE;)V

    .line 16
    iget-object v1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v1}, Lcom/dspread/xpos/bluetooth2mode/a;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 17
    iput-boolean v2, p0, Lcom/dspread/xpos/o;->Y:Z

    return v2

    .line 20
    :cond_1
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->e()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    move-result-object v1

    sget-object v3, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    if-ne v1, v3, :cond_2

    .line 21
    iput-boolean v2, p0, Lcom/dspread/xpos/o;->Y:Z

    .line 22
    sput-boolean v0, Lcom/dspread/xpos/o;->h0:Z

    return v0

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_5

    .line 31
    :cond_3
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 32
    iget-object v1, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->h()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/dspread/xpos/bluetooth2mode/a;->a(I)V

    .line 33
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->s()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_5

    .line 36
    invoke-direct {p0, v1}, Lcom/dspread/xpos/o;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++++++isPaired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 39
    iget-object v3, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v3, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 43
    :cond_4
    iget-object v3, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v3, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 48
    :cond_5
    iget-object v3, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v3, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Landroid/bluetooth/BluetoothDevice;)V

    :goto_0
    move v1, v2

    .line 55
    :goto_1
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->e()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->NOCONNECT:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    if-eq v3, v4, :cond_7

    .line 56
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->e()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    if-ne v3, v4, :cond_6

    const-wide/16 v3, 0x64

    .line 59
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 63
    :goto_2
    sput-boolean v0, Lcom/dspread/xpos/o;->h0:Z

    goto :goto_4

    .line 65
    :cond_6
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->e()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    if-ne v3, v4, :cond_7

    .line 66
    const-string/jumbo v0, "open false"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 82
    sput-boolean v2, Lcom/dspread/xpos/o;->h0:Z

    goto :goto_4

    .line 88
    :cond_7
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 89
    sput-boolean v2, Lcom/dspread/xpos/o;->h0:Z

    goto :goto_4

    :cond_8
    const-wide/16 v3, 0x1

    .line 94
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    :goto_3
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x4e20

    if-lt v1, v4, :cond_b

    .line 99
    sput-boolean v2, Lcom/dspread/xpos/o;->h0:Z

    .line 105
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosBluetooth_2mode] BluetoothConnModel.getConnected_state() end : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->e()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 106
    sget-boolean v0, Lcom/dspread/xpos/o;->h0:Z

    if-nez v0, :cond_9

    .line 107
    invoke-direct {p0}, Lcom/dspread/xpos/o;->F()V

    .line 109
    :cond_9
    sget-boolean v0, Lcom/dspread/xpos/o;->h0:Z

    if-nez v0, :cond_a

    .line 110
    iput-boolean v2, p0, Lcom/dspread/xpos/o;->Y:Z

    :cond_a
    return v0

    .line 94
    :cond_b
    move v1, v3

    goto :goto_1

    .line 110
    :cond_c
    :goto_5
    nop

    .line 111
    iput-boolean v2, p0, Lcom/dspread/xpos/o;->Y:Z

    return v2
.end method

.method public B()[B
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "Read:readUpdateResponse"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/dspread/xpos/o;->L()[B

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/dspread/xpos/o;->J()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [B

    return-object v0
.end method

.method protected I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/o;->S:Z

    return v0
.end method

.method protected M()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/o;->g0:Lcom/dspread/xpos/o;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/a;->k()V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    iput-object v1, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 3

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/o;->a0:I

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 26
    iget-object v2, p0, Lcom/dspread/xpos/o;->Z:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosBluetooth_2mode--]blueToothAddress\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosBluetooth_2mode--]------address is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/dspread/xpos/o;->W:Z

    .line 19
    const-string p1, "[VPosBluetooth_2mode--]------address is null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 20
    sput-boolean p1, Lcom/dspread/xpos/o;->h0:Z

    .line 21
    invoke-virtual {p0}, Lcom/dspread/xpos/o;->d()V

    .line 22
    invoke-direct {p0}, Lcom/dspread/xpos/o;->F()V

    .line 23
    iput-object v0, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    const-string v0, "[VPosBluetooth_2mode] close()"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 4
    sget-boolean v0, Lcom/dspread/xpos/o;->h0:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/o;->R:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6
    :try_start_0
    sput-boolean v1, Lcom/dspread/xpos/o;->h0:Z

    .line 7
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
    .locals 2

    .line 2
    const-string/jumbo v0, "vpos 2mode destroy"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/o;->d()V

    .line 4
    invoke-direct {p0}, Lcom/dspread/xpos/o;->F()V

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/dspread/xpos/o;->f0:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/dspread/xpos/o;->U:Lcom/dspread/xpos/o$b;

    :cond_1
    return-void
.end method

.method public f([B)V
    .locals 8

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/dspread/xpos/o;->e0:Z

    if-nez v1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/o;->d(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    .line 9
    :cond_0
    array-length v1, p1

    if-eqz v1, :cond_5

    const/16 v2, 0x400

    if-le v1, v2, :cond_1

    goto :goto_3

    .line 13
    :cond_1
    div-int/lit16 v2, v1, 0x80

    move v4, v0

    move v3, v2

    move v2, v1

    move v1, v4

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_3

    .line 16
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 17
    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dspread/xpos/o;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 20
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, -0x80

    add-int/lit16 v4, v4, 0x80

    const-wide/16 v6, 0x14

    .line 27
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 13
    :goto_1
    move v3, v5

    goto :goto_0

    .line 27
    :cond_3
    if-eqz v2, :cond_4

    .line 33
    new-array v1, v2, [B

    .line 34
    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/o;->d(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v1

    .line 38
    :goto_2
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->o(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/o;->P:Ljava/lang/String;

    return-object v0
.end method

.method protected j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/a;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/o;->f0:Z

    return-void
.end method

.method protected k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/o;->T:Lcom/dspread/xpos/bluetooth2mode/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/a;->e()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    move-result-object v0

    sget-object v2, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/o;->S:Z

    return-void
.end method
