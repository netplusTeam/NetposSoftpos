.class public abstract Lcom/dspread/xpos/Vpos;
.super Ljava/lang/Object;
.source "Vpos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/Vpos$c;,
        Lcom/dspread/xpos/Vpos$UPDATE_STATE;,
        Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;
    }
.end annotation


# static fields
.field private static final K:I = 0xa

.field private static final L:I = 0x3

.field private static volatile M:Z = false

.field private static volatile N:Lcom/dspread/xpos/i0; = null

.field protected static volatile O:Z = false


# instance fields
.field private A:I

.field private B:I

.field protected C:Lcom/dspread/xpos/QPOSService;

.field protected D:Lcom/dspread/xpos/DspFingerPrint;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:I

.field protected H:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

.field private I:Z

.field private J:I

.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Z

.field private j:I

.field private k:Lcom/dspread/xpos/i;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:Ljava/lang/Thread;

.field private q:Z

.field protected r:Z

.field private s:[B

.field public t:Z

.field u:Z

.field final v:Landroid/os/Handler;

.field final w:Ljava/lang/Runnable;

.field protected x:Z

.field private y:I

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->a:Z

    .line 17
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->b:Z

    .line 18
    const/16 v1, 0xa

    iput v1, p0, Lcom/dspread/xpos/Vpos;->c:I

    .line 20
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->d:Z

    .line 21
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dspread/xpos/Vpos;->e:Z

    .line 22
    iput-boolean v2, p0, Lcom/dspread/xpos/Vpos;->f:Z

    .line 23
    const/16 v3, 0x14

    iput v3, p0, Lcom/dspread/xpos/Vpos;->g:I

    .line 25
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->i:Z

    .line 26
    const/4 v3, 0x5

    iput v3, p0, Lcom/dspread/xpos/Vpos;->j:I

    .line 27
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/dspread/xpos/Vpos;->k:Lcom/dspread/xpos/i;

    .line 28
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->l:Z

    .line 29
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->m:Z

    .line 31
    iput v0, p0, Lcom/dspread/xpos/Vpos;->n:I

    .line 32
    iput v2, p0, Lcom/dspread/xpos/Vpos;->o:I

    .line 47
    iput-boolean v2, p0, Lcom/dspread/xpos/Vpos;->q:Z

    .line 222
    iput-boolean v2, p0, Lcom/dspread/xpos/Vpos;->r:Z

    .line 248
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/dspread/xpos/Vpos;->s:[B

    .line 376
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->u:Z

    .line 377
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/dspread/xpos/Vpos;->v:Landroid/os/Handler;

    .line 378
    new-instance v2, Lcom/dspread/xpos/Vpos$a;

    invoke-direct {v2, p0}, Lcom/dspread/xpos/Vpos$a;-><init>(Lcom/dspread/xpos/Vpos;)V

    iput-object v2, p0, Lcom/dspread/xpos/Vpos;->w:Ljava/lang/Runnable;

    .line 385
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->x:Z

    .line 789
    iput v0, p0, Lcom/dspread/xpos/Vpos;->y:I

    .line 790
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/dspread/xpos/Vpos;->z:[B

    .line 791
    iput v0, p0, Lcom/dspread/xpos/Vpos;->A:I

    .line 891
    iput v1, p0, Lcom/dspread/xpos/Vpos;->E:I

    .line 1417
    sget-object v1, Lcom/dspread/xpos/QPOSService$BTCONNTYPE;->AUTO:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    iput-object v1, p0, Lcom/dspread/xpos/Vpos;->H:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    .line 1461
    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->I:Z

    .line 1462
    iput v0, p0, Lcom/dspread/xpos/Vpos;->J:I

    return-void
.end method

.method private C()[Lcom/dspread/xpos/i0;
    .locals 10

    .line 1
    const-string/jumbo v0, "receivePacket start"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->B()[B

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/dspread/xpos/Vpos;->s:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 4
    array-length v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    array-length v2, v0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 9
    const-string/jumbo v0, "receivePacket b < 4"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-object v1

    :cond_1
    nop

    .line 13
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->twoBytesToInt([B)I

    move-result v4

    add-int/lit8 v5, v4, 0x4

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "receivePacket byte length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", first content length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", packet length="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 18
    iget-boolean v4, p0, Lcom/dspread/xpos/Vpos;->x:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_c

    array-length v4, v0

    if-le v4, v5, :cond_c

    .line 31
    new-array v4, v1, [Lcom/dspread/xpos/i0;

    .line 32
    invoke-static {v0, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "receivePacket multipleData bytePacket1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 34
    array-length v8, v0

    invoke-static {v0, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "receivePacket multipleData bytePacket2="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 37
    array-length v5, v0

    if-le v5, v3, :cond_3

    .line 38
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->twoBytesToInt([B)I

    move-result v5

    .line 39
    array-length v8, v0

    add-int/2addr v5, v3

    if-ne v8, v5, :cond_2

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_0

    .line 37
    :cond_3
    move v1, v6

    .line 39
    :goto_0
    if-nez v1, :cond_4

    .line 42
    new-instance v0, Lcom/dspread/xpos/i0;

    invoke-direct {v0, v7}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v0, v4, v6

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packet 2 data incomplete, packet 1 length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v6

    invoke-virtual {v1}, Lcom/dspread/xpos/i0;->c()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-object v4

    :cond_4
    nop

    .line 46
    aget-byte v1, v7, v2

    const/16 v3, 0x53

    const/16 v5, 0x23

    if-ne v1, v3, :cond_5

    aget-byte v8, v0, v2

    if-ne v8, v5, :cond_5

    .line 47
    new-instance v0, Lcom/dspread/xpos/i0;

    invoke-direct {v0, v7}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v0, v4, v6

    goto/16 :goto_1

    :cond_5
    if-ne v1, v5, :cond_6

    .line 48
    aget-byte v8, v0, v2

    if-ne v8, v3, :cond_6

    .line 49
    new-instance v1, Lcom/dspread/xpos/i0;

    invoke-direct {v1, v0}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v1, v4, v6

    goto :goto_1

    :cond_6
    const/16 v3, 0x54

    if-ne v1, v3, :cond_7

    .line 50
    aget-byte v3, v0, v2

    const/16 v8, 0x24

    if-ne v3, v8, :cond_7

    .line 51
    new-instance v1, Lcom/dspread/xpos/i0;

    invoke-direct {v1, v0}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v1, v4, v6

    goto :goto_1

    :cond_7
    const/16 v3, 0x33

    const/16 v8, 0x20

    if-ne v1, v3, :cond_8

    .line 52
    aget-byte v9, v0, v2

    if-ne v9, v8, :cond_8

    .line 53
    new-instance v0, Lcom/dspread/xpos/i0;

    invoke-direct {v0, v7}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v0, v4, v6

    goto :goto_1

    :cond_8
    if-ne v1, v8, :cond_9

    .line 54
    aget-byte v9, v0, v2

    if-ne v9, v3, :cond_9

    .line 55
    new-instance v0, Lcom/dspread/xpos/i0;

    invoke-direct {v0, v7}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v0, v4, v6

    goto :goto_1

    :cond_9
    if-ne v1, v8, :cond_a

    .line 56
    aget-byte v3, v0, v2

    if-ne v3, v5, :cond_a

    .line 57
    new-instance v0, Lcom/dspread/xpos/i0;

    invoke-direct {v0, v7}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v0, v4, v6

    goto :goto_1

    :cond_a
    if-ne v1, v5, :cond_b

    .line 58
    aget-byte v1, v0, v2

    if-ne v1, v8, :cond_b

    .line 59
    new-instance v1, Lcom/dspread/xpos/i0;

    invoke-direct {v1, v0}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v1, v4, v6

    goto :goto_1

    .line 61
    :cond_b
    new-instance v0, Lcom/dspread/xpos/i0;

    invoke-direct {v0, v7}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v0, v4, v6

    goto :goto_1

    :cond_c
    nop

    .line 64
    new-array v4, v1, [Lcom/dspread/xpos/i0;

    .line 65
    new-instance v1, Lcom/dspread/xpos/i0;

    invoke-direct {v1, v0}, Lcom/dspread/xpos/i0;-><init>([B)V

    aput-object v1, v4, v6

    .line 67
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packets size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", p[0] length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v6

    invoke-virtual {v1}, Lcom/dspread/xpos/i0;->c()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-object v4

    .line 68
    :cond_d
    :goto_2
    const-string/jumbo v0, "receivePacket b == null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method private D()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/dspread/xpos/utils/i;->a()Lcom/dspread/xpos/utils/i;

    move-result-object v0

    new-instance v1, Lcom/dspread/xpos/Vpos$b;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/Vpos$b;-><init>(Lcom/dspread/xpos/Vpos;)V

    iput-object v1, p0, Lcom/dspread/xpos/Vpos;->p:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/utils/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private E()V
    .locals 1

    .line 1
    const-string/jumbo v0, "stopLedShow; cancelTradeFlag is true, will stop led"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/Vpos;->p:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "interrupt led thread"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/Vpos;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private a(JI)I
    .locals 3

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    int-to-long p1, p3

    sub-long/2addr p1, v0

    long-to-int p1, p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitEndCurrentTime - waitStartCurrentTime"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v0, "waitDelay"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return p1
.end method

.method private a([BILjava/lang/String;Z)Lcom/dspread/xpos/Vpos$UPDATE_STATE;
    .locals 6

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Vpos UpgradeProcess address: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->z:[B

    iget p2, p0, Lcom/dspread/xpos/Vpos;->A:I

    aget-byte v0, p1, p2

    .line 37
    const/4 v1, 0x2

    new-array v2, v1, [B

    add-int/lit8 v3, p2, 0x1

    .line 38
    aget-byte v3, p1, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    add-int/2addr p2, v1

    .line 39
    aget-byte p1, p1, p2

    const/4 p2, 0x1

    aput-byte p1, v2, p2

    .line 41
    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p1

    .line 43
    new-array v1, p1, [B

    .line 46
    const/4 v2, 0x3

    :try_start_0
    iget-object v3, p0, Lcom/dspread/xpos/Vpos;->z:[B

    iget v5, p0, Lcom/dspread/xpos/Vpos;->A:I

    add-int/2addr v5, v2

    invoke-static {v3, v5, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v3

    instance-of v3, v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 52
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "g_UpgPackDataIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/dspread/xpos/Vpos;->A:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "T: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ,L: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ,V: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 53
    iget v3, p0, Lcom/dspread/xpos/Vpos;->A:I

    add-int/lit8 p1, p1, 0x3

    add-int/2addr v3, p1

    iput v3, p0, Lcom/dspread/xpos/Vpos;->A:I

    .line 54
    iget v3, p0, Lcom/dspread/xpos/Vpos;->y:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/dspread/xpos/Vpos;->y:I

    .line 62
    const-string/jumbo p1, "\u5f00\u59cb\u5347\u7ea7-----------"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->p()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/QPOSService;->K(I)V

    const/16 p1, 0x11

    if-eq v0, p1, :cond_8

    const/16 p1, 0x12

    const/4 v3, 0x5

    if-eq v0, p1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 145
    :pswitch_0
    const-string/jumbo p1, "\u5173\u95ed\u8fde\u63a5open ..."

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->d()V

    .line 147
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 148
    :pswitch_1
    const-string/jumbo p1, "\u6253\u5f00\u8fde\u63a5open ..."

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/Vpos;->n(Z)V

    if-nez p4, :cond_1

    const-wide/16 p1, 0xbb8

    .line 152
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0xc8

    .line 154
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 159
    :goto_1
    invoke-virtual {p0, p3}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 161
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->y1()V

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->A()Z

    move-result p1

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+++++++++++++++111111111: open f = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-nez p1, :cond_b

    .line 169
    const-wide/16 p1, 0x1f4

    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    if-eqz p4, :cond_3

    .line 174
    iget-object v0, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->y1()V

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->A()Z

    move-result v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++++++++++222222222: open f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-nez v0, :cond_b

    .line 180
    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_3
    if-eqz p4, :cond_4

    .line 185
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->y1()V

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->A()Z

    move-result p1

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+++++++++++++++33333333: open f = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-nez p1, :cond_b

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "+++++++++++++++4444444: open f = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    if-eqz p4, :cond_5

    .line 193
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->USBRECONNECT:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object p1

    .line 195
    :cond_5
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object p1

    .line 196
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u4f11\u7720Thread.sleep("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 198
    :try_start_4
    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 202
    :goto_4
    const-string p1, "----------->\u5347\u7ea7\u540e"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 203
    :pswitch_3
    const-string/jumbo p1, "\u5347\u7ea7Waitting Connection ..."

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 206
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/dspread/xpos/Vpos;->e(I)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_7

    :catch_5
    move-exception p1

    .line 210
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object p1

    .line 327
    :cond_6
    const-string p1, "device will enter boot state"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, v4}, Lcom/dspread/xpos/Vpos;->n(Z)V

    .line 329
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Vpos;->f([B)V

    .line 332
    :try_start_6
    invoke-virtual {p0, v3}, Lcom/dspread/xpos/Vpos;->e(I)[B

    move-result-object p1

    .line 333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " 12Read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 334
    array-length p2, p1

    if-eqz p2, :cond_b

    aget-byte p1, p1, v2

    const/16 p2, 0x24

    if-eq p1, p2, :cond_b

    const/16 p2, 0x27

    if-ne p1, p2, :cond_7

    .line 336
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->PACKED_ERROR:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object p1

    .line 338
    :cond_7
    const-string p1, "0x12\u7535\u91cf\u4f4e!"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 339
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->LOWPOWER:Lcom/dspread/xpos/Vpos$UPDATE_STATE;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    .line 342
    const-string p1, "0x12\u5347\u7ea7\u5931\u8d25 ..."

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 343
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object p1

    :cond_8
    nop

    .line 344
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/Vpos;->n(Z)V

    const-wide/16 v2, 0x2

    if-eqz p4, :cond_9

    .line 347
    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    goto :goto_6

    :cond_9
    nop

    .line 353
    :try_start_8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_8
    move-exception p1

    .line 357
    :goto_5
    iget-boolean p1, p0, Lcom/dspread/xpos/Vpos;->I:Z

    if-nez p1, :cond_a

    .line 359
    :try_start_9
    iput-boolean p2, p0, Lcom/dspread/xpos/Vpos;->I:Z

    .line 360
    iget p1, p0, Lcom/dspread/xpos/Vpos;->J:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7

    .line 366
    :cond_a
    :goto_6
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Vpos;->f([B)V

    const/16 p1, 0x32

    .line 368
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->e(I)[B

    move-result-object p1

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " 0x11Read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 370
    array-length p2, p1

    const/4 v0, 0x6

    if-eqz p2, :cond_d

    aget-byte p2, p1, v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    if-eqz p2, :cond_b

    goto :goto_8

    .line 407
    :cond_b
    :goto_7
    iget p1, p0, Lcom/dspread/xpos/Vpos;->y:I

    if-nez p1, :cond_0

    if-nez p1, :cond_c

    .line 410
    const-string/jumbo p1, "\u5347\u7ea7Success!"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 411
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->SUCCESS:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object p1

    .line 413
    :cond_c
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object p1

    .line 414
    :cond_d
    :goto_8
    :try_start_b
    const-string p2, "0x11\u5347\u7ea7\u5931\u8d25"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 415
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "data legth:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 416
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "data [6]:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-byte p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 418
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 421
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " 0x11Read ex: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 423
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILjava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;
    .locals 3

    .line 642
    new-instance p1, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x21

    const/16 v1, 0x92

    const/4 v2, 0x5

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "write:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/i;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 645
    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    if-nez p1, :cond_0

    .line 646
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 648
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    const/4 p2, 0x1

    .line 650
    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p2

    const/4 v0, 0x3

    .line 654
    invoke-direct {p0, p2}, Lcom/dspread/xpos/Vpos;->b(I)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object p2

    .line 656
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x4

    .line 658
    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p1

    iput p1, p0, Lcom/dspread/xpos/Vpos;->G:I

    :cond_1
    return-object p2
.end method

.method private a(Ljava/lang/String;Z)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;
    .locals 9

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vpos UpgradeProcess address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 428
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 430
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/dspread/xpos/Vpos;->z:[B

    iget v4, p0, Lcom/dspread/xpos/Vpos;->A:I

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v3

    instance-of v3, v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 436
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g_UpgPackDataIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/dspread/xpos/Vpos;->A:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ,L: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ,V: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 438
    iget v3, p0, Lcom/dspread/xpos/Vpos;->A:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/dspread/xpos/Vpos;->A:I

    .line 439
    iget v3, p0, Lcom/dspread/xpos/Vpos;->y:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/dspread/xpos/Vpos;->y:I

    .line 440
    const-string v0, "MP\u8fdb\u5165\u5347\u7ea7\u6a21\u5f0f"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->n(Z)V

    .line 444
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v3, 0x21

    const/16 v7, 0x90

    const/16 v8, 0xa

    invoke-direct {v0, v3, v7, v8, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dspread/xpos/i;->a()[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 447
    invoke-virtual {p0, v8}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    return-object p1

    :cond_0
    nop

    .line 451
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    .line 453
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 455
    invoke-direct {p0, v0}, Lcom/dspread/xpos/Vpos;->b(I)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object v0

    .line 456
    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->OK:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    if-eq v1, v0, :cond_1

    return-object v0

    .line 461
    :cond_1
    const-string/jumbo v0, "\u5173\u95ed\u8fde\u63a5open ..."

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->d()V

    .line 463
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    if-nez p2, :cond_2

    const-wide/16 v7, 0x1388

    .line 466
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_2
    nop

    .line 468
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    .line 473
    :goto_1
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 475
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->y1()V

    .line 477
    :cond_3
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->A()Z

    move-result p1

    .line 479
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+++++++++++++++111111111: open f = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-nez p1, :cond_6

    .line 483
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_2
    if-eqz p2, :cond_4

    .line 488
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->y1()V

    .line 490
    :cond_4
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->A()Z

    move-result p1

    .line 491
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+++++++++++++++222222222: open f = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-nez p1, :cond_6

    .line 494
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_3
    if-eqz p2, :cond_5

    .line 499
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->y1()V

    .line 501
    :cond_5
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->A()Z

    move-result p1

    .line 502
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+++++++++++++++33333333: open f = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-nez p1, :cond_6

    .line 505
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+++++++++++++++4444444: open f = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 509
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    return-object p1

    .line 515
    :cond_6
    const-string p1, "MP\u63e1\u624b"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 516
    const/4 p1, 0x5

    const-string p2, "0001"

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/Vpos;->a(ILjava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object p2

    .line 517
    iget v0, p0, Lcom/dspread/xpos/Vpos;->G:I

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u53ef\u63a5\u6536\u6570\u636e\u6bb5\u5927\u5c0f\u4e3a\uff1a"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "\u5b57\u8282"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 519
    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->OK:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    if-eq v1, p2, :cond_7

    return-object p2

    .line 524
    :cond_7
    const-string p2, "MP  \u6821\u9a8c"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/16 p2, 0x100

    .line 526
    new-array v1, p2, [B

    .line 528
    :try_start_4
    iget-object v7, p0, Lcom/dspread/xpos/Vpos;->z:[B

    iget v8, p0, Lcom/dspread/xpos/Vpos;->A:I

    invoke-static {v7, v8, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 530
    :catch_4
    move-exception v7

    instance-of v7, v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 534
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/dspread/xpos/Vpos;->A:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 535
    iget v7, p0, Lcom/dspread/xpos/Vpos;->A:I

    add-int/2addr v7, p2

    iput v7, p0, Lcom/dspread/xpos/Vpos;->A:I

    .line 536
    iget v7, p0, Lcom/dspread/xpos/Vpos;->y:I

    sub-int/2addr v7, p2

    iput v7, p0, Lcom/dspread/xpos/Vpos;->y:I

    .line 538
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0002"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/Vpos;->a(ILjava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object p2

    .line 540
    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->OK:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    if-eq v1, p2, :cond_8

    return-object p2

    .line 545
    :cond_8
    const-string p2, "MP  \u83b7\u53d6\u5730\u5740\u957f\u5ea6"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/16 p2, 0x20

    .line 547
    new-array v1, p2, [B

    .line 549
    :try_start_5
    iget-object v7, p0, Lcom/dspread/xpos/Vpos;->z:[B

    iget v8, p0, Lcom/dspread/xpos/Vpos;->A:I

    invoke-static {v7, v8, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 551
    :catch_5
    move-exception v7

    instance-of v7, v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 555
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/dspread/xpos/Vpos;->A:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 556
    iget v4, p0, Lcom/dspread/xpos/Vpos;->A:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/dspread/xpos/Vpos;->A:I

    .line 557
    iget v4, p0, Lcom/dspread/xpos/Vpos;->y:I

    sub-int/2addr v4, p2

    iput v4, p0, Lcom/dspread/xpos/Vpos;->y:I

    .line 559
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0005"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/Vpos;->a(ILjava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object p2

    .line 561
    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->OK:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    if-eq v1, p2, :cond_9

    return-object p2

    .line 566
    :cond_9
    const-string p2, "MP \u5f00\u59cb\u4e0b\u8f7d\u6570\u636e"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 567
    const-string p2, "0121"

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/Vpos;->a(ILjava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object p2

    if-eq v1, p2, :cond_a

    return-object p2

    .line 573
    :cond_a
    const-string p2, "MP \u4e0b\u8f7d"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 574
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 575
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v4, "0"

    const/4 v5, 0x4

    if-ge v1, v5, :cond_b

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 581
    :cond_b
    :goto_7
    new-array v1, v0, [B

    .line 583
    :try_start_6
    iget-object v6, p0, Lcom/dspread/xpos/Vpos;->z:[B

    iget v7, p0, Lcom/dspread/xpos/Vpos;->A:I

    invoke-static {v6, v7, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    .line 585
    :catch_6
    move-exception v6

    instance-of v6, v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 591
    :goto_8
    iget v6, p0, Lcom/dspread/xpos/Vpos;->A:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/dspread/xpos/Vpos;->A:I

    .line 592
    iget v6, p0, Lcom/dspread/xpos/Vpos;->y:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/dspread/xpos/Vpos;->y:I

    .line 594
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0003"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-direct {p0, p1, v1}, Lcom/dspread/xpos/Vpos;->a(ILjava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object v1

    .line 596
    sget-object v6, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->OK:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    if-eq v6, v1, :cond_c

    return-object v1

    .line 599
    :cond_c
    iget v1, p0, Lcom/dspread/xpos/Vpos;->y:I

    div-int/2addr v1, v0

    if-ge v1, v3, :cond_11

    .line 601
    iget p2, p0, Lcom/dspread/xpos/Vpos;->A:I

    iget v0, p0, Lcom/dspread/xpos/Vpos;->B:I

    if-ge p2, v0, :cond_e

    sub-int/2addr v0, p2

    .line 603
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 604
    :goto_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_d

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_9

    .line 607
    :cond_d
    new-array v1, v0, [B

    .line 609
    :try_start_7
    iget-object v3, p0, Lcom/dspread/xpos/Vpos;->z:[B

    iget v4, p0, Lcom/dspread/xpos/Vpos;->A:I

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    .line 611
    :catch_7
    move-exception v2

    instance-of v2, v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 615
    :goto_a
    iget v2, p0, Lcom/dspread/xpos/Vpos;->A:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/dspread/xpos/Vpos;->A:I

    .line 616
    iget v2, p0, Lcom/dspread/xpos/Vpos;->y:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/dspread/xpos/Vpos;->y:I

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/Vpos;->a(ILjava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object p2

    .line 620
    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->OK:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    if-eq v0, p2, :cond_e

    return-object p2

    .line 627
    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MP \u4e0b\u8f7d\u5b8c\u6210\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/dspread/xpos/Vpos;->y:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 628
    iget p2, p0, Lcom/dspread/xpos/Vpos;->y:I

    if-nez p2, :cond_10

    .line 630
    const-string/jumbo p2, "\u4e0b\u8f7dMCU\u6570\u636e\u5b8c\u6bd5"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 631
    const-string p2, "0122"

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/Vpos;->a(ILjava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object p2

    .line 632
    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->OK:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    if-eq v0, p2, :cond_f

    return-object p2

    .line 636
    :cond_f
    const-string/jumbo p2, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 637
    const-string p2, "0004"

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/Vpos;->a(ILjava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object p1

    return-object p1

    .line 640
    :cond_10
    const-string p1, "The length is not correct, please check"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 641
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    return-object p1

    .line 599
    :cond_11
    goto/16 :goto_7
.end method

.method static synthetic a(Lcom/dspread/xpos/i0;)Lcom/dspread/xpos/i0;
    .locals 0

    .line 2
    sput-object p0, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/Vpos;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/dspread/xpos/Vpos;->p:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 3
    sput-boolean p0, Lcom/dspread/xpos/Vpos;->M:Z

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/Vpos;)[Lcom/dspread/xpos/i0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;->C()[Lcom/dspread/xpos/i0;

    move-result-object p0

    return-object p0
.end method

.method private b(I)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;
    .locals 3

    const-string v0, " "

    const-string v1, "MP Upgrade:"

    packed-switch p1, :pswitch_data_0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    return-object p1

    .line 19
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->UPGRADE_NOT_FINISH:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v0

    .line 20
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->WRITE_VALUE_ERROR:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v0

    .line 21
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->DATA_FORMAT_ERROR:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v0

    .line 22
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->FRAME_LENGTH_ERROR:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v0

    .line 23
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->SIGNATURE_ERROR:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v0

    .line 24
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->CMD_ERROR:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v0

    .line 25
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->OK:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 2
    const/4 v1, 0x0

    sput-object v1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    .line 3
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->f(Z)V

    .line 4
    sput-boolean v0, Lcom/dspread/xpos/Vpos;->M:Z

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/Vpos;->s:[B

    return-void
.end method

.method private declared-synchronized c(I)Lcom/dspread/xpos/j;
    .locals 7

    monitor-enter p0

    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;->b()V

    .line 12
    new-instance v0, Lcom/dspread/xpos/Vpos$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dspread/xpos/Vpos$c;-><init>(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/Vpos$a;)V

    .line 13
    invoke-static {}, Lcom/dspread/xpos/utils/i;->a()Lcom/dspread/xpos/utils/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/utils/i;->a(Ljava/lang/Runnable;)V

    mul-int/lit16 p1, p1, 0x3e8

    .line 16
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/dspread/xpos/Vpos;->u:Z

    .line 17
    iget-object v3, p0, Lcom/dspread/xpos/Vpos;->v:Landroid/os/Handler;

    iget-object v4, p0, Lcom/dspread/xpos/Vpos;->w:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    iget-object v3, p0, Lcom/dspread/xpos/Vpos;->v:Landroid/os/Handler;

    iget-object v4, p0, Lcom/dspread/xpos/Vpos;->w:Ljava/lang/Runnable;

    int-to-long v5, p1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    :cond_0
    sget-boolean v3, Lcom/dspread/xpos/Vpos;->M:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 22
    invoke-static {v4}, Lcom/dspread/xpos/Vpos;->k(I)V

    .line 23
    iget-boolean v3, p0, Lcom/dspread/xpos/Vpos;->u:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Vpos] receiveCommand: isNeedQuit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v4}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x64

    .line 28
    :try_start_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    :try_start_2
    const-string/jumbo p1, "receiveCommand interrupt"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 32
    :goto_0
    const-string p1, "--------------receiveCommand-----------"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 39
    :cond_2
    :try_start_3
    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    invoke-virtual {p1}, Lcom/dspread/xpos/i0;->c()[B

    move-result-object p1

    array-length p1, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_4

    :cond_3
    const-wide/16 v5, 0x32

    .line 45
    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 49
    :goto_1
    :try_start_5
    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    invoke-virtual {p1}, Lcom/dspread/xpos/i0;->c()[B

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 54
    :cond_4
    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    invoke-virtual {p1}, Lcom/dspread/xpos/i0;->l()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/dspread/xpos/Vpos;->x:Z

    if-eqz p1, :cond_5

    goto :goto_2

    .line 59
    :cond_5
    const-string p1, "Vpos: read packet crc error"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v4}, Lcom/dspread/xpos/Vpos;->f(Z)V

    goto :goto_3

    .line 61
    :cond_6
    :goto_2
    new-instance v1, Lcom/dspread/xpos/j;

    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    invoke-direct {v1, p1}, Lcom/dspread/xpos/j;-><init>(Lcom/dspread/xpos/i0;)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->f(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :goto_3
    monitor-exit p0

    return-object v1

    .line 10
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTradeFlag in  write = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/dspread/xpos/Vpos;->O:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 3
    sget-boolean v0, Lcom/dspread/xpos/Vpos;->O:Z

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 4
    const-string p1, "cance here"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "test write = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->f([B)V

    return-void
.end method

.method private static k(I)V
    .locals 2

    int-to-long v0, p0

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vpos sleepMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract A()Z
.end method

.method public abstract B()[B
.end method

.method protected a([B)Lcom/dspread/xpos/j;
    .locals 2

    .line 10
    new-instance v0, Lcom/dspread/xpos/i0;

    invoke-direct {v0, p1}, Lcom/dspread/xpos/i0;-><init>([B)V

    .line 13
    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->c()[B

    move-result-object p1

    array-length p1, p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    new-instance v1, Lcom/dspread/xpos/j;

    invoke-direct {v1, v0}, Lcom/dspread/xpos/j;-><init>(Lcom/dspread/xpos/i0;)V

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->f(Z)V

    goto :goto_0

    .line 22
    :cond_1
    const-string p1, "Vpos: read packet crc error"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->f(Z)V

    :goto_0
    return-object v1
.end method

.method a(I)V
    .locals 0

    .line 691
    iput p1, p0, Lcom/dspread/xpos/Vpos;->J:I

    return-void
.end method

.method public a(Lcom/dspread/xpos/DspFingerPrint;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/dspread/xpos/Vpos;->D:Lcom/dspread/xpos/DspFingerPrint;

    return-void
.end method

.method public a(Lcom/dspread/xpos/QPOSService$BTCONNTYPE;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/dspread/xpos/Vpos;->H:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    return-void
.end method

.method public a(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method public a(Lcom/dspread/xpos/i;)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->n(Z)V

    .line 8
    iput-object p1, p0, Lcom/dspread/xpos/Vpos;->k:Lcom/dspread/xpos/i;

    .line 9
    invoke-virtual {p1}, Lcom/dspread/xpos/i;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Vpos;->c([B)V

    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/dspread/xpos/Vpos;->h:Landroid/content/Context;

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a(III)[B
    .locals 5

    .line 662
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 663
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;->b()V

    .line 664
    new-instance v2, Lcom/dspread/xpos/Vpos$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dspread/xpos/Vpos$c;-><init>(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/Vpos$a;)V

    .line 665
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    mul-int/lit16 p1, p1, 0x3e8

    .line 668
    :cond_0
    sget-boolean v3, Lcom/dspread/xpos/Vpos;->M:Z

    if-nez v3, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 670
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/dspread/xpos/Vpos;->k(I)V

    if-eqz p1, :cond_1

    .line 671
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    :cond_1
    const-string p1, "[Vpos] receiveUpgradeData: timeout"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0, v3}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 675
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 677
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 682
    :goto_0
    const-string p1, "[Vpos] receiveUpgradeData: timeout end"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v1

    :cond_2
    add-int p1, p2, p3

    .line 686
    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->s:[B

    array-length v2, v1

    if-le p1, v2, :cond_3

    .line 687
    array-length p1, v1

    sub-int p3, p1, p2

    .line 689
    :cond_3
    new-array p1, p3, [B

    .line 690
    invoke-static {v1, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method protected b(Ljava/lang/String;Z)Lcom/dspread/xpos/Vpos$UPDATE_STATE;
    .locals 2

    .line 9
    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/Vpos;->I:Z

    .line 11
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/dspread/xpos/Vpos;->a([BILjava/lang/String;Z)Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->d()V

    .line 13
    sget-object p2, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->SUCCESS:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    if-ne p1, p2, :cond_0

    .line 14
    const-string p2, ""

    invoke-virtual {p0, p2}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    :cond_0
    nop

    .line 16
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->n(Z)V

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method protected b([B)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->n(Z)V

    .line 8
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Vpos;->c([B)V

    return-void
.end method

.method protected c(Ljava/lang/String;Z)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/Vpos;->a(Ljava/lang/String;Z)Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->d()V

    .line 66
    sget-object p2, Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;->OK:Lcom/dspread/xpos/Vpos$UPDATE_STATE_MP;

    if-ne p1, p2, :cond_0

    .line 67
    const-string p2, ""

    invoke-virtual {p0, p2}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 69
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/Vpos;->n(Z)V

    return-object p1
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected abstract c(Ljava/lang/String;)V
.end method

.method protected c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->r:Z

    return-void
.end method

.method public d(I)Lcom/dspread/xpos/j;
    .locals 13

    .line 2
    const-string v0, "-----this is read----"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6
    iget v2, p0, Lcom/dspread/xpos/Vpos;->j:I

    add-int/2addr v2, p1

    mul-int/lit16 v3, v2, 0x3e8

    .line 10
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/dspread/xpos/Vpos;->c(I)Lcom/dspread/xpos/j;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    .line 12
    :try_start_1
    const-string p1, "[Vpos] receiveCommandWaitResult time out"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 16
    sget-boolean p1, Lcom/dspread/xpos/Vpos;->O:Z

    if-nez p1, :cond_0

    .line 17
    invoke-virtual {p0, v4}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->c()V

    .line 20
    const-string/jumbo p1, "receiveCommandWaitResult(1)setReceiver(true);"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-object v2

    .line 24
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uc_test: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, v0, v1, v3}, Lcom/dspread/xpos/Vpos;->a(JI)I

    move-result v6

    .line 27
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/dspread/xpos/Vpos;->h(Z)V

    move v8, v4

    :cond_2
    const/16 v9, 0xf

    if-eqz v2, :cond_d

    .line 30
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->b()B

    move-result v10

    const/16 v11, 0x23

    const/16 v12, 0x54

    if-eq v10, v11, :cond_3

    .line 31
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->b()B

    move-result v10

    if-ne v10, v12, :cond_d

    :cond_3
    sget-boolean v10, Lcom/dspread/xpos/Vpos;->O:Z

    if-nez v10, :cond_d

    .line 33
    iget-object v10, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v10}, Lcom/dspread/xpos/QPOSService;->K0()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 34
    invoke-virtual {p0, v4}, Lcom/dspread/xpos/Vpos;->h(Z)V

    :cond_4
    if-eqz v8, :cond_5

    .line 36
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->b()B

    move-result v10

    if-ne v10, v12, :cond_5

    .line 37
    const-string/jumbo v8, "showLEDForNFCSuccess"

    invoke-static {v8}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;->D()V

    move v8, v7

    .line 46
    :cond_5
    iget-object v10, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v10}, Lcom/dspread/xpos/QPOSService;->e1()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 47
    iget-object v10, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v10, v4}, Lcom/dspread/xpos/QPOSService;->P(Z)V

    goto :goto_0

    .line 49
    :cond_6
    iget-object v10, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v10, v7}, Lcom/dspread/xpos/QPOSService;->P(Z)V

    .line 54
    :goto_0
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->b()B

    move-result v10

    if-ne v10, v11, :cond_7

    .line 55
    invoke-direct {p0, v0, v1, v3}, Lcom/dspread/xpos/Vpos;->a(JI)I

    move-result v6

    :cond_7
    if-gtz v6, :cond_8

    goto :goto_1

    .line 61
    :cond_8
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 55
    :goto_1
    move-object v2, v5

    goto :goto_4

    .line 61
    :cond_9
    add-int/lit8 v6, v6, -0x1

    .line 66
    invoke-static {v4}, Lcom/dspread/xpos/Vpos;->k(I)V

    const/16 v10, 0x22

    if-nez v8, :cond_b

    .line 68
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->b()B

    move-result v11

    if-ne v11, v12, :cond_b

    iget v11, p0, Lcom/dspread/xpos/Vpos;->j:I

    add-int/2addr v11, p1

    mul-int/lit16 v11, v11, 0x3e8

    add-int/lit16 v11, v11, -0xbb8

    if-ge v6, v11, :cond_a

    goto :goto_2

    .line 73
    :cond_a
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->c()V

    goto :goto_3

    .line 74
    :cond_b
    :goto_2
    const-string/jumbo v11, "receiveCommandWaitResult while CMDID_QUERY"

    invoke-static {v11}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 75
    new-instance v11, Lcom/dspread/xpos/i;

    invoke-direct {v11, v10, v7, v7, v9}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 76
    invoke-virtual {p0, v11}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v2, p1, 0xd

    .line 82
    :try_start_2
    iget v9, p0, Lcom/dspread/xpos/Vpos;->j:I

    add-int/2addr v2, v9

    invoke-direct {p0, v2}, Lcom/dspread/xpos/Vpos;->c(I)Lcom/dspread/xpos/j;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v2, :cond_c

    .line 84
    :try_start_3
    iget-object v9, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v9}, Lcom/dspread/xpos/QPOSService;->K0()Z

    move-result v9

    if-eqz v9, :cond_c

    return-object v5

    :cond_c
    if-nez v2, :cond_2

    .line 87
    sget-boolean v9, Lcom/dspread/xpos/Vpos;->O:Z

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v9

    if-nez v9, :cond_2

    .line 89
    new-instance p1, Lcom/dspread/xpos/i;

    const/16 v0, 0xc

    invoke-direct {p1, v10, v7, v7, v0}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 p1, 0x2

    .line 93
    :try_start_4
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Vpos;->c(I)Lcom/dspread/xpos/j;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object p1

    .line 97
    :cond_d
    :goto_4
    :try_start_5
    sget-boolean p1, Lcom/dspread/xpos/Vpos;->O:Z

    if-eqz p1, :cond_e

    .line 98
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;->E()V

    return-object v2

    :cond_e
    if-eqz v2, :cond_14

    .line 103
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->b()B

    move-result p1

    const/16 v0, 0x36

    if-ne p1, v0, :cond_14

    .line 105
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->a()B

    move-result p1

    .line 106
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->g()B

    move-result v1

    const/16 v3, 0x5000

    .line 107
    new-array v6, v3, [B

    .line 109
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    .line 110
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v10

    .line 111
    invoke-static {v8, v7, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v8

    add-int/2addr v8, v7

    const/16 v10, 0x3a98

    .line 117
    :goto_5
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->b()B

    move-result v11

    if-ne v11, v0, :cond_12

    sget-boolean v11, Lcom/dspread/xpos/Vpos;->O:Z

    if-nez v11, :cond_12

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0xa

    .line 120
    invoke-static {v11}, Lcom/dspread/xpos/Vpos;->k(I)V

    if-nez v10, :cond_f

    goto :goto_6

    .line 126
    :cond_f
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 120
    :goto_6
    goto :goto_7

    .line 130
    :cond_10
    new-instance v11, Lcom/dspread/xpos/i;

    invoke-direct {v11, v0, v7, v7, v9}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 132
    invoke-virtual {p0, v11}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 134
    :try_start_6
    iget v2, p0, Lcom/dspread/xpos/Vpos;->j:I

    add-int/2addr v2, v9

    invoke-direct {p0, v2}, Lcom/dspread/xpos/Vpos;->c(I)Lcom/dspread/xpos/j;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-nez v2, :cond_11

    move-object v5, v2

    goto :goto_7

    .line 140
    :cond_11
    :try_start_7
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v11

    invoke-virtual {v2, v7, v11}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v11

    .line 141
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v12

    .line 142
    invoke-static {v11, v7, v6, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    add-int/2addr v8, v11

    goto :goto_5

    :cond_12
    move-object v5, v2

    :goto_7
    if-eqz v5, :cond_13

    .line 150
    :try_start_8
    new-array v0, v8, [B

    .line 151
    invoke-static {v6, v7, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    new-instance v2, Lcom/dspread/xpos/i0;

    invoke-direct {v2, v3}, Lcom/dspread/xpos/i0;-><init>(I)V

    sput-object v2, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    .line 153
    sget-object v2, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/i0;->c(B)V

    .line 154
    sget-object v2, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    int-to-byte p1, p1

    invoke-virtual {v2, p1}, Lcom/dspread/xpos/i0;->b(B)V

    .line 155
    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/i0;->d(B)V

    .line 156
    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    invoke-virtual {p1, v9}, Lcom/dspread/xpos/i0;->e(B)V

    .line 157
    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/i0;->a([B)V

    .line 158
    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    invoke-virtual {p1}, Lcom/dspread/xpos/i0;->a()V

    .line 159
    new-instance v2, Lcom/dspread/xpos/j;

    sget-object p1, Lcom/dspread/xpos/Vpos;->N:Lcom/dspread/xpos/i0;

    invoke-direct {v2, p1}, Lcom/dspread/xpos/j;-><init>(Lcom/dspread/xpos/i0;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_9

    .line 144
    :cond_13
    move-object v2, v5

    goto :goto_9

    .line 159
    :catch_0
    move-exception p1

    .line 166
    move-object v5, v2

    goto :goto_8

    .line 159
    :catch_1
    move-exception p1

    .line 166
    :goto_8
    const-string p1, "Vpos: receiveCommandWaitResult Exception"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    move-object v2, v5

    .line 168
    :cond_14
    :goto_9
    sget-boolean p1, Lcom/dspread/xpos/Vpos;->O:Z

    if-eqz p1, :cond_15

    .line 169
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;->E()V

    return-object v2

    .line 172
    :cond_15
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->c()V

    .line 173
    invoke-virtual {p0, v4}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 174
    const-string/jumbo p1, "receiveCommandWaitResult(2)"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-object v2
.end method

.method public abstract d()V
.end method

.method protected d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->f:Z

    return-void
.end method

.method public d([B)V
    .locals 4

    .line 175
    array-length v0, p1

    const/16 v1, 0x20

    sub-int/2addr v0, v1

    .line 177
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/dspread/xpos/Vpos;->z:[B

    .line 178
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iput v0, p0, Lcom/dspread/xpos/Vpos;->B:I

    .line 180
    iput v0, p0, Lcom/dspread/xpos/Vpos;->y:I

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data len:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/dspread/xpos/Vpos;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 183
    iput v3, p0, Lcom/dspread/xpos/Vpos;->A:I

    return-void
.end method

.method protected abstract e()V
.end method

.method public e(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCancelWait;;;;;;;;;;;;;;;;;; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    sput-boolean p1, Lcom/dspread/xpos/Vpos;->O:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5
    sput-boolean p1, Lcom/dspread/xpos/s;->b:Z

    :cond_0
    return-void
.end method

.method public e([B)V
    .locals 1

    .line 6
    array-length v0, p1

    .line 10
    iput-object p1, p0, Lcom/dspread/xpos/Vpos;->z:[B

    .line 11
    iput v0, p0, Lcom/dspread/xpos/Vpos;->B:I

    .line 12
    iput v0, p0, Lcom/dspread/xpos/Vpos;->y:I

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data len:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/dspread/xpos/Vpos;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 15
    const/4 p1, 0x0

    iput p1, p0, Lcom/dspread/xpos/Vpos;->A:I

    return-void
.end method

.method public e(I)[B
    .locals 4

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 17
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;->b()V

    .line 18
    new-instance v1, Lcom/dspread/xpos/Vpos$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dspread/xpos/Vpos$c;-><init>(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/Vpos$a;)V

    .line 19
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    mul-int/lit16 p1, p1, 0x3e8

    .line 22
    :cond_0
    sget-boolean v2, Lcom/dspread/xpos/Vpos;->M:Z

    if-nez v2, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 24
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/dspread/xpos/Vpos;->k(I)V

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    :cond_1
    const-string p1, "[Vpos] receiveUpgradeData: timeout"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 30
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 32
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    :goto_0
    const-string p1, "[Vpos] receiveUpgradeData: timeout end"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/Vpos;->s:[B

    return-object p1
.end method

.method protected f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dspread/xpos/Vpos;->g:I

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->a:Z

    return-void
.end method

.method public abstract f([B)V
.end method

.method protected f()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->r:Z

    return v0
.end method

.method protected abstract g()Ljava/lang/String;
.end method

.method protected g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dspread/xpos/Vpos;->o:I

    return-void
.end method

.method protected g(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->q:Z

    return-void
.end method

.method protected h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/Vpos;->g:I

    return v0
.end method

.method public h(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/dspread/xpos/Vpos;->c:I

    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->b:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNeedQuit;;;;;;;;;;;;;;;;;; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/Vpos;->o:I

    return v0
.end method

.method public i(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/dspread/xpos/Vpos;->E:I

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->m:Z

    return-void
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

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dspread/xpos/Vpos;->n:I

    return-void
.end method

.method protected j(Z)V
    .locals 0

    return-void
.end method

.method protected k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->t:Z

    return-void
.end method

.method protected abstract k()Z
.end method

.method public l(Z)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReceiver;;;;;;;;;;;;;;;;;; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 4
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->e:Z

    return-void
.end method

.method protected l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->q:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->l:Z

    return-void
.end method

.method public n()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/Vpos;->c:I

    return v0
.end method

.method protected n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->d:Z

    return-void
.end method

.method public o()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/Vpos;->E:I

    return v0
.end method

.method protected o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/Vpos;->i:Z

    return-void
.end method

.method protected p()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/dspread/xpos/Vpos;->B:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    iget v1, p0, Lcom/dspread/xpos/Vpos;->A:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method protected q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/Vpos;->n:I

    return v0
.end method

.method protected r()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Vpos;->h:Landroid/content/Context;

    return-object v0
.end method

.method protected s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->f:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->a:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->b:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->m:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->e:Z

    return v0
.end method

.method protected x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->l:Z

    return v0
.end method

.method protected y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->d:Z

    return v0
.end method

.method protected z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Vpos;->i:Z

    return v0
.end method
