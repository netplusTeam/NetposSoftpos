.class public Lcom/dspread/xpos/DoEmvApp;
.super Ljava/lang/Object;
.source "DoEmvApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/DoEmvApp$EmvTradeState;,
        Lcom/dspread/xpos/DoEmvApp$b;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "06"

.field private static final B:B = 0x0t

.field private static final C:B = 0x1t

.field private static final D:B = 0x2t

.field private static final E:B = 0x3t

.field private static final F:B = 0x4t

.field private static final G:B = 0x5t

.field private static final H:B = 0x6t

.field private static final I:B = 0x7t

.field private static final J:B = 0x8t

.field private static final K:B = 0x9t

.field private static final L:B = 0xat

.field private static final M:B = 0xbt

.field private static final N:B = 0xct

.field private static final O:B = 0xdt

.field protected static k:I = 0x1e

.field private static final l:Ljava/lang/String; = "01"

.field private static final m:Ljava/lang/String; = "02"

.field private static final n:Ljava/lang/String; = "03"

.field private static final o:Ljava/lang/String; = "04"

.field private static final p:Ljava/lang/String; = "05"

.field private static final q:Ljava/lang/String; = "06"

.field private static final r:Ljava/lang/String; = "07"

.field private static final s:Ljava/lang/String; = "08"

.field private static final t:Ljava/lang/String; = "22"

.field private static final u:Ljava/lang/String; = "21"

.field private static final v:Ljava/lang/String; = "01"

.field private static final w:Ljava/lang/String; = "02"

.field private static final x:Ljava/lang/String; = "03"

.field private static final y:Ljava/lang/String; = "04"

.field private static final z:Ljava/lang/String; = "05"


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;

.field protected b:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/dspread/xpos/s;

.field private f:Z

.field private g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    iput-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->b:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    .line 284
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/DoEmvApp;->f:Z

    .line 1487
    const/4 v1, 0x0

    iput v1, p0, Lcom/dspread/xpos/DoEmvApp;->i:I

    .line 2282
    iput-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->j:Ljava/lang/String;

    .line 2283
    iput-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    .line 2284
    new-instance v0, Lcom/dspread/xpos/s;

    invoke-direct {v0, p1}, Lcom/dspread/xpos/s;-><init>(Lcom/dspread/xpos/QPOSService;)V

    iput-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->e:Lcom/dspread/xpos/s;

    return-void
.end method

.method private a(I)I
    .locals 3

    .line 87
    invoke-direct {p0}, Lcom/dspread/xpos/DoEmvApp;->h()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    const/16 v1, 0x28

    if-eq p1, v1, :cond_2

    const/16 v1, 0x31

    if-eq p1, v1, :cond_1

    const/16 v1, 0x33

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CAPK_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    goto :goto_0

    .line 105
    :pswitch_1
    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->SELECT_APP_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    goto :goto_0

    .line 106
    :pswitch_2
    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_BLOCKED_OR_NO_EMV_APPS:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    goto :goto_0

    .line 113
    :cond_0
    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->TRANSACTION_TERMINATED:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 114
    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    goto :goto_0

    .line 115
    :cond_1
    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NOT_ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 116
    :cond_2
    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->TRANSACTION_TERMINATED:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 117
    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CANCEL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    :goto_0
    const/16 v1, 0x46

    if-ne p1, v1, :cond_3

    .line 137
    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CAPK_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    :cond_3
    return p1

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(III)I
    .locals 6

    .line 17
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object v0

    .line 18
    invoke-direct {p0}, Lcom/dspread/xpos/DoEmvApp;->h()Lcom/dspread/xpos/QPOSService;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->x0()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    const/4 v0, 0x3

    .line 20
    new-array v0, v0, [B

    int-to-byte p1, p1

    .line 21
    aput-byte p1, v0, v4

    int-to-byte p1, p2

    .line 22
    aput-byte p1, v0, v5

    int-to-byte p1, p3

    .line 23
    aput-byte p1, v0, v3

    .line 24
    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DoEmvApp;->e(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 26
    :cond_0
    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->x0()I

    move-result p1

    if-eq p1, v3, :cond_2

    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    iget-object p1, p1, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {p1}, Lcom/dspread/xpos/g;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    return p1

    :cond_2
    :goto_0
    const/16 p1, 0x10

    .line 27
    new-array p2, p1, [B

    move p3, v4

    :goto_1
    if-ge p3, p1, :cond_3

    .line 29
    aput-byte v4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->f()I

    move-result p1

    if-gez p1, :cond_5

    const/4 p3, -0x3

    if-ne p1, p3, :cond_4

    .line 34
    const/16 p3, -0x12

    aput-byte p3, p2, v4

    .line 35
    aput-byte p3, p2, v5

    .line 36
    invoke-virtual {v0, p2, v3}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_pin([BI)V

    :cond_4
    return p1

    .line 41
    :cond_5
    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->J0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    int-to-byte v1, p1

    .line 42
    aput-byte v1, p2, v4

    .line 43
    invoke-static {p3, v4, p2, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p1, 0x1

    .line 44
    invoke-virtual {v0, p2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_pin([BI)V

    .line 45
    invoke-virtual {v0, p3, p1}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    return p1
.end method

.method private a(II[BI)I
    .locals 0

    return p4
.end method

.method private a(I[BI)I
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/dspread/xpos/DoEmvApp;->h()Lcom/dspread/xpos/QPOSService;

    move-result-object p1

    .line 81
    sget-object v0, Lcom/dspread/xpos/QPOSService$Display;->TRANSACTION_TERMINATED:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 82
    new-array v0, p3, [B

    .line 83
    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->l(Ljava/lang/String;)V

    .line 86
    sget-object p2, Lcom/dspread/xpos/QPOSService$TransactionResult;->TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return p3
.end method

.method static synthetic a(Lcom/dspread/xpos/DoEmvApp;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DoEmvApp;->a(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/DoEmvApp;III)I
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/DoEmvApp;->a(III)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/DoEmvApp;I[BI)I
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/DoEmvApp;->a(I[BI)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/DoEmvApp;[BII)I
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/DoEmvApp;->a([BII)I

    move-result p0

    return p0
.end method

.method private a([BII)I
    .locals 7

    .line 46
    const-string p2, "__get_select_emv_app_result: "

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const/4 p3, 0x0

    aget-byte v0, p1, p3

    const/4 v1, 0x1

    move v2, p3

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/2addr v3, v1

    add-int/2addr v3, v1

    add-int/lit8 v4, v3, 0x1

    .line 55
    aget-byte v3, p1, v3

    .line 56
    new-array v5, v3, [B

    .line 57
    invoke-static {p1, v4, v5, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v3, v4

    .line 60
    invoke-virtual {p2, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/dspread/xpos/DoEmvApp;->h()Lcom/dspread/xpos/QPOSService;

    move-result-object p1

    .line 65
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 66
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/ArrayList;)V

    .line 67
    :goto_1
    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object p2

    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne p2, v0, :cond_1

    .line 69
    :try_start_0
    sget p2, Lcom/dspread/xpos/DoEmvApp;->k:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 75
    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result p2

    if-nez p2, :cond_2

    return p3

    .line 78
    :cond_2
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->L0()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_app(I)V

    return p3
.end method

.method private a(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;
    .locals 5

    .line 1452
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 1454
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->y0()Lcom/dspread/xpos/QPOSService$EmvOption;

    move-result-object v2

    sget-object v3, Lcom/dspread/xpos/QPOSService$EmvOption;->START:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 1455
    aput-byte v4, v1, v4

    goto :goto_0

    .line 1456
    :cond_0
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->y0()Lcom/dspread/xpos/QPOSService$EmvOption;

    move-result-object v2

    sget-object v3, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v2, v3, :cond_1

    .line 1457
    aput-byte v0, v1, v4

    .line 1460
    :cond_1
    :goto_0
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v2, 0x16

    const/16 v3, 0x30

    const/16 v4, 0x3c

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 1461
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1462
    invoke-virtual {p1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 4

    .line 1467
    new-instance v0, Lcom/dspread/xpos/i;

    const/4 v1, 0x1

    new-array v1, v1, [B

    int-to-byte p2, p2

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    const/16 p2, 0x16

    const/16 v2, 0x31

    const/16 v3, 0x3c

    invoke-direct {v0, p2, v2, v3, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 1468
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1469
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EmvOption;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 16

    .line 1321
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EMVStart>> tradeAmount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "cashbackAmount: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x13

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x2

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    .line 1330
    new-array v6, v6, [B

    .line 1333
    sget-object v10, Lcom/dspread/xpos/QPOSService$EmvOption;->START:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v11, 0x3

    const/4 v12, 0x0

    if-ne v2, v10, :cond_0

    .line 1334
    aput-byte v12, v6, v12

    move v2, v8

    goto :goto_0

    .line 1335
    :cond_0
    sget-object v10, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v2, v10, :cond_1

    .line 1336
    aput-byte v8, v6, v12

    move v2, v8

    goto :goto_0

    .line 1337
    :cond_1
    sget-object v10, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_PIN:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v2, v10, :cond_2

    .line 1338
    aput-byte v9, v6, v12

    move v2, v8

    goto :goto_0

    .line 1339
    :cond_2
    sget-object v9, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE_FORCE_PIN:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v2, v9, :cond_3

    .line 1340
    aput-byte v11, v6, v12

    move v2, v8

    goto :goto_0

    .line 1341
    :cond_3
    sget-object v9, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v2, v9, :cond_4

    const/16 v2, -0x80

    .line 1342
    aput-byte v2, v6, v12

    move v2, v8

    goto :goto_0

    .line 1343
    :cond_4
    sget-object v9, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v2, v9, :cond_5

    const/16 v2, -0x7f

    .line 1344
    aput-byte v2, v6, v12

    move v2, v8

    goto :goto_0

    .line 1345
    :cond_5
    sget-object v9, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_PIN_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v2, v9, :cond_6

    const/16 v2, -0x7e

    .line 1346
    aput-byte v2, v6, v12

    move v2, v8

    goto :goto_0

    .line 1347
    :cond_6
    sget-object v9, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE_FORCE_PIN_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v2, v9, :cond_7

    const/16 v2, -0x7d

    .line 1348
    aput-byte v2, v6, v12

    move v2, v8

    goto :goto_0

    .line 1347
    :cond_7
    move v2, v12

    .line 1348
    :goto_0
    add-int/lit8 v9, v2, 0x1

    .line 1350
    invoke-static/range {p3 .. p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    aget-byte v10, v10, v12

    aput-byte v10, v6, v2

    .line 1353
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v10, 0x8

    if-gt v2, v10, :cond_8

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    .line 1356
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "06"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1358
    :goto_1
    array-length v3, v2

    invoke-static {v2, v12, v6, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1359
    array-length v2, v2

    add-int/2addr v9, v2

    .line 1362
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v10, :cond_9

    .line 1363
    const-string v2, "FFFFFFFFFFFF"

    goto :goto_2

    .line 1365
    :cond_9
    const-string v2, "FFFFFFFF"

    :goto_2
    nop

    .line 1369
    const-string v3, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1370
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v13

    goto :goto_3

    .line 1369
    :cond_a
    move v13, v12

    .line 1372
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "tradeamount:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1373
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-virtual {v2, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1374
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EMVStart>> str: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1376
    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1377
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EMVStart>> timearr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1378
    array-length v13, v2

    invoke-static {v2, v12, v6, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1379
    array-length v2, v2

    add-int/2addr v9, v2

    .line 1381
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v10, :cond_b

    .line 1382
    move-object v2, v3

    goto :goto_4

    .line 1384
    :cond_b
    const-string v2, "0000"

    .line 1386
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1387
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v11, :cond_c

    .line 1388
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v11, p6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 1387
    :cond_c
    move-object/from16 v11, p6

    move-object v10, v11

    .line 1390
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EMVStart>> currencyCode: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1391
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1392
    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1393
    array-length v10, v2

    invoke-static {v2, v12, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1394
    array-length v2, v2

    add-int/2addr v9, v2

    add-int/lit8 v2, v9, 0x1

    .line 1397
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 1398
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v12, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1400
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, 0x1

    .line 1401
    aput-byte v12, v6, v2

    .line 1402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "paras: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x30

    if-nez v2, :cond_d

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    add-int/lit8 v2, v4, 0x1

    .line 1405
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v6, v4

    .line 1406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EMVStart>> cashbackAmount: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v4, v12, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1408
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_6

    :cond_d
    add-int/lit8 v2, v4, 0x1

    .line 1410
    aput-byte v8, v6, v4

    add-int/lit8 v4, v2, 0x1

    .line 1411
    aput-byte v3, v6, v2

    move v2, v4

    .line 1414
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1424
    iget-object v4, v0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4}, Lcom/dspread/xpos/QPOSService;->H0()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v4

    .line 1425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EMVStart>> getOnlineTime: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v9}, Lcom/dspread/xpos/QPOSService;->H0()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1426
    invoke-static {v4, v12, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1435
    iget-object v2, v0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->q0()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1436
    new-instance v2, Lcom/dspread/xpos/i;

    const/16 v4, 0x16

    const/16 v5, 0x3c

    invoke-direct {v2, v4, v3, v5, v6}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 1445
    invoke-virtual {v1, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1446
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    return-object v1

    .line 1447
    :cond_e
    const-string/jumbo v1, "user cancel"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 1449
    iget-object v1, v0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v12}, Lcom/dspread/xpos/QPOSService;->P(Z)V

    .line 1450
    iget-object v1, v0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v12}, Lcom/dspread/xpos/QPOSService;->O(Z)V

    .line 1451
    iget-object v1, v0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v12}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    .line 1463
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0x40

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 1465
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1466
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 3

    .line 1470
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "FF"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    rsub-int/lit8 v0, v0, 0x8

    const-string v1, "FFFFFFFF"

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1474
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EMVInitSession=================arg : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1475
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 1476
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0x16

    const/16 v1, 0xa

    invoke-direct {p3, v0, v2, v1, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 1477
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1478
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/dspread/xpos/j;)Ljava/lang/String;
    .locals 2

    .line 1320
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/Hashtable;Lcom/dspread/xpos/j;Lcom/dspread/xpos/Vpos;)Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dspread/xpos/j;",
            "Lcom/dspread/xpos/Vpos;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 945
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x43

    if-ne v0, v2, :cond_0

    .line 946
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 947
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, v0}, Lcom/dspread/xpos/QPOSService;->n(Ljava/lang/String;)V

    .line 948
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 949
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 957
    :cond_0
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/16 v2, 0x41

    if-ne v0, v2, :cond_1

    .line 958
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 959
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 977
    :cond_1
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/dspread/xpos/DoEmvApp;->a([B)Ljava/util/Hashtable;

    move-result-object p2

    .line 978
    const-string/jumbo v0, "transResult"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 979
    const-string/jumbo v2, "packType"

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 980
    const-string v3, "issScriptRes"

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    .line 981
    const-string v3, "forceAccept"

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 982
    const-string v3, "iccData"

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 985
    const-string v4, "03"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 986
    iget-object p3, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result p3

    if-nez p3, :cond_2

    return-object p1

    .line 989
    :cond_2
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "code"

    invoke-virtual {p1, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "emvAppType"

    invoke-virtual {p1, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    invoke-virtual {p1, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 993
    :cond_3
    const-string v1, "02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "07"

    if-eqz v1, :cond_6

    .line 994
    const-string v0, "06"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1000
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1002
    iget-object p3, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {p3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 1003
    iget-object p3, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2}, Lcom/dspread/xpos/QPOSService;->G(Ljava/lang/String;)V

    .line 1004
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p3, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-object p1

    .line 1005
    :cond_5
    :goto_0
    iget-object p3, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {p3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 1006
    iget-object p3, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2}, Lcom/dspread/xpos/QPOSService;->u(Ljava/lang/String;)V

    .line 1007
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p3, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-object p1

    .line 1016
    :cond_6
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1017
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1019
    iget-object p3, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {p3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 1020
    iget-object p3, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2}, Lcom/dspread/xpos/QPOSService;->G(Ljava/lang/String;)V

    .line 1021
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p3, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-object p1

    .line 1023
    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1025
    :cond_8
    iget-object p3, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {p3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 1026
    iget-object p3, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2}, Lcom/dspread/xpos/QPOSService;->u(Ljava/lang/String;)V

    .line 1027
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p3, Lcom/dspread/xpos/QPOSService$TransactionResult;->APPROVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-object p1

    .line 1032
    :cond_9
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/QPOSService;->b(Lcom/dspread/xpos/Vpos;)Z

    .line 1033
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p3, Lcom/dspread/xpos/QPOSService$Error;->UNKNOWN:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-object p1
.end method

.method private a(ZLjava/lang/String;)Ljava/util/Hashtable;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1738
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hashtable-anlysData:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lcom/dspread/xpos/DoEmvApp;->i:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1742
    iget v0, v1, Lcom/dspread/xpos/DoEmvApp;->i:I

    const-string/jumbo v4, "tlv"

    if-eqz v0, :cond_15

    const/16 v5, 0x10

    if-eq v0, v5, :cond_15

    const/16 v5, 0x26

    if-eq v0, v5, :cond_15

    const/16 v5, 0x30

    if-ne v0, v5, :cond_0

    goto/16 :goto_b

    :cond_0
    const/16 v5, 0x20

    if-ne v0, v5, :cond_1

    .line 1746
    invoke-static/range {p2 .. p2}, Lcom/dspread/xpos/Util;->a(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v5, 0x11

    if-ne v0, v5, :cond_2

    .line 1748
    invoke-static/range {p2 .. p2}, Lcom/dspread/xpos/Util;->c(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v5, 0x17

    if-ne v0, v5, :cond_3

    .line 1750
    invoke-static/range {p2 .. p2}, Lcom/dspread/xpos/Util;->b(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0

    .line 1756
    :cond_3
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1757
    array-length v5, v0

    .line 1758
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uclength==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1761
    const/4 v6, 0x2

    new-array v7, v6, [B

    const/4 v8, 0x0

    aget-byte v9, v0, v8

    aput-byte v9, v7, v8

    const/4 v9, 0x1

    aget-byte v10, v0, v9

    aput-byte v10, v7, v9

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v7

    .line 1763
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iccdatalen=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1765
    new-array v10, v7, [B

    .line 1766
    invoke-static {v0, v6, v10, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1767
    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v7, v6

    const-string v11, "iccdata"

    if-lt v7, v5, :cond_4

    .line 1770
    :try_start_1
    invoke-virtual {v3, v11, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_4
    add-int/2addr v7, v6

    add-int/lit8 v6, v7, 0x1

    .line 1775
    aget-byte v7, v0, v7

    .line 1776
    new-array v12, v7, [B

    .line 1777
    invoke-static {v0, v6, v12, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1778
    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x1

    .line 1781
    aget-byte v6, v0, v6

    .line 1782
    new-array v13, v6, [B

    .line 1783
    invoke-static {v0, v7, v13, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1784
    invoke-static {v13}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v7, v6

    add-int/lit8 v6, v7, 0x1

    .line 1787
    aget-byte v7, v0, v7

    .line 1788
    new-array v14, v7, [B

    .line 1789
    invoke-static {v0, v6, v14, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1790
    invoke-static {v14}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v14

    add-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x1

    .line 1793
    aget-byte v6, v0, v6

    .line 1794
    new-array v15, v6, [B

    .line 1795
    invoke-static {v0, v7, v15, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1796
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v15}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v6

    add-int/lit8 v6, v7, 0x1

    .line 1799
    aget-byte v7, v0, v7

    .line 1800
    new-array v15, v7, [B

    .line 1801
    invoke-static {v0, v6, v15, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1802
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v15}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x1

    .line 1805
    aget-byte v6, v0, v6

    .line 1806
    new-array v15, v6, [B

    .line 1807
    const/4 v2, 0x0

    invoke-static {v0, v7, v15, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1808
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v15}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v6

    add-int/lit8 v2, v7, 0x1

    .line 1811
    aget-byte v6, v0, v7

    .line 1812
    new-array v7, v6, [B

    .line 1813
    const/4 v15, 0x0

    invoke-static {v0, v2, v7, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1814
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v2, v6

    add-int/lit8 v6, v2, 0x1

    .line 1817
    aget-byte v2, v0, v2

    .line 1818
    new-array v7, v2, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1819
    move-object/from16 v17, v4

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v0, v6, v7, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1820
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v2

    add-int/lit8 v2, v6, 0x1

    .line 1823
    aget-byte v6, v0, v6

    .line 1824
    new-array v7, v6, [B

    .line 1825
    move-object/from16 v18, v10

    const/4 v10, 0x0

    invoke-static {v0, v2, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1826
    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v2, v6

    add-int/lit8 v6, v2, 0x1

    .line 1829
    aget-byte v2, v0, v2

    .line 1830
    new-array v10, v2, [B

    .line 1831
    move-object/from16 v19, v11

    const/4 v11, 0x0

    invoke-static {v0, v6, v10, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1832
    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v6, v2

    add-int/lit8 v2, v6, 0x1

    .line 1835
    aget-byte v6, v0, v6

    .line 1836
    new-array v11, v6, [B

    .line 1837
    move-object/from16 v20, v10

    const/4 v10, 0x0

    invoke-static {v0, v2, v11, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1838
    invoke-static {v11}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/2addr v2, v6

    .line 1841
    nop

    .line 1842
    const-string v6, ""

    if-ge v2, v5, :cond_5

    add-int/lit8 v11, v2, 0x1

    .line 1844
    :try_start_3
    aget-byte v2, v0, v2

    .line 1845
    move-object/from16 v21, v10

    new-array v10, v2, [B

    .line 1846
    move-object/from16 v22, v7

    const/4 v7, 0x0

    invoke-static {v0, v11, v10, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1847
    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v2, v11

    goto :goto_0

    .line 1842
    :cond_5
    move-object/from16 v22, v7

    move-object/from16 v21, v10

    move-object v7, v6

    .line 1847
    :goto_0
    if-ge v2, v5, :cond_6

    add-int/lit8 v10, v2, 0x1

    .line 1852
    aget-byte v2, v0, v2

    .line 1853
    new-array v11, v2, [B

    .line 1854
    move-object/from16 v23, v7

    const/4 v7, 0x0

    invoke-static {v0, v10, v11, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1855
    invoke-static {v11}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v2, v10

    goto :goto_1

    .line 1847
    :cond_6
    move-object/from16 v23, v7

    move-object v7, v6

    .line 1858
    :goto_1
    if-ge v2, v5, :cond_7

    add-int/lit8 v10, v2, 0x1

    .line 1860
    aget-byte v2, v0, v2

    .line 1861
    new-array v11, v2, [B

    .line 1862
    move-object/from16 v24, v7

    const/4 v7, 0x0

    invoke-static {v0, v10, v11, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1863
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v11}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v2, v10

    goto :goto_2

    .line 1858
    :cond_7
    move-object/from16 v24, v7

    move-object v7, v6

    .line 1866
    :goto_2
    nop

    .line 1867
    nop

    .line 1868
    if-ge v2, v5, :cond_8

    add-int/lit8 v10, v2, 0x1

    .line 1870
    aget-byte v2, v0, v2

    add-int/lit8 v11, v10, 0x1

    .line 1871
    aget-byte v10, v0, v10

    add-int/lit8 v25, v11, 0x1

    .line 1872
    aget-byte v11, v0, v11

    .line 1874
    move-object/from16 v26, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1875
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1876
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    move-object v10, v7

    move-object v7, v2

    move/from16 v2, v25

    goto :goto_3

    .line 1868
    :cond_8
    move-object/from16 v26, v7

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    .line 1879
    :goto_3
    if-ge v2, v5, :cond_9

    move-object/from16 v25, v12

    add-int/lit8 v12, v2, 0x1

    .line 1881
    aget-byte v2, v0, v2

    .line 1882
    move-object/from16 v27, v11

    new-array v11, v2, [B

    .line 1883
    move-object/from16 v28, v10

    const/4 v10, 0x0

    invoke-static {v0, v12, v11, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1884
    invoke-static {v11}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v2, v12

    goto :goto_4

    .line 1879
    :cond_9
    move-object/from16 v28, v10

    move-object/from16 v27, v11

    move-object/from16 v25, v12

    move-object v10, v6

    .line 1888
    :goto_4
    if-ge v2, v5, :cond_b

    add-int/lit8 v11, v2, 0x1

    .line 1890
    aget-byte v2, v0, v2

    const/16 v12, -0x37

    if-eq v2, v12, :cond_a

    add-int/lit8 v2, v11, -0x1

    move-object/from16 v29, v10

    move-object v10, v6

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v11, 0x1

    .line 1894
    aget-byte v11, v0, v11

    .line 1895
    new-array v12, v11, [B

    .line 1896
    move-object/from16 v29, v10

    const/4 v10, 0x0

    invoke-static {v0, v2, v12, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1897
    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v2, v11

    goto :goto_5

    .line 1888
    :cond_b
    move-object/from16 v29, v10

    move-object v10, v6

    .line 1902
    :goto_5
    if-ge v2, v5, :cond_10

    add-int/lit8 v11, v2, 0x1

    .line 1905
    aget-byte v2, v0, v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_e

    if-ge v11, v5, :cond_d

    .line 1910
    new-array v12, v2, [B

    .line 1911
    move-object/from16 v16, v10

    const/4 v10, 0x0

    invoke-static {v0, v11, v12, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1912
    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    .line 1914
    const-string v12, "FF"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1915
    move-object v10, v6

    :cond_c
    add-int/2addr v2, v11

    goto :goto_6

    :cond_d
    move-object/from16 v16, v10

    move-object v10, v6

    move v2, v11

    goto :goto_6

    :cond_e
    move-object/from16 v16, v10

    add-int/2addr v2, v11

    if-ge v2, v5, :cond_f

    add-int/lit8 v10, v2, 0x1

    .line 1922
    aget-byte v2, v0, v2

    .line 1923
    new-array v11, v2, [B

    .line 1924
    const/4 v12, 0x0

    invoke-static {v0, v10, v11, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1925
    invoke-static {v11}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v2, v10

    move-object v10, v11

    goto :goto_6

    .line 1915
    :cond_f
    move-object v10, v6

    goto :goto_6

    .line 1902
    :cond_10
    move-object/from16 v16, v10

    move-object v10, v6

    .line 1930
    :goto_6
    if-ge v2, v5, :cond_11

    add-int/lit8 v11, v2, 0x1

    .line 1932
    aget-byte v2, v0, v2

    .line 1933
    new-array v12, v2, [B

    .line 1934
    move-object/from16 v30, v10

    const/4 v10, 0x0

    invoke-static {v0, v11, v12, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1935
    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/2addr v2, v11

    goto :goto_7

    .line 1930
    :cond_11
    move-object/from16 v30, v10

    move-object v10, v6

    .line 1935
    :goto_7
    const-string/jumbo v11, "posID"

    if-eqz p1, :cond_13

    if-ge v2, v5, :cond_12

    sub-int/2addr v5, v2

    .line 1942
    :try_start_4
    new-array v12, v5, [B

    .line 1943
    move-object/from16 v31, v7

    const/4 v7, 0x0

    invoke-static {v0, v2, v12, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1945
    iget v0, v1, Lcom/dspread/xpos/DoEmvApp;->i:I

    invoke-static {v0, v12}, Lcom/dspread/xpos/Util;->a(I[B)Ljava/util/Hashtable;

    move-result-object v0

    .line 1946
    invoke-virtual {v0, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->j:Ljava/lang/String;

    goto :goto_8

    .line 1949
    :cond_12
    move-object/from16 v31, v7

    iput-object v6, v1, Lcom/dspread/xpos/DoEmvApp;->j:Ljava/lang/String;

    goto :goto_8

    .line 1935
    :cond_13
    move-object/from16 v31, v7

    .line 1954
    :goto_8
    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->j:Ljava/lang/String;

    invoke-virtual {v3, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_14

    .line 1955
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_14

    const/4 v0, 0x6

    .line 1957
    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_14
    move-object v0, v10

    .line 1962
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1963
    const-string v5, "formatID"

    invoke-virtual {v3, v5, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    const-string v5, "maskedPAN"

    invoke-virtual {v3, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    const-string v5, "expiryDate"

    invoke-virtual {v3, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    const-string v0, "cardholderName"

    invoke-virtual {v3, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    const-string/jumbo v0, "serviceCode"

    invoke-virtual {v3, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    const-string/jumbo v0, "track1Length"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    const-string/jumbo v0, "track2Length"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    const-string/jumbo v0, "track3Length"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    const-string v0, "encTracks"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    const-string v0, "encTrack1"

    move-object/from16 v2, v25

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    const-string v0, "encTrack2"

    invoke-virtual {v3, v0, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    const-string v0, "encTrack3"

    invoke-virtual {v3, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    const-string/jumbo v0, "pinBlock"

    move-object/from16 v2, v22

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    const-string/jumbo v0, "trackRandomNumber"

    move-object/from16 v6, v23

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    const-string/jumbo v0, "pinRandomNumber"

    move-object/from16 v6, v24

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    const-string/jumbo v0, "psamNo"

    move-object/from16 v6, v26

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    const-string v0, "encPAN"

    move-object/from16 v6, v29

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    move-object/from16 v0, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    const-string v0, "cardSquNo"

    move-object/from16 v6, v30

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    const-string v0, "iccCardAppexpiryDate"

    invoke-virtual {v3, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    const-string/jumbo v0, "trackksn"

    move-object/from16 v2, v20

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    const-string/jumbo v0, "pinKsn"

    move-object/from16 v2, v21

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    const-string v0, "newPinBlock"

    move-object/from16 v6, v16

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    .line 1987
    :goto_a
    move-object/from16 v2, p2

    move-object/from16 v4, v17

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 1988
    :cond_15
    :goto_b
    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/DoEmvApp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/DoEmvApp;->f:Z

    return p0
.end method

.method private a(Ljava/lang/String;Lcom/dspread/xpos/Vpos;)Z
    .locals 8

    .line 1034
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 1035
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->j:Ljava/lang/String;

    .line 1037
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/dspread/xpos/DoEmvApp;->a(ZLjava/lang/String;)Ljava/util/Hashtable;

    .line 1038
    const-string v2, "go_online  anlysData iccData: end"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 1039
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->isQuickEmv()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    .line 1040
    const-string v0, "111111111"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 1041
    const-string v0, "8A025A33"

    .line 1042
    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1043
    array-length v2, v2

    .line 1044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "plen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1046
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->x0()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->x0()I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1050
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 1051
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 1056
    :cond_1
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {p2, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 1057
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->w(Ljava/lang/String;)V

    return v1

    .line 1058
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->w(Ljava/lang/String;)V

    return v1

    .line 1071
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "go_online  anlysData iccData: end 222 setEmvGoOnLineData: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DoEmvApp;->i(Ljava/lang/String;)V

    .line 1079
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->isReturnCardInfoFlag()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->i1()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1080
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const-string v5, "845A"

    invoke-virtual {v2, v4, v3, v5}, Lcom/dspread/xpos/QPOSService;->getICCTag(IILjava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 1081
    const-string/jumbo v5, "tlv"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/dspread/xpos/utils/h;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1082
    const-string v5, "84"

    invoke-static {v2, v5}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v5

    iget-object v5, v5, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    .line 1083
    const-string v6, "5A"

    invoke-static {v2, v6}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v2

    iget-object v2, v2, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    .line 1084
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 1085
    const-string v7, "AID"

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-static {v2}, Lcom/dspread/xpos/Util;->convertAscIIStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CardNo"

    invoke-virtual {v6, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v6}, Lcom/dspread/xpos/QPOSService;->e(Ljava/util/Hashtable;)V

    .line 1089
    :cond_4
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v4}, Lcom/dspread/xpos/QPOSService;->V(Z)V

    .line 1090
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, p1}, Lcom/dspread/xpos/QPOSService;->w(Ljava/lang/String;)V

    .line 1091
    const-string p1, "onRequestOnlineProcess"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    move p1, v4

    .line 1093
    :goto_1
    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v2

    sget-object v5, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v2, v5, :cond_6

    const-wide/16 v5, 0x1

    .line 1095
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_2
    add-int/lit8 v2, p1, 0x1

    .line 1099
    iget-object v5, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v5}, Lcom/dspread/xpos/QPOSService;->H0()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    if-lt p1, v5, :cond_5

    .line 1100
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->ICC_ONLINE_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return v1

    .line 1099
    :cond_5
    move p1, v2

    goto :goto_1

    .line 1104
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "go online getEmvTradeState() = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0, v5}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 1108
    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1110
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1116
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onlinedata:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1117
    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1118
    array-length v0, v0

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "plen:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->x0()I

    move-result v0

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->x0()I

    move-result v0

    if-ne v0, v3, :cond_8

    goto :goto_3

    .line 1124
    :cond_8
    invoke-direct {p0, p2, p1}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 1126
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_9

    return v1

    .line 1132
    :cond_9
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v4, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DoEmvApp;->c([B)Z

    move-result p1

    return p1

    :cond_a
    :goto_3
    return v1
.end method

.method static synthetic a(Lcom/dspread/xpos/DoEmvApp;[BI)[B
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/DoEmvApp;->e([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private a([BI)[B
    .locals 2

    .line 8
    new-array v0, p2, [B

    .line 9
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DoEmvApp;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    nop

    .line 16
    new-array p1, v1, [B

    return-object p1
.end method

.method private b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tradeType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 136
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 137
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x16

    const/16 v2, 0x10

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 138
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 139
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 10

    .line 92
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 93
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v1, 0x0

    aget-byte p2, p2, v1

    aput-byte p2, v0, v1

    .line 94
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v2, 0x32

    const/16 v3, 0x16

    const/4 v4, 0x2

    const/16 v5, 0x3c

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    .line 95
    aput-byte v1, v0, v6

    .line 96
    new-array p2, v4, [B

    .line 97
    invoke-static {v0, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    new-instance p3, Lcom/dspread/xpos/i;

    invoke-direct {p3, v3, v2, v5, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 99
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 100
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    goto/16 :goto_3

    .line 102
    :cond_0
    const-string p2, "//"

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 103
    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move p3, v1

    move v2, v6

    .line 105
    :goto_0
    array-length v7, p2

    sub-int/2addr v7, v6

    if-ge p3, v7, :cond_3

    if-eqz p3, :cond_2

    .line 106
    array-length v7, p2

    sub-int/2addr v7, v4

    if-ne p3, v7, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    aget-object v7, p2, p3

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    goto :goto_2

    .line 110
    :cond_2
    :goto_1
    aget-object v7, p2, p3

    invoke-static {v7}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    :goto_2
    add-int/lit8 v8, v2, 0x1

    .line 114
    array-length v9, v7

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 115
    array-length v2, v7

    invoke-static {v7, v1, v0, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v2, v7

    add-int/2addr v2, v8

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    .line 118
    array-length v4, p2

    sub-int/2addr v4, v6

    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p2

    aput-byte p2, v0, v2

    .line 119
    new-array p2, p3, [B

    .line 120
    invoke-static {v0, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0x33

    invoke-direct {p3, v3, v0, v5, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 122
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 123
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    goto :goto_3

    .line 125
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 126
    array-length p3, p2

    int-to-byte p3, p3

    aput-byte p3, v0, v6

    .line 127
    array-length p3, p2

    invoke-static {p2, v1, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    array-length p2, p2

    add-int/2addr p2, v4

    .line 129
    new-array p3, p2, [B

    .line 130
    invoke-static {v0, v1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    new-instance p2, Lcom/dspread/xpos/i;

    invoke-direct {p2, v3, v2, v5, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 132
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 133
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private b(ZLjava/lang/String;)Ljava/util/Hashtable;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hashtable-anlysData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/dspread/xpos/DoEmvApp;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 146
    invoke-static/range {p2 .. p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 147
    array-length v3, v2

    .line 150
    const/4 v4, 0x2

    new-array v5, v4, [B

    const/4 v6, 0x0

    aget-byte v7, v2, v6

    aput-byte v7, v5, v6

    const/4 v7, 0x1

    aget-byte v8, v2, v7

    aput-byte v8, v5, v7

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v5

    .line 153
    new-array v8, v5, [B

    .line 154
    invoke-static {v2, v4, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v5, v4

    const-string v9, "iccdata"

    if-lt v5, v3, :cond_0

    .line 158
    invoke-virtual {v1, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    add-int/2addr v5, v4

    add-int/lit8 v4, v5, 0x1

    .line 163
    aget-byte v5, v2, v5

    .line 164
    new-array v10, v5, [B

    .line 165
    invoke-static {v2, v4, v10, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    .line 169
    aget-byte v4, v2, v4

    .line 170
    new-array v11, v4, [B

    .line 171
    invoke-static {v2, v5, v11, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    invoke-static {v11}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v5, v4

    add-int/lit8 v4, v5, 0x1

    .line 175
    aget-byte v5, v2, v5

    .line 176
    new-array v12, v5, [B

    .line 177
    invoke-static {v2, v4, v12, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    .line 181
    aget-byte v4, v2, v4

    .line 182
    new-array v13, v4, [B

    .line 183
    invoke-static {v2, v5, v13, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v4

    add-int/lit8 v4, v5, 0x1

    .line 187
    aget-byte v5, v2, v5

    .line 188
    new-array v13, v5, [B

    .line 189
    invoke-static {v2, v4, v13, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    .line 193
    aget-byte v4, v2, v4

    .line 194
    new-array v13, v4, [B

    .line 195
    invoke-static {v2, v5, v13, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v4

    add-int/lit8 v4, v5, 0x1

    .line 199
    aget-byte v5, v2, v5

    .line 200
    new-array v7, v5, [B

    .line 201
    invoke-static {v2, v4, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    .line 205
    aget-byte v4, v2, v4

    .line 206
    new-array v7, v4, [B

    .line 207
    invoke-static {v2, v5, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v4

    add-int/lit8 v4, v5, 0x1

    .line 211
    aget-byte v5, v2, v5

    .line 212
    new-array v7, v5, [B

    .line 213
    move-object/from16 v16, v8

    const/4 v8, 0x0

    invoke-static {v2, v4, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    .line 217
    aget-byte v4, v2, v4

    .line 218
    move-object/from16 v17, v9

    new-array v9, v4, [B

    .line 219
    invoke-static {v2, v5, v9, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v5, v4

    add-int/lit8 v4, v5, 0x1

    .line 223
    aget-byte v5, v2, v5

    .line 224
    move-object/from16 v18, v9

    new-array v9, v5, [B

    .line 225
    invoke-static {v2, v4, v9, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v4, v5

    .line 229
    nop

    .line 230
    const-string v5, ""

    if-ge v4, v3, :cond_1

    add-int/lit8 v9, v4, 0x1

    .line 232
    aget-byte v4, v2, v4

    .line 233
    move-object/from16 v19, v8

    new-array v8, v4, [B

    .line 234
    move-object/from16 v20, v7

    const/4 v7, 0x0

    invoke-static {v2, v9, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v9

    goto :goto_0

    .line 230
    :cond_1
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    move-object v7, v5

    .line 235
    :goto_0
    if-ge v4, v3, :cond_2

    add-int/lit8 v8, v4, 0x1

    .line 240
    aget-byte v4, v2, v4

    .line 241
    new-array v9, v4, [B

    .line 242
    move-object/from16 v21, v7

    const/4 v7, 0x0

    invoke-static {v2, v8, v9, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v8

    goto :goto_1

    .line 235
    :cond_2
    move-object/from16 v21, v7

    move-object v7, v5

    .line 246
    :goto_1
    if-ge v4, v3, :cond_3

    add-int/lit8 v8, v4, 0x1

    .line 249
    aget-byte v4, v2, v4

    .line 250
    new-array v9, v4, [B

    .line 251
    move-object/from16 v22, v7

    const/4 v7, 0x0

    invoke-static {v2, v8, v9, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v8

    goto :goto_2

    .line 246
    :cond_3
    move-object/from16 v22, v7

    move-object v7, v5

    .line 255
    :goto_2
    nop

    .line 256
    nop

    .line 257
    if-ge v4, v3, :cond_4

    add-int/lit8 v8, v4, 0x1

    .line 259
    aget-byte v4, v2, v4

    add-int/lit8 v9, v8, 0x1

    .line 260
    aget-byte v8, v2, v8

    add-int/lit8 v23, v9, 0x1

    .line 261
    aget-byte v9, v2, v9

    .line 263
    move-object/from16 v24, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    move-object v8, v7

    move-object v7, v4

    move/from16 v4, v23

    goto :goto_3

    .line 257
    :cond_4
    move-object/from16 v24, v7

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    .line 268
    :goto_3
    if-ge v4, v3, :cond_5

    move-object/from16 v23, v10

    add-int/lit8 v10, v4, 0x1

    .line 270
    aget-byte v4, v2, v4

    .line 271
    move-object/from16 v25, v9

    new-array v9, v4, [B

    .line 272
    move-object/from16 v26, v8

    const/4 v8, 0x0

    invoke-static {v2, v10, v9, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v4, v10

    goto :goto_4

    .line 268
    :cond_5
    move-object/from16 v26, v8

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    move-object v8, v5

    .line 277
    :goto_4
    if-ge v4, v3, :cond_9

    add-int/lit8 v9, v4, 0x1

    .line 280
    aget-byte v4, v2, v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_7

    if-ge v9, v3, :cond_6

    .line 285
    new-array v10, v4, [B

    .line 286
    move-object/from16 p2, v8

    const/4 v8, 0x0

    invoke-static {v2, v9, v10, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v4, v9

    goto :goto_5

    :cond_6
    move-object/from16 p2, v8

    move-object v8, v5

    move v4, v9

    goto :goto_5

    :cond_7
    move-object/from16 p2, v8

    add-int/2addr v4, v9

    if-ge v4, v3, :cond_8

    add-int/lit8 v8, v4, 0x1

    .line 294
    aget-byte v4, v2, v4

    .line 295
    new-array v9, v4, [B

    .line 296
    const/4 v10, 0x0

    invoke-static {v2, v8, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v4, v8

    move-object v8, v9

    goto :goto_5

    .line 287
    :cond_8
    move-object v8, v5

    goto :goto_5

    .line 277
    :cond_9
    move-object/from16 p2, v8

    move-object v8, v5

    .line 303
    :goto_5
    if-ge v4, v3, :cond_a

    add-int/lit8 v9, v4, 0x1

    .line 305
    aget-byte v4, v2, v4

    .line 306
    new-array v10, v4, [B

    .line 307
    move-object/from16 v27, v8

    const/4 v8, 0x0

    invoke-static {v2, v9, v10, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v4, v9

    goto :goto_6

    .line 303
    :cond_a
    move-object/from16 v27, v8

    move-object v8, v5

    .line 308
    :goto_6
    const-string/jumbo v9, "posID"

    if-eqz p1, :cond_c

    if-ge v4, v3, :cond_b

    sub-int/2addr v3, v4

    .line 317
    new-array v10, v3, [B

    .line 318
    move-object/from16 v28, v7

    const/4 v7, 0x0

    invoke-static {v2, v4, v10, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iget v2, v0, Lcom/dspread/xpos/DoEmvApp;->i:I

    invoke-static {v2, v10}, Lcom/dspread/xpos/Util;->a(I[B)Ljava/util/Hashtable;

    move-result-object v2

    .line 321
    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/dspread/xpos/DoEmvApp;->j:Ljava/lang/String;

    goto :goto_7

    .line 324
    :cond_b
    move-object/from16 v28, v7

    iput-object v5, v0, Lcom/dspread/xpos/DoEmvApp;->j:Ljava/lang/String;

    goto :goto_7

    .line 308
    :cond_c
    move-object/from16 v28, v7

    .line 329
    :goto_7
    iget-object v2, v0, Lcom/dspread/xpos/DoEmvApp;->j:Ljava/lang/String;

    invoke-virtual {v1, v9, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_d

    .line 330
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_d

    const/4 v2, 0x6

    .line 332
    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_d
    move-object v2, v8

    .line 337
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    const-string v4, "formatID"

    invoke-virtual {v1, v4, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v4, "maskedPAN"

    invoke-virtual {v1, v4, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v4, "expiryDate"

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v2, "cardholderName"

    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v2, "serviceCode"

    invoke-virtual {v1, v2, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "track1Length"

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "track2Length"

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "track3Length"

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "encTracks"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v2, "encTrack1"

    move-object/from16 v3, v23

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v2, "encTrack2"

    invoke-virtual {v1, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v2, "encTrack3"

    invoke-virtual {v1, v2, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string/jumbo v2, "pinBlock"

    move-object/from16 v3, v20

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string/jumbo v2, "trackRandomNumber"

    move-object/from16 v5, v21

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string/jumbo v2, "pinRandomNumber"

    move-object/from16 v5, v22

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string/jumbo v2, "psamNo"

    move-object/from16 v5, v24

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v2, "encPAN"

    move-object/from16 v5, p2

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "cardSquNo"

    move-object/from16 v5, v27

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "iccCardAppexpiryDate"

    invoke-virtual {v1, v2, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string/jumbo v2, "trackksn"

    move-object/from16 v3, v18

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v2, "pinKsn"

    move-object/from16 v3, v19

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method static synthetic b(Lcom/dspread/xpos/DoEmvApp;[BI)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/DoEmvApp;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private b([BI)[B
    .locals 2

    .line 2
    new-array v0, p2, [B

    .line 3
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DoEmvApp;->d([B)V

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 51
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0x30

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 52
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 53
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 56
    const-string p1, ""

    return-object p1

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/dspread/xpos/DoEmvApp;[BI)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/DoEmvApp;->f([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private c([BI)[B
    .locals 2

    .line 2
    new-array v0, p2, [B

    .line 3
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DoEmvApp;->c([B)Z

    return-object v0
.end method

.method static synthetic d(Lcom/dspread/xpos/DoEmvApp;[BI)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/DoEmvApp;->h([BI)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/dspread/xpos/DoEmvApp;[BI)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/DoEmvApp;->g([BI)I

    move-result p0

    return p0
.end method

.method private e([BI)[B
    .locals 0

    .line 3
    const-string p1, "[DoEmvApp]__icc_card_power_on"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 4
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DoEmvApp;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [B

    return-object p1
.end method

.method static synthetic f(Lcom/dspread/xpos/DoEmvApp;[BI)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/DoEmvApp;->b([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private f([BI)[B
    .locals 1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[DoEmvApp] __icc_data_transmit: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DoEmvApp;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [B

    return-object p1
.end method

.method private g([BI)I
    .locals 2

    .line 2
    new-array v0, p2, [B

    .line 3
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DoEmvApp;->c([B)Z

    return v1
.end method

.method static synthetic g(Lcom/dspread/xpos/DoEmvApp;[BI)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/DoEmvApp;->c([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private h([BI)I
    .locals 2

    .line 2
    new-array v0, p2, [B

    .line 3
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->n(Ljava/lang/String;)V

    return v1
.end method

.method private h()Lcom/dspread/xpos/QPOSService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/dspread/xpos/Vpos;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 913
    nop

    .line 914
    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->CANCEL:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const-string v2, "00"

    if-ne v0, v1, :cond_0

    .line 916
    goto :goto_0

    .line 917
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->SET:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v0, v1, :cond_1

    .line 918
    const-string v2, "01"

    .line 920
    :cond_1
    :goto_0
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 921
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p2

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->J0()Ljava/lang/String;

    move-result-object v0

    .line 925
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->i0()V

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 926
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 927
    const-string v3, "EMPTYPIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 928
    nop

    .line 929
    const-string v2, "FF"

    move-object v0, v1

    .line 934
    :cond_3
    invoke-direct {p0, p1, v2, v0}, Lcom/dspread/xpos/DoEmvApp;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 935
    const-string v1, ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>set emv pin end"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 939
    const-string p1, ">>>>>>>>>set emv pin failed"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 940
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    .line 941
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const-string/jumbo v0, "syncInputPin"

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    return-object p2

    .line 944
    :cond_4
    invoke-direct {p0, p2, v0, p1}, Lcom/dspread/xpos/DoEmvApp;->a(Ljava/util/Hashtable;Lcom/dspread/xpos/j;Lcom/dspread/xpos/Vpos;)Ljava/util/Hashtable;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1737
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/dspread/xpos/DoEmvApp;->a(ZLjava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/dspread/xpos/Vpos;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1133
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v0, "result"

    invoke-virtual {p3, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1139
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const-string/jumbo p2, "sync_go_online 1"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    return-object p3

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 1144
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1145
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1147
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onlinedata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1148
    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1149
    array-length v3, v3

    .line 1150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "plen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1152
    invoke-direct {p0, p2, v1}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 1153
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, p2, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1155
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const-string/jumbo p2, "sync_go_online 2"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    return-object p3

    .line 1159
    :cond_2
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/dspread/xpos/DoEmvApp;->a([B)Ljava/util/Hashtable;

    move-result-object p2

    .line 1160
    const-string/jumbo v1, "transResult"

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1161
    const-string/jumbo v4, "packType"

    invoke-virtual {p2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1162
    const-string v5, "issScriptRes"

    invoke-virtual {p2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    .line 1163
    const-string v5, "forceAccept"

    invoke-virtual {p2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1164
    const-string v5, "iccData"

    invoke-virtual {p2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 1166
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1167
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DF31"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1168
    iput-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    .line 1171
    :cond_3
    const-string v2, "01"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "07"

    const-string v7, "TransactionResult"

    const-string v8, "code"

    if-eqz v2, :cond_6

    .line 1172
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1177
    invoke-virtual {p3, v8, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-virtual {p3, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object p1, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p3, v7, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    .line 1182
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const-string/jumbo p2, "sync_go_online 3"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    return-object p3

    .line 1184
    :cond_4
    const-string v1, "03"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "04"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1189
    :cond_5
    invoke-virtual {p3, v8, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    invoke-virtual {p3, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object p1, Lcom/dspread/xpos/QPOSService$TransactionResult;->APPROVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p3, v7, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const-string/jumbo p2, "sync_go_online 4"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    .line 1194
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    return-object p3

    .line 1197
    :cond_6
    const-string v2, "02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1198
    const-string v1, "06"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "05"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 1209
    :cond_7
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1214
    invoke-virtual {p3, v8, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    invoke-virtual {p3, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object p1, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p3, v7, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const-string/jumbo p2, "sync_go_online 6"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    .line 1218
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    return-object p3

    .line 1219
    :cond_8
    :goto_0
    invoke-virtual {p3, v8, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    invoke-virtual {p3, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object p1, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p3, v7, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const-string/jumbo p2, "sync_go_online 5"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    .line 1223
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    return-object p3

    .line 1240
    :cond_9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const-string/jumbo p2, "sync_go_online 7"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    .line 1243
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    return-object p3
.end method

.method protected a([B)Ljava/util/Hashtable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analysisEmvResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1245
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    if-eqz p1, :cond_4

    .line 1246
    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1253
    :cond_0
    const/4 v1, 0x1

    aget-byte v2, p1, v1

    iput v2, p0, Lcom/dspread/xpos/DoEmvApp;->i:I

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encMode ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dspread/xpos/DoEmvApp;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1255
    new-array v2, v1, [B

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    const/4 v5, 0x0

    aput-byte v4, v2, v5

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    .line 1257
    new-array v4, v1, [B

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 1259
    new-array v6, v1, [B

    const/4 v7, 0x4

    aget-byte v7, p1, v7

    aput-byte v7, v6, v5

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v6

    .line 1260
    new-array v7, v6, [B

    .line 1261
    const/4 v8, 0x5

    invoke-static {p1, v8, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1262
    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    add-int/2addr v6, v8

    add-int/lit8 v7, v6, 0x1

    .line 1265
    aget-byte v6, p1, v6

    .line 1266
    new-array v8, v6, [B

    .line 1267
    invoke-static {p1, v7, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1268
    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v7, v6

    .line 1271
    new-array v6, v3, [B

    aget-byte v9, p1, v7

    aput-byte v9, v6, v5

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    aput-byte v9, v6, v1

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v6

    add-int/2addr v7, v3

    .line 1273
    new-array v9, v6, [B

    .line 1274
    invoke-static {p1, v7, v9, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1275
    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v7, v6

    .line 1278
    nop

    .line 1280
    iget-object v10, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v10}, Lcom/dspread/xpos/QPOSService;->getIsSaveLog()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1281
    const-string v10, "+++++++++++no batch"

    invoke-static {v10}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 1282
    array-length v10, p1

    if-ge v7, v10, :cond_2

    .line 1283
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "index ======"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "==="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1284
    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v10

    .line 1286
    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    .line 1287
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v3, :cond_1

    .line 1288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "00"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1290
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1291
    array-length v3, p1

    sub-int/2addr v3, v7

    .line 1292
    new-array v10, v3, [B

    .line 1293
    invoke-static {p1, v7, v10, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1294
    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v7, v6

    goto :goto_0

    .line 1299
    :cond_2
    const-string v3, ""

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1301
    array-length v6, p1

    if-ge v7, v6, :cond_3

    .line 1302
    new-array v1, v1, [B

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p1, v7

    aput-byte v7, v1, v5

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    .line 1303
    array-length v7, p1

    sub-int/2addr v7, v6

    if-gt v1, v7, :cond_3

    .line 1305
    new-array v7, v1, [B

    .line 1306
    invoke-static {p1, v6, v7, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1307
    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 1309
    const-string/jumbo v1, "tagC"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    const-string p1, "=======icc90"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 1315
    :cond_3
    const-string/jumbo p1, "transResult"

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    const-string/jumbo p1, "packType"

    invoke-virtual {v0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    const-string v1, "issScriptRes"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    const-string p1, "forceAccept"

    invoke-virtual {v0, p1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const-string p1, "iccData"

    invoke-virtual {v0, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-object v0
.end method

.method protected a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->b:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1479
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->J1()V

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "FF"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1486
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    invoke-static {v4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 1487
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1488
    iget-object v7, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v7}, Lcom/dspread/xpos/QPOSService;->r0()Lcom/dspread/xpos/QPOSService$CardTradeMode;

    move-result-object v7

    .line 1489
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "05"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    new-array v8, v6, [B

    iget-byte v7, v7, Lcom/dspread/xpos/QPOSService$CardTradeMode;->cardTradeModeValue:B

    const/4 v9, 0x0

    aput-byte v7, v8, v9

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1491
    new-instance v7, Lcom/dspread/xpos/i;

    const/16 v8, 0x16

    const/16 v10, 0xb0

    const/16 v11, 0x1e

    invoke-direct {v7, v8, v10, v11, v4}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 1492
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1493
    invoke-virtual {v2, v11}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v4

    .line 1494
    iget-object v7, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v7, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 1501
    :cond_0
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->b()B

    move-result v7

    const/16 v8, 0x49

    const-string v10, "02"

    const-string v12, "01"

    const-string v13, ""

    if-eq v7, v8, :cond_10

    iget-object v7, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v7}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_6

    .line 1564
    :cond_1
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/16 v7, 0x22

    if-nez v0, :cond_2

    .line 1565
    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v4, Lcom/dspread/xpos/QPOSService$Display;->PLEASE_WAIT:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 1566
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-direct {v0, v7, v9, v9, v11}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 1567
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1568
    invoke-virtual {v2, v11}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v4

    .line 1569
    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1575
    :cond_2
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/16 v8, 0x41

    if-ne v0, v8, :cond_3

    .line 1576
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-direct {v0, v7, v9, v9, v11}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 1577
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1578
    invoke-virtual {v2, v11}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v4

    .line 1579
    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 1585
    :cond_3
    :goto_0
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-ne v0, v5, :cond_8

    .line 1586
    const-string/jumbo v0, "select emv app"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v14

    .line 1590
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alllen = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v4, v9}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 1593
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "appCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v15, v6

    move v14, v9

    :goto_1
    if-ge v14, v5, :cond_4

    add-int/2addr v15, v6

    add-int/2addr v15, v6

    add-int/lit8 v6, v15, 0x1

    .line 1598
    invoke-virtual {v4, v15}, Lcom/dspread/xpos/j;->a(I)B

    move-result v15

    .line 1599
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v15}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v15, v6

    .line 1601
    invoke-virtual {v0, v14, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x22

    const/4 v9, 0x0

    goto :goto_1

    .line 1604
    :cond_4
    sget-object v4, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {v1, v4}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 1605
    iget-object v4, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4, v0}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/ArrayList;)V

    .line 1606
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v4, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v0, v4, :cond_5

    .line 1608
    :try_start_0
    sget v0, Lcom/dspread/xpos/DoEmvApp;->k:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 1613
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "select emv app getEmvTradeState()= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 1616
    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 1619
    :cond_6
    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->L0()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object v4

    .line 1620
    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x22

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1627
    :cond_8
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    if-ne v0, v8, :cond_9

    .line 1628
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v5, v11}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 1629
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1630
    invoke-virtual {v2, v11}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v4

    .line 1631
    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1637
    :cond_9
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "06"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_5

    .line 1642
    :cond_a
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ss: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1645
    nop

    .line 1646
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    if-lez v0, :cond_b

    .line 1647
    invoke-virtual {v4, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 1648
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v4, v3, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v0, v3

    goto :goto_3

    .line 1646
    :cond_b
    const/4 v3, 0x1

    move-object v2, v13

    const/4 v0, 0x0

    .line 1652
    :goto_3
    nop

    .line 1653
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 1654
    new-array v5, v3, [B

    invoke-virtual {v4, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v5

    add-int/2addr v5, v3

    .line 1655
    invoke-virtual {v4, v0, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v5

    goto :goto_4

    .line 1653
    :cond_c
    move-object v3, v13

    .line 1659
    :goto_4
    nop

    .line 1660
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 1661
    const/4 v5, 0x1

    new-array v5, v5, [B

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    const/4 v7, 0x0

    aput-byte v0, v5, v7

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 1662
    invoke-virtual {v4, v6, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v13

    .line 1666
    :cond_d
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1667
    const-string/jumbo v4, "serviceCode"

    invoke-virtual {v0, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    const-string/jumbo v2, "trackblock"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    const-string/jumbo v2, "pinblock"

    invoke-virtual {v0, v2, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    iget-object v2, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/QPOSService;->p(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 1672
    :cond_e
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 1673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "05 result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1674
    iget-object v2, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/QPOSService;->u(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1675
    :cond_f
    :goto_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 1676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cardNoStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1677
    iget-object v2, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/QPOSService;->n(Ljava/lang/String;)V

    goto :goto_7

    .line 1678
    :cond_10
    :goto_6
    iget-object v2, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v4, Lcom/dspread/xpos/QPOSService$Display;->PLEASE_WAIT:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v2, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 1680
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object v2

    .line 1683
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_initializeEMVFile()I

    move-result v4

    if-gez v4, :cond_11

    return-void

    .line 1691
    :cond_11
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_initializeEMVOper()I

    move-result v4

    if-gez v4, :cond_12

    return-void

    .line 1698
    :cond_12
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_initEMVSession()I

    .line 1699
    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1700
    array-length v4, v0

    invoke-virtual {v2, v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_trans_datatime([BI)V

    .line 1702
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/dspread/xpos/DoEmvApp;->f:Z

    .line 1703
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/dspread/xpos/DoEmvApp$b;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/dspread/xpos/DoEmvApp$b;-><init>(Lcom/dspread/xpos/DoEmvApp;Lcom/dspread/xpos/DoEmvApp$a;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1704
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1706
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_a01kernel_init()V

    .line 1707
    invoke-static/range {p2 .. p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v4, 0x0

    aget-byte v0, v0, v4

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v0}, Lcom/dspread/xpos/A01Kernel;->java_get_icc_card_no(II)[B

    move-result-object v0

    .line 1708
    invoke-virtual {v1, v13}, Lcom/dspread/xpos/DoEmvApp;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 1709
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_a01kernel_release()V

    .line 1710
    iput-boolean v4, v1, Lcom/dspread/xpos/DoEmvApp;->f:Z

    .line 1711
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1712
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 1714
    iget-object v0, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->n(Ljava/lang/String;)V

    goto :goto_7

    .line 1715
    :cond_13
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_7

    .line 1735
    :cond_14
    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 1736
    iget-object v2, v1, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/QPOSService;->u(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 19

    .line 138
    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p5

    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const-string v0, "doEMVApp; trade flag=false, trade interrupted!"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 141
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->K1()V

    return-void

    .line 147
    :cond_0
    :try_start_0
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    const-string v12, "FF"

    const-string v13, "00"

    const-string v14, ""

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_2f

    :try_start_1
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->x0()I

    move-result v1

    if-eq v1, v8, :cond_2f

    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->x0()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    if-ne v1, v15, :cond_1

    move v3, v8

    goto/16 :goto_18

    .line 241
    :cond_1
    iput-object v14, v9, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    .line 245
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->y0()Lcom/dspread/xpos/QPOSService$EmvOption;

    move-result-object v3

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move v11, v7

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EmvOption;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 246
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    move/from16 v18, v1

    move-object v1, v0

    move/from16 v0, v18

    :cond_3
    if-eqz v1, :cond_c

    .line 253
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    if-ne v2, v15, :cond_b

    .line 255
    const-string/jumbo v0, "select emv app"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1630:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alllen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v11}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v7, v11

    const/4 v8, 0x1

    :goto_0
    if-ge v7, v2, :cond_4

    const/4 v3, 0x1

    add-int/2addr v8, v3

    add-int/2addr v8, v3

    add-int/lit8 v4, v8, 0x1

    .line 268
    invoke-virtual {v1, v8}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 269
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    add-int v8, v4, v5

    .line 271
    invoke-virtual {v0, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 274
    :cond_4
    const/4 v3, 0x1

    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {v9, v1}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 275
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/ArrayList;)V

    .line 278
    invoke-virtual {v10, v11}, Lcom/dspread/xpos/Vpos;->i(Z)V

    move v7, v11

    .line 279
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const/16 v2, 0x802

    if-ne v0, v1, :cond_7

    if-le v7, v2, :cond_6

    .line 283
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v11}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    goto :goto_2

    .line 287
    :cond_6
    :try_start_2
    sget v0, Lcom/dspread/xpos/DoEmvApp;->k:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 292
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/dspread/xpos/Vpos;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------isNeedQuitCommand--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/dspread/xpos/Vpos;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-void

    .line 297
    :cond_7
    :goto_2
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v0

    if-nez v0, :cond_9

    if-le v7, v2, :cond_8

    .line 299
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->APP_SELECT_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    :cond_8
    return-void

    .line 303
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select emv app getEmvTradeState()= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v9, v1}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 311
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 314
    :cond_a
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->L0()I

    move-result v0

    invoke-direct {v9, v10, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 315
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 253
    :cond_b
    const/4 v3, 0x1

    goto :goto_3

    .line 246
    :cond_c
    const/4 v3, 0x1

    .line 320
    :goto_3
    const-string v2, "doemvapp: log"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v4, 0x43

    const-string v5, "====cardNo===="

    if-ne v2, v4, :cond_11

    .line 322
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 323
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/QPOSService;->n(Ljava/lang/String;)V

    move v7, v11

    :goto_4
    const/16 v0, 0xbb8

    const-string v2, "getKeepRunStu:"

    if-ge v7, v0, :cond_f

    .line 326
    iget-object v4, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4}, Lcom/dspread/xpos/QPOSService;->C0()I

    move-result v4

    if-ne v4, v3, :cond_d

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4}, Lcom/dspread/xpos/QPOSService;->C0()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\u7ee7\u7eed\u8fd0\u884c"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 328
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v10, v3}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 329
    iget-object v4, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4, v11}, Lcom/dspread/xpos/QPOSService;->R(I)V

    goto :goto_5

    .line 331
    :cond_d
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->C0()I

    move-result v0

    if-nez v0, :cond_e

    .line 332
    const-string v0, "getKeepRunStu:\u7b49\u5f85"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v16, 0x1

    .line 341
    :try_start_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    .line 342
    :cond_e
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v10, v11}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->C0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u9000\u51fa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 344
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v11}, Lcom/dspread/xpos/QPOSService;->R(I)V

    return-void

    :cond_f
    :goto_5
    if-lt v7, v0, :cond_10

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->C0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u8d85\u65f6\u9000\u51fa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 356
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v10, v11}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    .line 357
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v11}, Lcom/dspread/xpos/QPOSService;->R(I)V

    return-void

    .line 361
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 362
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 368
    :cond_11
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v4, 0x71

    if-ne v2, v4, :cond_13

    .line 369
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 370
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/QPOSService;->n(Ljava/lang/String;)V

    .line 372
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v10}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 376
    :cond_12
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    move v8, v11

    .line 387
    :goto_6
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    const/16 v4, 0xa

    const-string/jumbo v5, "set emv pin getEmvTradeState()= "

    if-ne v2, v4, :cond_19

    .line 388
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v11}, Lcom/dspread/xpos/QPOSService;->S(Z)V

    .line 389
    const-string v0, "<<<<<<<<<<<<excute start: doEmvApp"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {v9, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 392
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->H1()V

    .line 393
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v0, v1, :cond_14

    .line 395
    :try_start_4
    sget v0, Lcom/dspread/xpos/DoEmvApp;->k:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_7

    .line 400
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 402
    nop

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v2, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->CANCEL:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v0, v2, :cond_15

    .line 405
    move-object v0, v13

    goto :goto_8

    .line 406
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v2, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->SET:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v0, v2, :cond_16

    .line 407
    const-string v0, "01"

    goto :goto_8

    .line 406
    :cond_16
    move-object v0, v13

    .line 409
    :goto_8
    invoke-virtual {v9, v1}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 413
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->J0()Ljava/lang/String;

    move-result-object v1

    .line 414
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->i0()V

    if-eqz v1, :cond_17

    .line 415
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 416
    const-string v2, "EMPTYPIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 417
    nop

    .line 418
    move-object v0, v12

    move-object v1, v14

    .line 421
    :cond_17
    invoke-direct {v9, v10, v0, v1}, Lcom/dspread/xpos/DoEmvApp;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 422
    const-string v0, ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>set emv pin end"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 423
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 426
    const-string v0, ">>>>>>>>>set emv pin failed"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void

    .line 423
    :cond_18
    move v8, v3

    goto/16 :goto_6

    .line 387
    :cond_19
    move-object/from16 v18, v1

    move v1, v0

    move-object/from16 v0, v18

    .line 431
    :goto_9
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    const-wide/16 v6, 0x64

    const/16 v4, 0x31

    if-eq v2, v4, :cond_26

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    const/16 v12, 0x32

    if-ne v2, v12, :cond_1a

    goto/16 :goto_10

    .line 572
    :cond_1a
    :goto_a
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_1f

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    const/16 v4, 0x34

    if-ne v1, v4, :cond_1b

    goto/16 :goto_b

    .line 621
    :cond_1b
    sget-object v1, Lcom/dspread/xpos/n;->h:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {v9, v1}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    if-eqz v8, :cond_1c

    .line 623
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Display;->PIN_OK:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 624
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Display;->PROCESSING:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 629
    :cond_1c
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_1d

    .line 630
    const-string v0, "input pining==="

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 632
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v10}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 633
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v1

    if-nez v1, :cond_1c

    return-void

    .line 638
    :cond_1d
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1e

    .line 639
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->TRADE_LOG_FULL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-void

    .line 642
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kaishi goOnline__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [B

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    aput-byte v3, v2, v11

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {v0, v11, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    invoke-virtual {v0, v11, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/dspread/xpos/DoEmvApp;->d([B)V

    return-void

    .line 646
    :cond_1f
    :goto_b
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const/16 v4, 0x96

    invoke-virtual {v1, v4}, Lcom/dspread/xpos/QPOSService;->L(I)V

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uc.resu ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0, v11}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    if-eqz v1, :cond_20

    .line 652
    invoke-virtual {v0, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    move v4, v15

    goto :goto_c

    .line 649
    :cond_20
    move v4, v3

    move v1, v11

    .line 652
    :goto_c
    add-int/lit8 v5, v4, 0x1

    .line 654
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 655
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 656
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "len = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 657
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pintrytime = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v13

    if-ne v13, v2, :cond_21

    .line 660
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/QPOSService;->U(Z)V

    .line 661
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v13, -0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/QPOSService;->O(I)V

    goto :goto_d

    .line 664
    :cond_21
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v11}, Lcom/dspread/xpos/QPOSService;->U(Z)V

    .line 665
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->O(I)V

    :goto_d
    move v2, v5

    :goto_e
    add-int v13, v4, v5

    if-ge v2, v13, :cond_22

    .line 670
    invoke-virtual {v0, v2, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-static {v13}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    nop

    .line 672
    sput-boolean v11, Lcom/dspread/xpos/x;->n:Z

    .line 673
    sput-boolean v3, Lcom/dspread/xpos/x;->o:Z

    .line 674
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v12, v1}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/List;I)V

    .line 675
    :goto_f
    sget-boolean v0, Lcom/dspread/xpos/x;->n:Z

    if-nez v0, :cond_23

    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->q0()Z

    move-result v0

    if-nez v0, :cond_23

    .line 677
    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_f

    .line 683
    :cond_23
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->q0()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 684
    const-string v0, "doEMVApp; cancel trade"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->CANCEL:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {v9, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 687
    :cond_24
    sget-object v0, Lcom/dspread/xpos/x;->p:Lcom/dspread/xpos/j;

    .line 688
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v1

    if-nez v1, :cond_25

    return-void

    .line 692
    :cond_25
    const-string v1, "GetPosInfo.ispinMapSync finish"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 693
    :cond_26
    :goto_10
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/QPOSService;->S(Z)V

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uc = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v12

    invoke-virtual {v0, v11, v12}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0, v11, v15}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v2

    .line 696
    invoke-virtual {v0, v15, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v2, v15

    add-int/lit8 v13, v2, 0x1

    .line 700
    invoke-virtual {v0, v2}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    if-nez v2, :cond_27

    move v2, v13

    move v13, v11

    goto :goto_11

    :cond_27
    add-int/lit8 v2, v13, 0x1

    .line 705
    invoke-virtual {v0, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v13

    .line 707
    :goto_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pinlimit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 708
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "publick ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0, v2, v15}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v6

    add-int/2addr v2, v15

    .line 711
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "indexA ="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "----rsaELen:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, v2, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v2, v6

    .line 715
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rsaE ="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v6

    if-ge v2, v6, :cond_28

    iget-object v6, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v6}, Lcom/dspread/xpos/QPOSService;->i1()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 717
    invoke-virtual {v0, v2, v15}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v6

    add-int/lit8 v2, v2, 0x2

    .line 719
    invoke-virtual {v0, v2, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-static {v2}, Lcom/dspread/xpos/utils/h;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 721
    const-string v6, "84"

    invoke-static {v2, v6}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v6

    iget-object v6, v6, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    .line 722
    const-string v11, "5A"

    invoke-static {v2, v11}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v2

    iget-object v2, v2, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    .line 723
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 724
    const-string v15, "AID"

    invoke-virtual {v11, v15, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-static {v2}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "CardNo"

    invoke-virtual {v11, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cardinfo = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 727
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/QPOSService;->V(Z)V

    .line 728
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v11}, Lcom/dspread/xpos/QPOSService;->e(Ljava/util/Hashtable;)V

    .line 731
    :cond_28
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-ne v0, v4, :cond_29

    .line 733
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v3}, Lcom/dspread/xpos/QPOSService;->U(Z)V

    move v2, v3

    goto :goto_12

    :cond_29
    nop

    .line 736
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->U(Z)V

    const/4 v2, 0x0

    .line 738
    :goto_12
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {v9, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 740
    invoke-static {}, Lcom/dspread/xpos/utils/AESUtil;->generateKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->h:Ljava/lang/String;

    .line 742
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x200

    if-ne v0, v4, :cond_2a

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Lcom/dspread/xpos/DoEmvApp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 745
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Lcom/dspread/xpos/DoEmvApp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "randomR2 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caKey: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "rsaE: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 749
    invoke-static {v12, v7}, Lcom/dspread/xpos/Util;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v4

    .line 750
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "randomR1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Lcom/dspread/xpos/DoEmvApp;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 753
    :try_start_6
    const-string/jumbo v6, "strart encrypted"

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 754
    invoke-static {v4, v0}, Lcom/dspread/xpos/Util;->getEnDeRSA(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 755
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encryptResult: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_15

    :catch_4
    move-exception v0

    goto :goto_14

    :catch_5
    move-exception v0

    const/4 v4, 0x0

    .line 757
    :goto_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 760
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encryptResult "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 761
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->e:Lcom/dspread/xpos/s;

    invoke-virtual {v0, v10, v4}, Lcom/dspread/xpos/s;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMVChangePin uc "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " =="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    if-lez v4, :cond_2e

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v4

    const/16 v6, 0x24

    if-ne v4, v6, :cond_2e

    .line 765
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resut11  == "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "randomR1= "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v9, Lcom/dspread/xpos/DoEmvApp;->h:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 768
    :try_start_8
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->h:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/dspread/xpos/utils/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resut22  == "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_16

    :catch_6
    move-exception v0

    .line 773
    :goto_16
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->g:Ljava/util/Hashtable;

    .line 775
    const-string/jumbo v0, "randomDataLen start"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 776
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v6

    .line 777
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "randomDataLen "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    add-int/2addr v0, v6

    .line 778
    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 779
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "randomData: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    add-int/lit8 v6, v0, 0x2

    .line 781
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v12, 0x2

    mul-int/2addr v0, v12

    add-int/2addr v0, v6

    .line 783
    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v15, v0, 0x2

    .line 785
    invoke-virtual {v4, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v12

    add-int/2addr v0, v15

    .line 787
    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 790
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v0, v15, :cond_2b

    add-int/lit8 v15, v0, 0x2

    .line 791
    invoke-virtual {v4, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v7, 0x2

    mul-int/2addr v0, v7

    add-int/2addr v0, v15

    .line 793
    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 794
    iget-object v4, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4, v0}, Lcom/dspread/xpos/QPOSService;->N(Ljava/lang/String;)V

    .line 796
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 797
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->g:Ljava/util/Hashtable;

    const-string v4, "RandomData"

    invoke-virtual {v0, v4, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->g:Ljava/util/Hashtable;

    const-string v4, "AESKey"

    invoke-virtual {v0, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->g:Ljava/util/Hashtable;

    invoke-static {v12}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "PAN"

    invoke-virtual {v0, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->g:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "isOnlinePin"

    invoke-virtual {v0, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->g:Ljava/util/Hashtable;

    const-string v2, "ResetTimes"

    invoke-virtual {v0, v2, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->g:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "pinTryLimit"

    invoke-virtual {v0, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v13}, Lcom/dspread/xpos/QPOSService;->O(I)V

    .line 804
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->e:Lcom/dspread/xpos/s;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/s;->a(Z)V

    .line 805
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->g:Ljava/util/Hashtable;

    sput-object v0, Lcom/dspread/xpos/s;->d:Ljava/util/Hashtable;

    .line 806
    iget-object v2, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/QPOSService;->r(Ljava/util/Hashtable;)V

    .line 807
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->H1()V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 816
    :goto_17
    sget-boolean v0, Lcom/dspread/xpos/s;->b:Z

    if-nez v0, :cond_2c

    .line 818
    const-wide/16 v6, 0x64

    :try_start_9
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_17

    :catch_7
    move-exception v0

    goto :goto_17

    .line 823
    :cond_2c
    sget-object v0, Lcom/dspread/xpos/s;->c:Lcom/dspread/xpos/j;

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f 11111= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 825
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v1

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f 2222= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    if-nez v1, :cond_2d

    return-void

    :cond_2d
    const/4 v11, 0x0

    const/4 v15, 0x2

    goto/16 :goto_9

    :cond_2e
    return-void

    .line 147
    :cond_2f
    move v3, v8

    .line 827
    :goto_18
    :try_start_a
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v1

    if-nez v1, :cond_31

    .line 828
    invoke-direct {v9, v10, v13}, Lcom/dspread/xpos/DoEmvApp;->c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 829
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 830
    :cond_30
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 834
    :cond_31
    const-string v1, "0008"

    .line 837
    :cond_32
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object v2

    .line 839
    const-string v4, "a01 jni init ok"

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 840
    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 841
    const/4 v4, 0x2

    invoke-virtual {v2, v1, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_data_encryption_mode([BI)V

    .line 842
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_initializeEMVFile()I

    move-result v1

    if-gez v1, :cond_33

    return-void

    .line 850
    :cond_33
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_initializeEMVOper()I

    move-result v1

    if-gez v1, :cond_34

    return-void

    .line 857
    :cond_34
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_initEMVSession()I

    .line 859
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->y0()Lcom/dspread/xpos/QPOSService$EmvOption;

    move-result-object v1

    sget-object v4, Lcom/dspread/xpos/QPOSService$EmvOption;->START:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v1, v4, :cond_35

    .line 860
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_start_with_force_online(I)V

    const/4 v1, 0x0

    goto :goto_19

    .line 861
    :cond_35
    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->y0()Lcom/dspread/xpos/QPOSService$EmvOption;

    move-result-object v1

    sget-object v4, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE:Lcom/dspread/xpos/QPOSService$EmvOption;

    if-ne v1, v4, :cond_36

    .line 862
    invoke-virtual {v2, v3}, Lcom/dspread/xpos/A01Kernel;->java_set_start_with_force_online(I)V

    const/4 v1, 0x0

    goto :goto_19

    :cond_36
    nop

    .line 864
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_start_with_force_online(I)V

    .line 867
    :goto_19
    invoke-static/range {p2 .. p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aget-byte v4, v4, v1

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 870
    array-length v5, v1

    invoke-virtual {v2, v1, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_trans_datatime([BI)V

    .line 872
    const-string v1, "FFFFFFFF"

    if-eqz v0, :cond_37

    .line 874
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 875
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_1a

    :cond_37
    const/4 v7, 0x0

    :goto_1a
    rsub-int/lit8 v5, v7, 0x8

    .line 877
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 879
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 880
    array-length v1, v0

    invoke-virtual {v2, v0, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_amount([BI)V

    .line 883
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 883
    :cond_38
    move-object/from16 v1, p4

    move-object v0, v1

    .line 888
    :goto_1b
    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_trans_currency_code([BI)V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a01kernel inti start\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 899
    iput-boolean v3, v9, Lcom/dspread/xpos/DoEmvApp;->f:Z

    .line 900
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 901
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dspread/xpos/DoEmvApp$b;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v3}, Lcom/dspread/xpos/DoEmvApp$b;-><init>(Lcom/dspread/xpos/DoEmvApp;Lcom/dspread/xpos/DoEmvApp$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 902
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 904
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_a01kernel_init()V

    .line 905
    const-string v0, "java_startEmvApp start>>>>>>>>>"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v2, v4}, Lcom/dspread/xpos/A01Kernel;->java_startEmvApp(I)V

    .line 907
    const-string v0, "java_startEmvApp end"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_a01kernel_release()V

    .line 909
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/dspread/xpos/DoEmvApp;->f:Z

    .line 910
    const-string v0, "java_a01kernel_release end"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 911
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 912
    iget-object v0, v9, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    invoke-virtual {v0}, Lcom/dspread/xpos/l;->b()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :cond_39
    return-void

    :catch_8
    move-exception v0

    return-void
.end method

.method protected b([B)Ljava/lang/String;
    .locals 1

    .line 360
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/A01Kernel;->java_get_tag([B)[B

    move-result-object p1

    .line 361
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select emv app getEmvTradeState()= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dspread/xpos/DoEmvApp;->e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->L0()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p2

    .line 24
    :cond_1
    invoke-direct {p0, p2, v0, p1}, Lcom/dspread/xpos/DoEmvApp;->a(Ljava/util/Hashtable;Lcom/dspread/xpos/j;Lcom/dspread/xpos/Vpos;)Ljava/util/Hashtable;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/dspread/xpos/DoEmvApp;->b(ZLjava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    move-object v8, p0

    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 26
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, "code"

    invoke-virtual {v9, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, v8, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, v8, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    iput-object v1, v0, Lcom/dspread/xpos/QPOSService;->Q1:Lcom/dspread/xpos/QPOSService$Error;

    return-object v9

    .line 31
    :cond_0
    const-string v0, ""

    iput-object v0, v8, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    .line 35
    iget-object v0, v8, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->y0()Lcom/dspread/xpos/QPOSService$EmvOption;

    move-result-object v2

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EmvOption;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 36
    iget-object v1, v8, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0, v9}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v9

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    const-string v2, "emvAppType"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 42
    const-string/jumbo v1, "select emv app"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1630:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alllen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v6, 0x1

    move v7, v6

    :goto_0
    if-ge v5, v4, :cond_2

    add-int/2addr v7, v6

    add-int/2addr v7, v6

    add-int/lit8 v11, v7, 0x1

    .line 55
    invoke-virtual {v0, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 56
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v0, v11, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v11

    .line 58
    invoke-virtual {v1, v5, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "content"

    invoke-virtual {v9, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    .line 70
    :cond_3
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    .line 71
    const-string/jumbo v0, "set pin"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 83
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    .line 91
    :cond_4
    move-object/from16 v1, p5

    invoke-direct {p0, v9, v0, v1}, Lcom/dspread/xpos/DoEmvApp;->a(Ljava/util/Hashtable;Lcom/dspread/xpos/j;Lcom/dspread/xpos/Vpos;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    .line 59
    nop

    .line 60
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dspread/xpos/DoEmvApp;->i:I

    const-string v2, ""

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "5F20"

    const-string v4, "4F"

    const-string v5, "5F24"

    const-string v6, "9F16"

    const-string v7, "9F21"

    const-string v8, "9A"

    const-string v9, "9F02"

    const-string v10, "9F03"

    const-string v11, "9f34"

    const-string v12, "9f12"

    const-string v13, "9F06"

    const-string v14, "5F30"

    const-string v15, "9F4E"

    const-string v16, "C1"

    const-string v17, "C7"

    const-string v18, "C0"

    const-string v19, "C2"

    filled-new-array/range {v3 .. v19}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/dspread/xpos/utils/h;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 75
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 76
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/dspread/xpos/utils/g;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/dspread/xpos/utils/g;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected c([B)Z
    .locals 5

    .line 5
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DoEmvApp;->a([B)Ljava/util/Hashtable;

    move-result-object p1

    .line 6
    const-string/jumbo v0, "transResult"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    const-string/jumbo v1, "packType"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    const-string v2, "issScriptRes"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    .line 9
    const-string v2, "forceAccept"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    const-string v2, "iccData"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 12
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DF31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 14
    iput-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    .line 17
    :cond_0
    const-string v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "07"

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 22
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->G(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return v4

    .line 25
    :cond_1
    const-string v0, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 29
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->u(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->APPROVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return v4

    .line 33
    :cond_3
    const-string v2, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    const-string v0, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 41
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 45
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->G(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return v4

    .line 47
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 49
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->u(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return v4

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    iget-object v0, v0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v0}, Lcom/dspread/xpos/g;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emv_online_data_encrypt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/A01Kernel;->java_get_packet_emv_online_data([B)[B

    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v1, 0x16

    const/16 v2, 0x33

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 120
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 121
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 124
    return-object v1

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 127
    return-object v1

    .line 129
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected d([B)V
    .locals 5

    .line 10
    const-string v0, "jinru goOnline__"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 11
    array-length v0, p1

    if-nez v0, :cond_1

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->q0()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->b(Lcom/dspread/xpos/Vpos;)Z

    .line 16
    iget p1, p0, Lcom/dspread/xpos/DoEmvApp;->i:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {p1, v0}, Lcom/dspread/xpos/Util;->a(I[B)Ljava/util/Hashtable;

    .line 17
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DEVICE_ERROR:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-void

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DoEmvApp;->a([B)Ljava/util/Hashtable;

    move-result-object p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goOnline__ hashtable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "transResult"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    const-string/jumbo v1, "packType"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 26
    const-string v2, "issScriptRes"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    .line 27
    const-string v2, "forceAccept"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    const-string v2, "iccData"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 30
    const-string v2, "03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 31
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->PROCESSING:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 56
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-direct {p0, p1, v0}, Lcom/dspread/xpos/DoEmvApp;->a(Ljava/lang/String;Lcom/dspread/xpos/Vpos;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->b(Lcom/dspread/xpos/Vpos;)Z

    :cond_2
    return-void

    .line 62
    :cond_3
    const-string v3, "02"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "07"

    if-eqz v3, :cond_6

    .line 63
    const-string v0, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 74
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->G(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-void

    .line 76
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 78
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->u(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-void

    .line 89
    :cond_6
    const-string v3, "01"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 94
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->G(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-void

    .line 97
    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 99
    :cond_8
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 101
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->u(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->APPROVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    return-void

    .line 107
    :cond_9
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->b(Lcom/dspread/xpos/Vpos;)Z

    .line 108
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$Error;->UNKNOWN:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void
.end method

.method public d([BI)[B
    .locals 0

    .line 3
    const-string p1, "[DoEmvApp] __icc_card_power_off"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 4
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DoEmvApp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [B

    return-object p1
.end method

.method protected e(Ljava/lang/String;)I
    .locals 5

    .line 10
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v1, 0x10

    const/16 v2, 0x72

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    const/4 v1, -0x3

    if-nez v0, :cond_0

    return v1

    .line 18
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p1

    const/16 v3, 0xff

    if-eq p1, v3, :cond_3

    const/16 v3, 0xee

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xfe

    if-ne p1, v0, :cond_2

    const/4 v1, -0x2

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_1

    .line 21
    :cond_3
    :goto_0
    const/4 v3, 0x2

    new-array v4, v3, [B

    int-to-byte p1, p1

    .line 22
    aput-byte p1, v4, v0

    .line 23
    aput-byte p1, v4, v2

    .line 25
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_pin([BI)V

    :goto_1
    return v1
.end method

.method protected e()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->b:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    return-object v0
.end method

.method protected f()I
    .locals 5

    .line 25
    const-string v0, "<<<<<<<<<<<<excute start: get_app_emv_l2_pin"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    iput-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->b:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    .line 28
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->H1()V

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->b:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v0, v1, :cond_0

    .line 31
    :try_start_0
    sget v0, Lcom/dspread/xpos/DoEmvApp;->k:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->J0()Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp;->b:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    sget-object v3, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->CANCEL:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const/4 v4, -0x3

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    sget-object v3, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->SET:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v2, v3, :cond_4

    if-eqz v0, :cond_3

    .line 44
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 45
    const-string v2, "EMPTYPIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x2

    goto :goto_2

    .line 41
    :cond_4
    :goto_1
    move v0, v4

    .line 58
    :goto_2
    iput-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->b:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    .line 59
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v1

    if-nez v1, :cond_5

    return v4

    .line 63
    :cond_5
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Display;->PIN_OK:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    .line 64
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Display;->PROCESSING:Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V

    return v0
.end method

.method protected f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v0

    const-string v1, "1122"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    iget-object v0, v0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v0}, Lcom/dspread/xpos/g;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    invoke-virtual {p1}, Lcom/dspread/xpos/l;->b()V

    .line 11
    return-object v1

    .line 16
    :cond_0
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v2, 0x16

    const/16 v3, 0x80

    const/16 v4, 0xa

    invoke-direct {v0, v2, v3, v4, p1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 17
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 18
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 21
    const-string p1, ""

    return-object p1

    .line 24
    :cond_1
    return-object v1
.end method

.method protected g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    iget-object v0, v0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v0}, Lcom/dspread/xpos/g;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    iget-object p1, p1, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {p1}, Lcom/dspread/xpos/g;->b()[I

    move-result-object p1

    .line 9
    array-length v0, p1

    if-nez v0, :cond_0

    .line 10
    const-string/jumbo p1, "reset fail "

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    iget-object p1, p1, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {p1}, Lcom/dspread/xpos/g;->b()[I

    move-result-object p1

    .line 13
    :cond_0
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p1}, Lcom/dspread/xpos/Util;->intArr2ByteArr([I)[B

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    return-object v1

    .line 22
    :cond_2
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v2, 0x16

    const/16 v3, 0x60

    const/16 v4, 0xa

    invoke-direct {v0, v2, v3, v4, p1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 23
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 24
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 27
    return-object v1

    :cond_3
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    if-nez v2, :cond_4

    .line 33
    return-object v1

    :cond_4
    nop

    .line 36
    invoke-virtual {p1, v0, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    const/16 v0, 0xb

    .line 39
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    const/16 v0, 0xc

    .line 40
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    const/16 v1, 0xd

    .line 41
    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected g()Z
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "issScriptRes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->g1()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    iget-object v0, v0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-virtual {v0}, Lcom/dspread/xpos/g;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->console:Lcom/dspread/xpos/l;

    iget-object v0, v0, Lcom/dspread/xpos/l;->l:Lcom/dspread/xpos/g;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArr2intArr([B)[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/g;->b([I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p1}, Lcom/dspread/xpos/Util;->intArr2ByteArr([I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    return-object v1

    .line 18
    :cond_1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v2, 0x16

    const/16 v3, 0x70

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4, p1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 19
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p1, p1, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/dspread/xpos/DoEmvApp;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    return-object v1

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icc_transmit read: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    new-array v2, v0, [B

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    aput-byte v4, v2, v3

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v2

    if-nez v2, :cond_3

    .line 29
    return-object v1

    :cond_3
    nop

    .line 36
    new-array v1, v0, [B

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    aput-byte v4, v1, v3

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    .line 37
    new-array v0, v0, [B

    const/4 v1, 0x3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    aput-byte v4, v0, v3

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    const/16 v3, 0x11

    if-ne v2, v3, :cond_4

    :goto_0
    goto :goto_1

    :cond_4
    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    goto :goto_0

    :goto_1
    add-int/lit16 v0, v0, 0xff

    .line 45
    :cond_5
    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/DoEmvApp;->c:Ljava/lang/String;

    return-void
.end method
