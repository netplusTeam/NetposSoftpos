.class public Lcom/dspread/xpos/l;
.super Ljava/lang/Object;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/l$a;
    }
.end annotation


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;

.field private b:Lcom/dspread/xpos/k0$c;

.field private c:Lcom/dspread/xpos/m;

.field private d:Landroid/text/format/Time;

.field private e:I

.field private f:[I

.field private g:[I

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field protected l:Lcom/dspread/xpos/g;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/l;->d:Landroid/text/format/Time;

    .line 9
    const/16 v0, 0x1e

    iput v0, p0, Lcom/dspread/xpos/l;->k:I

    .line 14
    iput-object p1, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/l;)Lcom/dspread/xpos/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/l;->c:Lcom/dspread/xpos/m;

    return-object p0
.end method

.method private a([BI)Ljava/lang/String;
    .locals 6

    .line 7
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x5e

    if-ge v2, p2, :cond_1

    .line 12
    aget-byte v4, p1, v2

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v1

    :goto_2
    if-ge v2, p2, :cond_3

    .line 22
    aget-byte v5, p1, v2

    if-ne v5, v3, :cond_2

    goto :goto_3

    .line 26
    :cond_2
    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 31
    :cond_3
    :goto_3
    new-array p1, v4, [B

    .line 32
    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method private a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/l;->d:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/l;->d:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, p0, Lcom/dspread/xpos/l;->e:I

    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/l;->d:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/l;->d:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    .line 6
    iget v1, p0, Lcom/dspread/xpos/l;->e:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x3c

    :cond_0
    sub-int/2addr v0, v1

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b([BI)Ljava/lang/String;
    .locals 3

    .line 187
    const/4 v0, 0x3

    new-array v1, v0, [B

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p2, p2, 0x4

    .line 188
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private c([BI)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v1, v0, [B

    add-int/lit8 p2, p2, 0x1

    .line 2
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 43
    iput p3, p0, Lcom/dspread/xpos/l;->k:I

    .line 44
    new-instance p1, Lcom/dspread/xpos/m;

    invoke-direct {p1}, Lcom/dspread/xpos/m;-><init>()V

    iput-object p1, p0, Lcom/dspread/xpos/l;->c:Lcom/dspread/xpos/m;

    .line 45
    new-instance p2, Lcom/dspread/xpos/g;

    invoke-static {}, Lcom/dspread/xpos/k0;->F()Lcom/dspread/xpos/k0;

    move-result-object p3

    iget-object p3, p3, Lcom/dspread/xpos/k0;->Q:Ljava/io/OutputStream;

    invoke-direct {p2, p1, p3}, Lcom/dspread/xpos/g;-><init>(Lcom/dspread/xpos/m;Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    .line 46
    iget-object p1, p0, Lcom/dspread/xpos/l;->b:Lcom/dspread/xpos/k0$c;

    if-nez p1, :cond_0

    .line 47
    new-instance p1, Lcom/dspread/xpos/l$a;

    invoke-direct {p1, p0}, Lcom/dspread/xpos/l$a;-><init>(Lcom/dspread/xpos/l;)V

    iput-object p1, p0, Lcom/dspread/xpos/l;->b:Lcom/dspread/xpos/k0$c;

    .line 50
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/k0;->F()Lcom/dspread/xpos/k0;

    move-result-object p1

    iget-object p2, p0, Lcom/dspread/xpos/l;->b:Lcom/dspread/xpos/k0$c;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/k0;->a(Lcom/dspread/xpos/k0$c;)V

    .line 51
    iget p1, p0, Lcom/dspread/xpos/l;->k:I

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/l;->b(I)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 34
    iput p3, p0, Lcom/dspread/xpos/l;->k:I

    .line 35
    new-instance p1, Lcom/dspread/xpos/m;

    invoke-direct {p1}, Lcom/dspread/xpos/m;-><init>()V

    iput-object p1, p0, Lcom/dspread/xpos/l;->c:Lcom/dspread/xpos/m;

    .line 36
    new-instance p2, Lcom/dspread/xpos/g;

    invoke-static {}, Lcom/dspread/xpos/k0;->F()Lcom/dspread/xpos/k0;

    move-result-object p3

    iget-object p3, p3, Lcom/dspread/xpos/k0;->Q:Ljava/io/OutputStream;

    invoke-direct {p2, p1, p3}, Lcom/dspread/xpos/g;-><init>(Lcom/dspread/xpos/m;Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    .line 37
    iget-object p1, p0, Lcom/dspread/xpos/l;->b:Lcom/dspread/xpos/k0$c;

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Lcom/dspread/xpos/l$a;

    invoke-direct {p1, p0}, Lcom/dspread/xpos/l$a;-><init>(Lcom/dspread/xpos/l;)V

    iput-object p1, p0, Lcom/dspread/xpos/l;->b:Lcom/dspread/xpos/k0$c;

    .line 41
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/k0;->F()Lcom/dspread/xpos/k0;

    move-result-object p1

    iget-object p2, p0, Lcom/dspread/xpos/l;->b:Lcom/dspread/xpos/k0$c;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/k0;->a(Lcom/dspread/xpos/k0$c;)V

    .line 42
    iget p1, p0, Lcom/dspread/xpos/l;->k:I

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/l;->b(I)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/dspread/xpos/l;->c:Lcom/dspread/xpos/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/m;->a(Z)V

    return-void
.end method

.method protected b(I)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/l;->c:Lcom/dspread/xpos/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/m;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/g;->a(Z)Z

    const-wide/16 v3, 0xa

    .line 6
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :goto_0
    new-array v0, v2, [I

    .line 15
    iget-object v3, p0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v3}, Lcom/dspread/xpos/g;->a()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {p1, v0, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    return v2

    :cond_0
    nop

    .line 25
    invoke-direct {p0}, Lcom/dspread/xpos/l;->a()V

    .line 26
    iget-object v3, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->J1()V

    .line 27
    iget-object v3, p0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v3}, Lcom/dspread/xpos/g;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 30
    iget-object v3, p0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v3}, Lcom/dspread/xpos/g;->e()Z

    .line 31
    :cond_1
    iget-object v3, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 33
    iget-object v3, p0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v3}, Lcom/dspread/xpos/g;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    const-string/jumbo p1, "test:CardIsInsert "

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    move p1, v1

    goto :goto_3

    :cond_2
    const-wide/16 v5, 0x3e8

    .line 40
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v0}, Lcom/dspread/xpos/g;->c()[I

    move-result-object v0

    .line 45
    array-length v3, v0

    if-eqz v3, :cond_3

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "test:MSR_CheckIsSwaped :"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 51
    :cond_3
    invoke-direct {p0, p1}, Lcom/dspread/xpos/l;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    const-string/jumbo p1, "test:CardI msr over time "

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v3, Lcom/dspread/xpos/QPOSService$Error;->CMD_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    .line 61
    :goto_2
    move p1, v2

    goto :goto_3

    .line 31
    :cond_4
    move p1, v2

    goto :goto_3

    .line 27
    :cond_5
    move p1, v1

    .line 61
    :goto_3
    iget-object v3, p0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v3}, Lcom/dspread/xpos/g;->d()Z

    .line 63
    iget-object v3, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v3

    if-nez v3, :cond_6

    .line 64
    invoke-virtual {p0}, Lcom/dspread/xpos/l;->b()V

    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 68
    iget-object p1, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {p1, v0, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    return v2

    :cond_7
    if-nez p1, :cond_d

    .line 72
    iget-object p1, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 75
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/dspread/xpos/l;->h:[I

    .line 76
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/dspread/xpos/l;->i:[I

    .line 77
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/dspread/xpos/l;->j:[I

    .line 78
    array-length p1, v0

    const/4 v3, 0x4

    if-le p1, v3, :cond_a

    array-length p1, v0

    aget v4, v0, v1

    const/4 v5, 0x2

    aget v6, v0, v5

    add-int/2addr v6, v4

    const/4 v7, 0x3

    aget v8, v0, v7

    add-int/2addr v6, v8

    add-int/2addr v6, v3

    if-ne p1, v6, :cond_a

    .line 80
    new-array p1, v4, [I

    iput-object p1, p0, Lcom/dspread/xpos/l;->h:[I

    .line 81
    if-eqz v4, :cond_8

    .line 83
    invoke-static {v0, v3, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    nop

    .line 86
    aget p1, v0, v5

    new-array v4, p1, [I

    iput-object v4, p0, Lcom/dspread/xpos/l;->i:[I

    .line 87
    if-eqz p1, :cond_9

    .line 89
    iget-object v5, p0, Lcom/dspread/xpos/l;->h:[I

    array-length v5, v5

    add-int/2addr v5, v3

    invoke-static {v0, v5, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    nop

    .line 92
    aget p1, v0, v7

    new-array v4, p1, [I

    iput-object v4, p0, Lcom/dspread/xpos/l;->j:[I

    .line 93
    if-eqz p1, :cond_a

    .line 95
    iget-object v5, p0, Lcom/dspread/xpos/l;->h:[I

    array-length v5, v5

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/dspread/xpos/l;->i:[I

    array-length v3, v3

    add-int/2addr v5, v3

    invoke-static {v0, v5, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "track1.length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/l;->h:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ,track1.length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/dspread/xpos/l;->i:[I

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/l;->j:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/dspread/xpos/l;->h:[I

    invoke-static {p1}, Lcom/dspread/xpos/Util;->intArr2ByteArr([I)[B

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/dspread/xpos/l;->i:[I

    invoke-static {v0}, Lcom/dspread/xpos/Util;->intArr2ByteArr([I)[B

    move-result-object v0

    .line 102
    iget-object v3, p0, Lcom/dspread/xpos/l;->j:[I

    invoke-static {v3}, Lcom/dspread/xpos/Util;->intArr2ByteArr([I)[B

    move-result-object v3

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MsrData1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MsrData2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MsrData3: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 108
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    if-eqz v0, :cond_c

    .line 109
    array-length v5, v0

    if-nez v5, :cond_b

    goto/16 :goto_4

    .line 113
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v7, p1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 116
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 117
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "="

    const-string v12, "D"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    array-length v11, p1

    invoke-direct {p0, p1, v11}, Lcom/dspread/xpos/l;->a([BI)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {p0, v0, v11}, Lcom/dspread/xpos/l;->c([BI)Ljava/lang/String;

    move-result-object v11

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-direct {p0, v0, v12}, Lcom/dspread/xpos/l;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v12, "formatID"

    const-string v13, "38"

    invoke-virtual {v4, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v12, "maskedPAN"

    invoke-virtual {v4, v12, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "expiryDate"

    invoke-virtual {v4, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "cardholderName"

    invoke-virtual {v4, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string p1, "ksn"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo p1, "serviceCode"

    invoke-virtual {v4, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo p1, "track1Length"

    invoke-virtual {v4, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo p1, "track2Length"

    invoke-virtual {v4, p1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo p1, "track3Length"

    invoke-virtual {v4, p1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string p1, "encTracks"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string p1, "encTrack1"

    invoke-virtual {v4, p1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string p1, "encTrack2"

    invoke-virtual {v4, p1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string p1, "encTrack3"

    invoke-virtual {v4, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo p1, "partialTrack"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo p1, "pinBlock"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo p1, "pinKsn"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo p1, "trackksn"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo p1, "trackRandomNumber"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo p1, "pinRandomNumber"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo p1, "psamNo"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string p1, "encPAN"

    invoke-virtual {v4, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p1, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {p1, v0, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    goto :goto_5

    .line 146
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/dspread/xpos/l;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {p1, v0, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    .line 186
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/dspread/xpos/l;->b()V

    return v1
.end method
