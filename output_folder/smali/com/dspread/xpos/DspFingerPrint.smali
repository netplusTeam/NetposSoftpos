.class public Lcom/dspread/xpos/DspFingerPrint;
.super Ljava/lang/Object;
.source "DspFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/DspFingerPrint$o;,
        Lcom/dspread/xpos/DspFingerPrint$DisconnectState;,
        Lcom/dspread/xpos/DspFingerPrint$ResetState;,
        Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;,
        Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;,
        Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;,
        Lcom/dspread/xpos/DspFingerPrint$DspFingerPrintListener;,
        Lcom/dspread/xpos/DspFingerPrint$BusinessMode;,
        Lcom/dspread/xpos/DspFingerPrint$Error;,
        Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;,
        Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;
    }
.end annotation


# static fields
.field private static final V:Ljava/lang/String; = "1.1.2"

.field private static W:Lcom/dspread/xpos/DspFingerPrint; = null

.field private static X:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE; = null

.field private static Y:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode; = null

.field private static final Z:Z = false

.field private static a0:Z = false

.field static final b0:Ljava/lang/String; = "0123456789ABCDEF"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/hardware/usb/UsbDevice;

.field private C:Landroid/content/Context;

.field private D:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Lcom/dspread/xpos/z0;

.field private S:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

.field private T:Z

.field protected U:Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;

.field protected a:Lcom/dspread/xpos/Vpos;

.field private b:Z

.field private c:Z

.field public console:Lcom/dspread/xpos/l;

.field protected d:Lcom/dspread/xpos/DspFingerPrint$DspFingerPrintListener;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/dspread/xpos/t;

.field private j:Ljava/lang/String;

.field protected k:Landroid/os/Handler;

.field private l:Lcom/dspread/xpos/DspFingerPrint$o;

.field private m:Lcom/dspread/xpos/d;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->AUTO:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint;->X:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dspread/xpos/DspFingerPrint;->a0:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    .line 3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->b:Z

    .line 4
    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->c:Z

    .line 6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dspread/xpos/DspFingerPrint;->e:Z

    .line 8
    const-string v3, ""

    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->g:Ljava/lang/String;

    .line 9
    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->h:Z

    .line 11
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->j:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->l:Lcom/dspread/xpos/DspFingerPrint$o;

    .line 14
    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->m:Lcom/dspread/xpos/d;

    .line 19
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->o:Ljava/lang/String;

    .line 20
    const/16 v0, 0x3c

    iput v0, p0, Lcom/dspread/xpos/DspFingerPrint;->p:I

    .line 21
    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->q:Z

    .line 22
    iput-boolean v2, p0, Lcom/dspread/xpos/DspFingerPrint;->r:Z

    .line 24
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->t:I

    .line 27
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->u:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->v:Ljava/lang/String;

    .line 30
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->x:Ljava/lang/String;

    .line 31
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->y:Ljava/lang/String;

    .line 32
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->z:Ljava/lang/String;

    .line 33
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->A:Ljava/lang/String;

    .line 441
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->UNKNOW:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->D:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    .line 447
    iput-boolean v2, p0, Lcom/dspread/xpos/DspFingerPrint;->E:Z

    .line 786
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    .line 841
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    .line 984
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->J:I

    .line 985
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->K:I

    .line 1182
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->L:I

    .line 1187
    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    .line 1524
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$ResetState;->INIT:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    .line 1893
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->O:I

    .line 2007
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->P:Ljava/lang/String;

    .line 2008
    iput-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->Q:Ljava/lang/String;

    .line 2011
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->S:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    .line 2426
    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->T:Z

    .line 2428
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;->COMMON:Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->U:Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;

    return-void
.end method

.method private a(Lcom/dspread/xpos/QPOSService$TransactionType;)B
    .locals 2

    .line 739
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->GOODS:Lcom/dspread/xpos/QPOSService$TransactionType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 741
    :cond_0
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->SERVICES:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 743
    :cond_1
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->CASH:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 745
    :cond_2
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->CASHBACK:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 747
    :cond_3
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->INQUIRY:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    return p1

    .line 749
    :cond_4
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->TRANSFER:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    .line 751
    :cond_5
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->ADMIN:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x7

    return p1

    .line 753
    :cond_6
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->CASHDEPOSIT:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    return p1

    .line 755
    :cond_7
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->PAYMENT:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_8

    const/16 p1, 0x9

    return p1

    .line 757
    :cond_8
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->PBOCLOG:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-eq p1, v0, :cond_12

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->ECQ_INQUIRE_LOG:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_9

    goto :goto_0

    .line 760
    :cond_9
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->SALE:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_a

    const/16 p1, 0xb

    return p1

    .line 762
    :cond_a
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->PREAUTH:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_b

    const/16 p1, 0xc

    return p1

    .line 764
    :cond_b
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->ECQ_DESIGNATED_LOAD:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_c

    const/16 p1, 0x10

    return p1

    .line 766
    :cond_c
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->ECQ_UNDESIGNATED_LOAD:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_d

    const/16 p1, 0x11

    return p1

    .line 768
    :cond_d
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->ECQ_CASH_LOAD:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_e

    const/16 p1, 0x12

    return p1

    .line 770
    :cond_e
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->ECQ_CASH_LOAD_VOID:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_f

    const/16 p1, 0x13

    return p1

    .line 772
    :cond_f
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->REFUND:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_10

    const/16 p1, 0x14

    return p1

    .line 774
    :cond_10
    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionType;->UPDATE_PIN:Lcom/dspread/xpos/QPOSService$TransactionType;

    if-ne p1, v0, :cond_11

    const/16 p1, -0x10

    return p1

    :cond_11
    return v1

    :cond_12
    :goto_0
    const/16 p1, 0xa

    return p1
.end method

.method private a([BI)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    add-int/lit8 v3, p2, -0x1

    if-lez p2, :cond_2

    .line 350
    aget-byte p2, p1, v2

    const/16 v4, 0x8

    shl-int/2addr p2, v4

    xor-int/2addr p2, v1

    move v1, p2

    move p2, v0

    :goto_1
    if-ge p2, v4, :cond_1

    const v5, 0x8000

    and-int/2addr v5, v1

    shl-int/lit8 v1, v1, 0x1

    if-eqz v5, :cond_0

    xor-int/lit16 v1, v1, 0x1021

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v3

    goto :goto_0

    :cond_2
    const p1, 0xffff

    and-int/2addr p1, v1

    return p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Lcom/dspread/xpos/j;
    .locals 6

    .line 119
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x800

    if-le p1, v0, :cond_4

    const/4 p1, 0x0

    move v1, p1

    .line 121
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-le v2, v0, :cond_3

    add-int/lit16 v2, v1, 0x800

    .line 122
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00000241"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/dspread/xpos/DspFingerPrint;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00000201"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/dspread/xpos/DspFingerPrint;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    :goto_1
    invoke-direct {p0, v1, p3}, Lcom/dspread/xpos/DspFingerPrint;->d(Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 130
    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v5

    aput-byte v5, v4, p1

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    const/16 v5, 0xb5

    if-ne v4, v5, :cond_1

    .line 131
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->RC_DIFFERENT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    nop

    .line 133
    new-array v3, v3, [B

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    aput-byte v1, v3, p1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    const/16 v3, 0xad

    if-ne v1, v3, :cond_2

    goto :goto_2

    .line 136
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufPac+++"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    :goto_2
    move v1, v2

    goto/16 :goto_0

    .line 138
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "00000221"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1, p3}, Lcom/dspread/xpos/DspFingerPrint;->d(Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    goto :goto_3

    .line 145
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "00000261"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/dspread/xpos/DspFingerPrint;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-direct {p0, p1, p3}, Lcom/dspread/xpos/DspFingerPrint;->d(Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    iget-object v2, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-direct {p0, v2, p1, p2}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 203
    iput-boolean v2, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    return-object p2

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    iput-boolean v2, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    return-object p2

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v3}, Lcom/dspread/xpos/DspFingerPrint;->getOriData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v4

    if-nez v4, :cond_5

    .line 215
    const/4 p1, 0x6

    const/16 p2, 0x8

    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "E1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0xa

    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_2
    :goto_0
    nop

    .line 218
    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "A1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 219
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v2, Lcom/dspread/xpos/i;

    const/16 v3, 0x22

    const/16 v6, 0xf

    invoke-direct {v2, v3, v0, v0, v6}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 221
    iget-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {v3, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 222
    iget-object v2, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {v2, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "second:==="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "all++++++"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 233
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "build===="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object p1

    :cond_5
    nop

    .line 235
    new-array v1, v2, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    aput-byte v3, v1, v0

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    const/16 v3, 0xb5

    if-ne v1, v3, :cond_6

    .line 236
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->RC_DIFFERENT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    :cond_6
    nop

    .line 237
    new-array v1, v2, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    aput-byte v3, v1, v0

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    const/16 v3, 0xfa

    if-ne v1, v3, :cond_7

    .line 238
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    :cond_7
    nop

    .line 239
    new-array v1, v2, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    aput-byte v3, v1, v0

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    const/16 v3, 0xb6

    if-ne v1, v3, :cond_8

    .line 240
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->TRANSMISSION_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    :cond_8
    nop

    .line 241
    new-array v1, v2, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    aput-byte v3, v1, v0

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_9

    .line 242
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->RC_SAME:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    :cond_9
    nop

    .line 243
    new-array v1, v2, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    aput-byte p1, v1, v0

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_a

    .line 244
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->ILVERR_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    :cond_a
    :goto_2
    nop

    .line 246
    iput-boolean v2, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    return-object p2
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    .line 147
    nop

    .line 148
    nop

    .line 150
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-direct {p0, v0, p1, p2}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uc: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 156
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 157
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 158
    const-string v1, "29"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "2A"

    const-string v4, "2B"

    const-string v5, ""

    const/4 v6, 0x2

    if-nez v2, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v5

    goto/16 :goto_1

    .line 159
    :cond_2
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    .line 160
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->getReverseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v2, v6

    add-int/2addr v2, v1

    .line 161
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v2, v2, 0x6

    .line 166
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->getReverseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/2addr v4, v6

    add-int/2addr v4, v2

    .line 167
    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v2}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    .line 172
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->getReverseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/2addr v4, v6

    add-int/2addr v4, v3

    .line 173
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-static {p2}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorPro:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 176
    const-string p2, "Product Name:"

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 177
    const-string v2, "Board"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 178
    const-string v3, "OEM S/N:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 179
    const-string v4, "OEM P/N:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 180
    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    move-object v7, v5

    move-object v5, p2

    move-object p2, v7

    .line 183
    :goto_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/4 v1, 0x1

    const-string v2, "doGetSerialAndModuleInfo"

    if-nez p1, :cond_5

    if-ne p3, v1, :cond_3

    .line 185
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    return-object v5

    :cond_3
    if-ne p3, v6, :cond_4

    .line 188
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    return-object p2

    .line 196
    :cond_4
    iget p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    return-object v0

    .line 197
    :cond_5
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 198
    iget p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    return-object v0
.end method

.method private a(Lcom/dspread/xpos/DspFingerPrint$BusinessMode;)V
    .locals 5

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusinessMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->D:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->DISCONNECTING:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->D:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    sget-object v3, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->DISCONNECTED:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    if-ne v1, v3, :cond_0

    goto :goto_2

    .line 358
    :cond_0
    sget-object v3, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->UNKNOW:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    if-ne v1, v3, :cond_1

    .line 359
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    .line 360
    iget p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    return-void

    :cond_1
    const-wide/16 v3, 0xa

    .line 364
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 374
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$ResetState;->RESETING:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    if-ne v0, v1, :cond_4

    .line 375
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_BUSY:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    return-void

    .line 378
    :cond_4
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$ResetState;->INIT:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    .line 380
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 388
    iput-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    .line 389
    const-string p1, "onDoTrade(DDDD)"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 390
    const/16 p1, 0x7544

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->e(I)V

    .line 391
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->f(I)V

    return-void

    :cond_5
    nop

    .line 397
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    .line 398
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 420
    :pswitch_0
    const/16 p1, 0x7536

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->e(I)V

    .line 421
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->f(I)V

    goto :goto_3

    :pswitch_1
    nop

    .line 422
    const/16 p1, 0x7571

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->e(I)V

    .line 423
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->f(I)V

    goto :goto_3

    :pswitch_2
    nop

    .line 424
    const/16 p1, 0x7531

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->e(I)V

    .line 425
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->f(I)V

    goto :goto_3

    :pswitch_3
    nop

    .line 426
    const/16 p1, 0x7541

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->e(I)V

    .line 427
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->f(I)V

    goto :goto_3

    :pswitch_4
    nop

    .line 428
    const/16 p1, 0x7570

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->e(I)V

    .line 429
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->f(I)V

    goto :goto_3

    :pswitch_5
    nop

    .line 430
    const/16 p1, 0x756e

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->e(I)V

    .line 431
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->f(I)V

    .line 454
    :goto_3
    iget p1, p0, Lcom/dspread/xpos/DspFingerPrint;->O:I

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->b(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;)V
    .locals 1

    .line 775
    iget-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->T:Z

    if-eqz v0, :cond_0

    .line 776
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;->IS_DEBIT_OR_CREDIT:Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;

    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->U:Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;

    goto :goto_0

    .line 778
    :cond_0
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->U:Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/DspFingerPrint;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(I)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v2

    .line 59
    const-string v3, "connect bluetooth end"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    .line 67
    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    :cond_0
    return v0
.end method

.method private a(I)Z
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {v2}, Lcom/dspread/xpos/Vpos;->A()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    const-string/jumbo v0, "open exception"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p1, :cond_3

    .line 98
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    instance-of v1, v0, Lcom/dspread/xpos/r0;

    if-eqz v1, :cond_2

    .line 99
    check-cast v0, Lcom/dspread/xpos/r0;

    invoke-virtual {v0}, Lcom/dspread/xpos/r0;->H()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    .line 100
    invoke-virtual {v0}, Lcom/dspread/xpos/Vpos;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->q()V

    .line 117
    const-string v0, "bollean open false"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    :cond_3
    return p1
.end method

.method static synthetic a(Lcom/dspread/xpos/DspFingerPrint;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/DspFingerPrint;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/DspFingerPrint;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->E:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 13

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->c:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    .line 595
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 596
    const-string v3, "FFFFFFFF"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->c:Z

    return v1

    .line 601
    :cond_0
    const-string v3, "00000000"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    iput-object v2, p0, Lcom/dspread/xpos/DspFingerPrint;->u:Ljava/lang/String;

    return v1

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/dspread/xpos/DspFingerPrint;->y:Ljava/lang/String;

    const-string v3, "0704"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "amount out of limit"

    const-wide/16 v4, 0x0

    const/16 v6, 0xa

    const-string v7, "amount format error"

    const-string v8, "0"

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/dspread/xpos/DspFingerPrint;->y:Ljava/lang/String;

    const-string v9, "704"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 609
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v6, :cond_d

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_5

    .line 615
    :cond_4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v2, v9, v4

    if-ltz v2, :cond_5

    long-to-double v9, v9

    const-wide v11, 0x41ddcd6500000000L    # 2.0E9

    cmpg-double v2, v9, v11

    if-gtz v2, :cond_5

    move v2, v1

    goto :goto_1

    .line 620
    :cond_5
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$Error;->AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    .line 621
    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 624
    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 625
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    move v2, v0

    .line 628
    :goto_1
    iget-object v9, p0, Lcom/dspread/xpos/DspFingerPrint;->y:Ljava/lang/String;

    const-string v10, "0360"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/dspread/xpos/DspFingerPrint;->y:Ljava/lang/String;

    const-string v10, "360"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    .line 651
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-gt v1, v3, :cond_8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 657
    :cond_7
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    goto :goto_6

    :catch_1
    move-exception p1

    .line 659
    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 660
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_6

    .line 661
    :cond_8
    :goto_2
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    return v0

    .line 662
    :cond_9
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v6, :cond_c

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    .line 668
    :cond_a
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long p1, v8, v4

    if-ltz p1, :cond_b

    long-to-double v4, v8

    const-wide v8, 0x42474876e8000000L    # 2.0E11

    cmpg-double p1, v4, v8

    if-gtz p1, :cond_b

    move v0, v1

    goto :goto_6

    .line 673
    :cond_b
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    .line 674
    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 677
    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 678
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_6

    .line 679
    :cond_c
    :goto_4
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    return v0

    .line 680
    :cond_d
    :goto_5
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    return v0

    .line 736
    :cond_e
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->w:Ljava/lang/String;

    const-string v2, "05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 738
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_6

    .line 736
    :cond_f
    move v0, v1

    .line 738
    :goto_6
    return v0
.end method

.method private a(ZILjava/lang/String;)Z
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DspFingerPrint connectBT blueToothAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_BUSY:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    return v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/Vpos;->d(Z)V

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->f(I)V

    .line 21
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    instance-of p2, p1, Lcom/dspread/xpos/q0;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/dspread/xpos/VPosBluetooth_4mode;

    if-nez p2, :cond_2

    instance-of p1, p1, Lcom/dspread/xpos/p0;

    if-nez p1, :cond_2

    .line 24
    const-string p1, "connectBT: is not VPosBluetooth"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 25
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    return v1

    :cond_2
    if-eqz p3, :cond_7

    .line 30
    const-string p1, ""

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 36
    :cond_3
    iput-object p3, p0, Lcom/dspread/xpos/DspFingerPrint;->j:Ljava/lang/String;

    .line 38
    iget-object p2, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p2}, Lcom/dspread/xpos/Vpos;->g()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    .line 39
    invoke-virtual {p2}, Lcom/dspread/xpos/Vpos;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 43
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1}, Lcom/dspread/xpos/Vpos;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 44
    const-string p1, ">>>>>>>>>>>>>two buletooth"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_5
    :goto_0
    const-string p1, "++++++++++++++++++++++++++"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    .line 56
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->a()Z

    move-result p1

    return p1

    .line 57
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    return v1
.end method

.method static synthetic b(Lcom/dspread/xpos/DspFingerPrint;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->g()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-direct {p0, v1, p1, p2}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uc: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 8
    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    return-object p2

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    return-object p2

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/dspread/xpos/DspFingerPrint;->getOriData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v4

    if-nez v4, :cond_5

    .line 19
    const/4 p1, 0x6

    const/16 p2, 0x8

    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "E1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xa

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {v2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 22
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "A1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    const-string/jumbo v1, "receive=====:"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance v1, Lcom/dspread/xpos/i;

    const/16 v2, 0x22

    const/16 v6, 0xf

    invoke-direct {v1, v2, v3, v3, v6}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 26
    iget-object v2, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 27
    iget-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {v1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "second:==="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "build===="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "a:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-object p1

    :cond_5
    nop

    .line 44
    new-array v0, v1, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    aput-byte v2, v0, v3

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    const/16 v2, 0xb5

    if-ne v0, v2, :cond_6

    .line 45
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->RC_DIFFERENT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    :cond_6
    nop

    .line 46
    new-array v0, v1, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    aput-byte v2, v0, v3

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_7

    .line 47
    const-string p1, "========fa"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 48
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    :cond_7
    nop

    .line 49
    new-array v0, v1, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    aput-byte v2, v0, v3

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    const/16 v2, 0xb6

    if-ne v0, v2, :cond_8

    .line 50
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->TRANSMISSION_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    :cond_8
    nop

    .line 51
    new-array v0, v1, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    aput-byte v2, v0, v3

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_9

    .line 52
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->RC_SAME:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    :cond_9
    nop

    .line 53
    new-array v0, v1, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    aput-byte p1, v0, v3

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_a

    .line 54
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->ILVERR_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    :cond_a
    :goto_2
    nop

    .line 56
    iput-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    return-object p2
.end method

.method private b()V
    .locals 1

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/Vpos;)V

    return-void
.end method

.method private b(I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->e(I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->f(I)V

    .line 71
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$d;

    invoke-direct {v0, p0, p1}, Lcom/dspread/xpos/DspFingerPrint$d;-><init>(Lcom/dspread/xpos/DspFingerPrint;I)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Lcom/dspread/xpos/Vpos;)V
    .locals 5

    .line 57
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    new-instance v1, Lcom/dspread/xpos/i;

    iget v2, p0, Lcom/dspread/xpos/DspFingerPrint;->p:I

    const/16 v3, 0x41

    const/16 v4, 0x10

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 60
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 61
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Z)V

    .line 66
    :try_start_0
    iget p1, p0, Lcom/dspread/xpos/DspFingerPrint;->p:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->b:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "amount format error"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 80
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 89
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 103
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    :goto_1
    return v1
.end method

.method public static byteArray2Hex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 3
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v3, v3, 0xf

    .line 4
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->b(Lcom/dspread/xpos/Vpos;)V

    return-void
.end method

.method private c(I)V
    .locals 2

    const-string v0, "MSG_DO_TRADE"

    const-string v1, "MSG_FINGER_CAPTURE"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 68
    :sswitch_0
    const-string p1, "TradeMsg.MSG_FINGER_Penetrate"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 70
    :try_start_0
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->g:Ljava/lang/String;

    iget v1, p0, Lcom/dspread/xpos/DspFingerPrint;->s:I

    invoke-direct {p0, p1, v1}, Lcom/dspread/xpos/DspFingerPrint;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 73
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto/16 :goto_2

    .line 74
    :sswitch_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-----2----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->g:Ljava/lang/String;

    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->s:I

    invoke-direct {p0, p1, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 77
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 78
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    .line 79
    :sswitch_2
    :try_start_2
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->g:Ljava/lang/String;

    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->s:I

    invoke-direct {p0, p1, v0}, Lcom/dspread/xpos/DspFingerPrint;->b(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    :goto_0
    goto :goto_2

    .line 79
    :catch_2
    move-exception p1

    .line 81
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 82
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    .line 98
    :sswitch_3
    :try_start_3
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_BUSY:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    .line 99
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->e()Z

    .line 100
    const-string p1, "MSG_EXIT_TRADE"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 102
    const-string p1, "MSG_EXIT_TRADE222"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 103
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    .line 106
    :goto_1
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$ResetState;->RESETED:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    goto :goto_2

    .line 111
    :sswitch_4
    :try_start_4
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 113
    const-string p1, "MSG_LCD_SHOW_CUSTOM_DISPLAY"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 114
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    .line 138
    :sswitch_5
    :try_start_5
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    :catch_5
    move-exception p1

    .line 140
    const-string p1, "MSG_GET_POS_INFO"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 141
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_2

    .line 142
    :sswitch_6
    const-string p1, "TradeMsg.MSG_DO_TRADE"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 144
    :try_start_6
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->d()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    :catch_6
    move-exception p1

    .line 147
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 148
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7531 -> :sswitch_6
        0x7536 -> :sswitch_5
        0x7541 -> :sswitch_4
        0x7544 -> :sswitch_3
        0x756e -> :sswitch_2
        0x7570 -> :sswitch_1
        0x7571 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Ljava/lang/String;I)V
    .locals 6

    .line 20
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-direct {p0, v0, p1, p2}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uc: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v1, "29"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "2A"

    const-string v4, "2B"

    if-nez v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->getReverseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v2, v2, 0x6

    .line 36
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->getReverseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    .line 37
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    .line 42
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->getReverseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    .line 43
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string/jumbo v3, "productPro"

    invoke-virtual {p2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v1, "sensorPro"

    invoke-virtual {p2, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "softwarePro"

    invoke-virtual {p2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_3

    .line 51
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/DspFingerPrint;->a(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Ljava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method private d(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;
    .locals 4

    .line 86
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x11

    const/16 v2, 0x30

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dspread/xpos/i;->a()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 89
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    if-nez p1, :cond_0

    .line 91
    const-string/jumbo v0, "r: null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    return-object p1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method private d(Ljava/lang/String;I)Lcom/dspread/xpos/j;
    .locals 11

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/DspFingerPrint;->J:I

    .line 21
    iput v0, p0, Lcom/dspread/xpos/DspFingerPrint;->K:I

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "r: "

    const-string/jumbo v2, "r: null"

    const-string/jumbo v3, "w: "

    const/16 v4, 0xa0

    const/16 v5, 0x41

    const/16 v6, 0x200

    if-lt v0, v6, :cond_4

    .line 25
    :goto_0
    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->J:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v0, v7, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v7, p0, Lcom/dspread/xpos/DspFingerPrint;->J:I

    sub-int/2addr v0, v7

    if-le v0, v6, :cond_2

    .line 26
    const-string v0, "begin sc"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 27
    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->J:I

    add-int/lit16 v7, v0, 0x200

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget v7, p0, Lcom/dspread/xpos/DspFingerPrint;->K:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 31
    const-string v8, "00"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_0
    new-instance v8, Lcom/dspread/xpos/i;

    add-int/lit8 v9, p2, 0xa

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v8, v5, v4, v9, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/dspread/xpos/i;->a()[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {v0, v8}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 38
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    add-int/lit8 v7, p2, 0xf

    invoke-virtual {v0, v7}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-static {v2}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    .line 45
    :goto_1
    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->J:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/dspread/xpos/DspFingerPrint;->J:I

    .line 46
    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dspread/xpos/DspFingerPrint;->K:I

    .line 47
    const-string v0, "next sc"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const-wide/16 v7, 0x64

    .line 49
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 55
    :cond_2
    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->J:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/dspread/xpos/i;

    add-int/lit8 v6, p2, 0xa

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FF0000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, v5, v4, v6, p1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/dspread/xpos/i;->a()[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 59
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    add-int/lit8 p2, p2, 0x5

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :cond_3
    invoke-static {v2}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :cond_4
    new-instance v0, Lcom/dspread/xpos/i;

    add-int/lit8 v6, p2, 0xa

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, v5, v4, v6, p1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/dspread/xpos/i;->a()[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 73
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    add-int/lit8 p2, p2, 0x5

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :cond_5
    invoke-static {v2}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private d(I)Ljava/lang/String;
    .locals 2

    .line 3
    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    .line 11
    const-string p1, "1B12"

    goto :goto_0

    :cond_2
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_3

    .line 14
    const-string p1, "1B1B"

    goto :goto_0

    :cond_3
    const/16 v0, 0x13

    if-ne p1, v0, :cond_4

    .line 17
    const-string p1, "1B14"

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static d(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 79
    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 81
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    if-ge v2, v0, :cond_0

    .line 82
    aget-byte v3, p0, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method private d()V
    .locals 14

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    sget-boolean v0, Lcom/dspread/xpos/DspFingerPrint;->a0:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->l()V

    return-void

    .line 102
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->P:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->i:Lcom/dspread/xpos/t;

    iget-object v2, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    iget-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->u:Ljava/lang/String;

    iget v4, p0, Lcom/dspread/xpos/DspFingerPrint;->p:I

    iget-object v6, p0, Lcom/dspread/xpos/DspFingerPrint;->x:Ljava/lang/String;

    iget-object v7, p0, Lcom/dspread/xpos/DspFingerPrint;->z:Ljava/lang/String;

    iget-object v8, p0, Lcom/dspread/xpos/DspFingerPrint;->A:Ljava/lang/String;

    iget v9, p0, Lcom/dspread/xpos/DspFingerPrint;->t:I

    iget-object v10, p0, Lcom/dspread/xpos/DspFingerPrint;->S:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    iget-object v11, p0, Lcom/dspread/xpos/DspFingerPrint;->w:Ljava/lang/String;

    iget-object v12, p0, Lcom/dspread/xpos/DspFingerPrint;->y:Ljava/lang/String;

    iget-object v13, p0, Lcom/dspread/xpos/DspFingerPrint;->Q:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual/range {v1 .. v13}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static decrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint;->a([BI)I

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crc===:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    add-int/lit8 v4, v3, 0x2

    .line 20
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 21
    const-string v6, "11"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "1B"

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x2

    .line 23
    invoke-virtual {p1, v3, v4, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v3, "12"

    invoke-virtual {p1, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v3, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "11->1B12==="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    move v3, v4

    goto :goto_1

    .line 28
    :cond_1
    const-string v6, "13"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x2

    .line 30
    invoke-virtual {p1, v3, v4, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v3, "14"

    invoke-virtual {p1, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v3, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "13->1B14======"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    move v3, v4

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v2, v2, 0x2

    .line 37
    invoke-virtual {p1, v3, v4, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1, v4, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v3, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1B->1B1B======"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    move v3, v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    .line 44
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufChange+++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dspread/xpos/DspFingerPrint;->I:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "1B03"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ===aSerial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-object p1
.end method

.method private e(I)V
    .locals 0

    return-void
.end method

.method private e()Z
    .locals 4

    .line 60
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "exit disConnect() 1"

    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    const-wide/16 v1, 0x32

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 62
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 65
    :try_start_1
    iget-object v3, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p0, v3}, Lcom/dspread/xpos/DspFingerPrint;->c(Lcom/dspread/xpos/Vpos;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    move v2, v0

    .line 78
    :cond_1
    :goto_2
    const-string v0, "exit disConnect() 2"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    return v2
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected static f()Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint;->Y:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    return-object v0
.end method

.method private f(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/dspread/xpos/DspFingerPrint;->O:I

    return-void
.end method

.method private g()Landroid/content/Context;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;)Lcom/dspread/xpos/DspFingerPrint;
    .locals 2

    .line 1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint;

    invoke-direct {v0}, Lcom/dspread/xpos/DspFingerPrint;-><init>()V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    invoke-virtual {v0, p0}, Lcom/dspread/xpos/DspFingerPrint;->setPosMode(Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;)Z

    move-result p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DspFingerPrint------:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_1
    sget-object p0, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    return-object p0
.end method

.method public static getOriData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_3

    add-int/lit8 v2, p0, 0x2

    .line 6
    invoke-virtual {v1, p0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 7
    const-string v4, "1B"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v0, :cond_2

    add-int/lit8 v3, p0, 0x4

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v2, v3, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1B1B->1B======"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "12"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    const-string v4, "11"

    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, v2, v3, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1B12->11======"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "14"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    const-string v4, "13"

    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, v2, v3, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1B14->13======"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move p0, v2

    goto/16 :goto_0

    .line 28
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1.1.2"

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->o:Ljava/lang/String;

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->o:Ljava/lang/String;

    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->getBluetoothState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    .line 3
    invoke-static {}, Lcom/dspread/xpos/p0;->I()Lcom/dspread/xpos/p0;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/p0;->I()Lcom/dspread/xpos/p0;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    const-string v2, "fingerMsg.txt"

    const v3, 0x8000

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    const-string/jumbo v0, "success"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 24
    :goto_1
    throw p1

    :catch_2
    move-exception p1

    .line 25
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 19
    :catch_3
    move-exception p1

    .line 25
    :goto_3
    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dspread/xpos/t0;->J()Lcom/dspread/xpos/t0;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    return-void
.end method

.method private l()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dspread/xpos/DspFingerPrint;->R:Lcom/dspread/xpos/z0;

    invoke-virtual {v1}, Lcom/dspread/xpos/z0;->d()Z

    move-result v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set amount f = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 5
    const-string/jumbo v1, "set amount "

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/dspread/xpos/DspFingerPrint;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dspread/xpos/DspFingerPrint;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v2, v0, Lcom/dspread/xpos/DspFingerPrint;->w:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    iget-object v1, v0, Lcom/dspread/xpos/DspFingerPrint;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dspread/xpos/DspFingerPrint;->b(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/DspFingerPrint;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v2, v0, Lcom/dspread/xpos/DspFingerPrint;->console:Lcom/dspread/xpos/l;

    iget-object v3, v0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    iget-object v4, v0, Lcom/dspread/xpos/DspFingerPrint;->u:Ljava/lang/String;

    iget v5, v0, Lcom/dspread/xpos/DspFingerPrint;->p:I

    iget-object v6, v0, Lcom/dspread/xpos/DspFingerPrint;->P:Ljava/lang/String;

    iget-object v7, v0, Lcom/dspread/xpos/DspFingerPrint;->x:Ljava/lang/String;

    iget-object v8, v0, Lcom/dspread/xpos/DspFingerPrint;->z:Ljava/lang/String;

    iget-object v9, v0, Lcom/dspread/xpos/DspFingerPrint;->A:Ljava/lang/String;

    iget v10, v0, Lcom/dspread/xpos/DspFingerPrint;->t:I

    iget-object v11, v0, Lcom/dspread/xpos/DspFingerPrint;->S:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    iget-object v12, v0, Lcom/dspread/xpos/DspFingerPrint;->w:Ljava/lang/String;

    iget-object v13, v0, Lcom/dspread/xpos/DspFingerPrint;->y:Ljava/lang/String;

    iget-object v14, v0, Lcom/dspread/xpos/DspFingerPrint;->Q:Ljava/lang/String;

    invoke-virtual/range {v2 .. v14}, Lcom/dspread/xpos/l;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 22
    :cond_1
    iget-object v15, v0, Lcom/dspread/xpos/DspFingerPrint;->i:Lcom/dspread/xpos/t;

    iget-object v1, v0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    iget-object v2, v0, Lcom/dspread/xpos/DspFingerPrint;->u:Ljava/lang/String;

    iget v3, v0, Lcom/dspread/xpos/DspFingerPrint;->p:I

    iget-object v4, v0, Lcom/dspread/xpos/DspFingerPrint;->P:Ljava/lang/String;

    iget-object v5, v0, Lcom/dspread/xpos/DspFingerPrint;->x:Ljava/lang/String;

    iget-object v6, v0, Lcom/dspread/xpos/DspFingerPrint;->z:Ljava/lang/String;

    iget-object v7, v0, Lcom/dspread/xpos/DspFingerPrint;->A:Ljava/lang/String;

    iget v8, v0, Lcom/dspread/xpos/DspFingerPrint;->t:I

    iget-object v9, v0, Lcom/dspread/xpos/DspFingerPrint;->S:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    iget-object v10, v0, Lcom/dspread/xpos/DspFingerPrint;->w:Ljava/lang/String;

    iget-object v11, v0, Lcom/dspread/xpos/DspFingerPrint;->y:Ljava/lang/String;

    iget-object v12, v0, Lcom/dspread/xpos/DspFingerPrint;->Q:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    invoke-virtual/range {v15 .. v27}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    .line 34
    :cond_2
    const-string v1, "isKeyboardTrade"

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private n()Z
    .locals 7

    .line 1
    const-string v0, "QPOSService isPosExistFlag"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    const-string v1, "POS_SDK"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "[DspFingerPrint] DspFingerPrint is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    return v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->d:Lcom/dspread/xpos/DspFingerPrint$DspFingerPrintListener;

    if-nez v0, :cond_2

    .line 17
    const-string v0, "[DspFingerPrint] DspFingerPrintListener is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    return v2

    :cond_2
    nop

    .line 23
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->D:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->DISCONNECTING:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    const/16 v3, 0xc8

    const-wide/16 v4, 0xa

    if-ne v0, v1, :cond_6

    move v0, v2

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->D:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    sget-object v6, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->DISCONNECTED:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    if-ne v1, v6, :cond_3

    goto :goto_2

    .line 27
    :cond_3
    sget-object v6, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->UNKNOW:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    if-ne v1, v6, :cond_4

    .line 28
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    return v2

    :cond_4
    nop

    .line 32
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0

    .line 42
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->o()Z

    move-result v0

    const-string v1, "isPosExistFlag"

    if-eqz v0, :cond_7

    .line 50
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$ResetState;->RESETING:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    .line 51
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    const/16 v0, 0x7544

    .line 56
    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->b(I)V

    return v2

    :cond_7
    nop

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTradeFlag: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->o()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    move v0, v2

    .line 64
    :goto_3
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->o()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 66
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v6

    :goto_4
    add-int/lit8 v6, v0, 0x1

    if-ne v0, v3, :cond_8

    .line 71
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_BUSY:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    return v2

    .line 74
    :cond_8
    const-string v0, "QPOSService isPosExistFlag disConnect()"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    move v0, v6

    goto :goto_3

    .line 78
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "posExistFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 81
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->getBluetoothState()Z

    move-result v0

    if-nez v0, :cond_a

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "posExistFlag getBluetoothState(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->getBluetoothState()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 85
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->q()V

    goto :goto_5

    :cond_a
    nop

    :cond_b
    :goto_5
    return v1
.end method

.method private u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->m:Lcom/dspread/xpos/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/dspread/xpos/d;->t()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized FingerPenetrate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    .line 3
    const-string/jumbo v0, "\u89e6\u53d1\u900f\u4f20"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->n()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    .line 12
    :cond_1
    :try_start_2
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;->COMMON:Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;

    invoke-direct {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;)V

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/DspFingerPrint;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;

    .line 15
    :cond_2
    iget-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    if-eqz p1, :cond_3

    .line 16
    iget p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 19
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "return per===="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 21
    const-string p1, "onFingerPenetrate"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FingerTrasmission(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    .line 3
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->n()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 6
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    .line 10
    :cond_1
    :try_start_2
    iput p2, p0, Lcom/dspread/xpos/DspFingerPrint;->s:I

    .line 11
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;->COMMON:Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;

    invoke-direct {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/DspFingerPrint;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;

    .line 14
    :cond_2
    iget-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->M:Z

    if-eqz p1, :cond_3

    .line 15
    iget p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 18
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "return per===="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 20
    const-string p1, "FingerTrasmission"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->F:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$g;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/DspFingerPrint$g;-><init>(Lcom/dspread/xpos/DspFingerPrint;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Lcom/dspread/xpos/DspFingerPrint$Error;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_BUSY:Lcom/dspread/xpos/DspFingerPrint$Error;

    if-eq p1, v0, :cond_0

    .line 6
    const-string v0, "onError"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    new-instance v1, Lcom/dspread/xpos/DspFingerPrint$h;

    invoke-direct {v1, p0, p1}, Lcom/dspread/xpos/DspFingerPrint$h;-><init>(Lcom/dspread/xpos/DspFingerPrint;Lcom/dspread/xpos/DspFingerPrint$Error;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;)V
    .locals 20

    .line 455
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/dspread/xpos/DspFingerPrint;->d(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 456
    invoke-virtual {v0, v1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 458
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    .line 462
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 463
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 466
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 467
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 470
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 471
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 472
    nop

    .line 473
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    const-string v11, ""

    if-le v9, v10, :cond_1

    .line 474
    invoke-virtual {v8, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 475
    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 473
    :cond_1
    move-object v9, v11

    .line 475
    :goto_0
    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 480
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 481
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "batteryLevelLen:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 482
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " mV"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 485
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 486
    invoke-virtual {v1, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v12

    .line 487
    const-string v13, "00"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v14, "false"

    const-string/jumbo v15, "true"

    if-eqz v12, :cond_2

    .line 488
    move-object v12, v14

    goto :goto_1

    .line 490
    :cond_2
    move-object v12, v15

    :goto_1
    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 494
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 495
    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 496
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 497
    move-object v4, v14

    goto :goto_2

    .line 499
    :cond_3
    move-object v4, v15

    :goto_2
    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 503
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 504
    invoke-virtual {v1, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    move-object/from16 v17, v11

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v11

    .line 505
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 506
    move-object v11, v14

    goto :goto_3

    .line 508
    :cond_4
    move-object v11, v15

    :goto_3
    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 512
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 513
    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    move-object/from16 v18, v14

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v14

    .line 514
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 515
    move-object/from16 v14, v18

    goto :goto_4

    .line 517
    :cond_5
    move-object v14, v15

    :goto_4
    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 521
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 522
    invoke-virtual {v1, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    move-object/from16 v19, v15

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v15

    .line 523
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 524
    move-object/from16 v15, v18

    goto :goto_5

    .line 526
    :cond_6
    move-object/from16 v15, v19

    :goto_5
    add-int/2addr v3, v6

    .line 530
    if-ge v3, v2, :cond_7

    add-int/lit8 v6, v3, 0x1

    .line 532
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 533
    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v16

    add-int/2addr v3, v6

    move-object/from16 v6, v16

    goto :goto_6

    .line 530
    :cond_7
    move-object/from16 v6, v17

    .line 536
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    const-string v9, "dataEncryptionMode: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 537
    if-ge v3, v2, :cond_9

    add-int/lit8 v0, v3, 0x1

    .line 539
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 540
    invoke-virtual {v1, v0, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    .line 542
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 543
    move-object/from16 v6, v18

    goto :goto_7

    .line 545
    :cond_8
    move-object/from16 v6, v19

    :goto_7
    add-int/2addr v3, v0

    goto :goto_8

    .line 537
    :cond_9
    move-object/from16 v6, v17

    .line 549
    :goto_8
    if-ge v3, v2, :cond_b

    add-int/lit8 v0, v3, 0x1

    .line 551
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 552
    invoke-virtual {v1, v0, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    .line 554
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 555
    goto :goto_9

    .line 557
    :cond_a
    move-object/from16 v18, v19

    :goto_9
    add-int/2addr v3, v0

    move-object/from16 v0, v18

    goto :goto_a

    .line 549
    :cond_b
    move-object/from16 v0, v17

    .line 562
    :goto_a
    if-ge v3, v2, :cond_e

    add-int/lit8 v2, v3, 0x1

    .line 564
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 566
    invoke-virtual {v1, v2, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v3, 0x64

    if-le v1, v3, :cond_c

    move v1, v3

    goto :goto_b

    :cond_c
    if-gez v1, :cond_d

    move v1, v2

    .line 572
    :cond_d
    :goto_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 562
    :cond_e
    move-object/from16 v1, v17

    .line 577
    :goto_c
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 579
    const-string v3, "isSupportedTrack1"

    invoke-virtual {v2, v3, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v3, "isSupportedTrack2"

    invoke-virtual {v2, v3, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v3, "isSupportedTrack3"

    invoke-virtual {v2, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v3, "bootloaderVersion"

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v3, "firmwareVersion"

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v3, "isUsbConnected"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v3, "isCharging"

    invoke-virtual {v2, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v3, "batteryLevel"

    invoke-virtual {v2, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v3, "hardwareVersion"

    invoke-virtual {v2, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v3, "SUB"

    move-object/from16 v9, v16

    invoke-virtual {v2, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string/jumbo v3, "updateWorkKeyFlag"

    invoke-virtual {v2, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v3, "isKeyboard"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v0, "batteryPercentage"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/DspFingerPrint;->b(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected a(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    const-string v0, "onFingerPrintTranmis"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    new-instance v1, Lcom/dspread/xpos/DspFingerPrint$l;

    invoke-direct {v1, p0, p1}, Lcom/dspread/xpos/DspFingerPrint$l;-><init>(Lcom/dspread/xpos/DspFingerPrint;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 68
    const-string v0, "onLcdShowCustomDisplay"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    new-instance v1, Lcom/dspread/xpos/DspFingerPrint$k;

    invoke-direct {v1, p0, p1}, Lcom/dspread/xpos/DspFingerPrint$k;-><init>(Lcom/dspread/xpos/DspFingerPrint;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Z)Z
    .locals 6

    .line 333
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 336
    :cond_0
    new-instance v1, Lcom/dspread/xpos/i;

    const/16 v3, 0x20

    const/4 v4, 0x5

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "w: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dspread/xpos/i;->a()[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 340
    invoke-virtual {p1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    if-nez p1, :cond_1

    .line 343
    const-string/jumbo p1, "r: null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    return v2

    .line 346
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 349
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method protected a(Lcom/dspread/xpos/j;)Z
    .locals 5

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "============== checkCmdID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 249
    const-string p1, "QPOSService checkCmdId disConnect() uc == null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 250
    const-string p1, "checkCmdId disConnect() uc == null"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$ResetState;->RESETING:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    if-eq p1, v0, :cond_0

    .line 254
    iget-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->h:Z

    if-eqz p1, :cond_0

    .line 255
    const-string p1, "============== onError(Error.TIMEOUT);"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 256
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    .line 331
    :cond_0
    :goto_0
    move v0, v1

    goto/16 :goto_3

    .line 261
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uc+++++++result=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v0, [B

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v4

    aput-byte v4, v3, v1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_14

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x88

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    .line 265
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_3

    .line 267
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    if-lez v2, :cond_15

    .line 269
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/j;->a(I)B

    goto/16 :goto_3

    .line 274
    :cond_3
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_4

    goto/16 :goto_2

    .line 276
    :cond_4
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_5

    goto/16 :goto_2

    .line 278
    :cond_5
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_6

    goto/16 :goto_2

    .line 280
    :cond_6
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x89

    if-ne v2, v3, :cond_7

    goto/16 :goto_2

    .line 282
    :cond_7
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    .line 287
    :cond_8
    const-string v2, "QPOSService checkCmdId disConnect() 22"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 288
    const-string v2, "checkCmdId disConnect()222"

    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_9

    goto/16 :goto_0

    .line 290
    :cond_9
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_a

    .line 291
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->CMD_TIMEOUT:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto/16 :goto_0

    .line 293
    :cond_a
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_b

    .line 294
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->MAC_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto/16 :goto_0

    .line 295
    :cond_b
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x35

    if-ne v2, v3, :cond_c

    .line 296
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->CMD_NOT_AVAILABLE:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto/16 :goto_0

    .line 298
    :cond_c
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    if-nez v2, :cond_d

    .line 299
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->CMD_NOT_AVAILABLE:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto/16 :goto_0

    .line 300
    :cond_d
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    .line 302
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->DEVICE_RESET:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto :goto_3

    .line 303
    :cond_e
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/16 v2, 0x39

    if-ne v0, v2, :cond_f

    .line 304
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->WR_DATA_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto/16 :goto_0

    .line 305
    :cond_f
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/16 v2, 0x37

    if-ne v0, v2, :cond_10

    .line 308
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->EMV_APP_CFG_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto/16 :goto_0

    .line 309
    :cond_10
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/16 v2, 0x38

    if-ne v0, v2, :cond_11

    .line 312
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->EMV_CAPK_CFG_ERROR:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto/16 :goto_0

    .line 314
    :cond_11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/16 v2, 0x30

    const-string v3, "POS_SDK"

    if-ne v0, v2, :cond_12

    .line 315
    const-string p1, "CmdId.CMDID_ICC_INIT_ERROR,48"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    :cond_12
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/16 v2, 0x32

    if-ne v0, v2, :cond_13

    .line 318
    const-string p1, "CmdId.CMDID_ICC_TRADE_ERROR,50"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 321
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uc command id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_1
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$Error;->UNKNOWN:Lcom/dspread/xpos/DspFingerPrint$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$Error;)V

    goto/16 :goto_0

    :cond_14
    :goto_2
    nop

    .line 331
    :cond_15
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCmdId rf = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    return v0
.end method

.method protected b(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "onQposInfoResult"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    new-instance v1, Lcom/dspread/xpos/DspFingerPrint$a;

    invoke-direct {v1, p0, p1}, Lcom/dspread/xpos/DspFingerPrint$a;-><init>(Lcom/dspread/xpos/DspFingerPrint;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected b(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->q:Z

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<disConnect start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->DISCONNECTING:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->D:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->E:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/dspread/xpos/Vpos;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    nop

    .line 11
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->c:Z

    .line 13
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    .line 14
    const-string p1, "disConnect end>>>>>>>>>>>"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->DISCONNECTED:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->D:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    return-void
.end method

.method protected c(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->r:Z

    return-void
.end method

.method protected c(Lcom/dspread/xpos/Vpos;)Z
    .locals 5

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v2, 0x20

    const/4 v3, 0x5

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "w: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dspread/xpos/i;->a()[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 61
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    if-nez p1, :cond_1

    .line 63
    const-string/jumbo p1, "r: null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    return v1

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->a(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    return p1
.end method

.method public clearBluetoothBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->m:Lcom/dspread/xpos/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/dspread/xpos/d;->a()V

    :cond_0
    return-void
.end method

.method public closeAudio()V
    .locals 2

    .line 1
    const-string v0, "closeAudio"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->l:Lcom/dspread/xpos/DspFingerPrint$o;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->l:Lcom/dspread/xpos/DspFingerPrint$o;

    :cond_1
    return-void
.end method

.method public closeDevice()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->E:Z

    .line 2
    const-string v0, "closeDevice"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    return-void
.end method

.method public closeUsb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/dspread/xpos/Vpos;->d()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->s()V

    return-void
.end method

.method public connectBT(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(ZILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public connectBluetoothDevice(ZILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/DspFingerPrint;->a(ZILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected d(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTradeFlag;;;;;;;;;;;;;;;;;; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->b:Z

    return-void
.end method

.method public disconnectBT()Z
    .locals 2

    .line 1
    const-string v0, "DspFingerPrint disconnect buletooth"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    const-string v0, "disconnectBT"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->connectBT(Ljava/lang/String;)Z

    move-result v0

    .line 10
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    if-nez v0, :cond_2

    .line 12
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    :cond_2
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public doTrade(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QPOSService doTrade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/dspread/xpos/DspFingerPrint;->t:I

    .line 6
    iput p1, p0, Lcom/dspread/xpos/DspFingerPrint;->p:I

    .line 7
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;->COMMON:Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$DoTradeMode;)V

    .line 8
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$BusinessMode;->BusinessMode_DO_TRADE:Lcom/dspread/xpos/DspFingerPrint$BusinessMode;

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$BusinessMode;)V

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string p1, "onFingerErollPrintTranmis"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$m;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/DspFingerPrint$m;-><init>(Lcom/dspread/xpos/DspFingerPrint;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "onFingerPenetrate"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$n;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/DspFingerPrint$n;-><init>(Lcom/dspread/xpos/DspFingerPrint;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBluetoothState()Z
    .locals 3

    .line 1
    const-string v0, "DspFingerPrint getBluetoothState"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/dspread/xpos/Vpos;->k()Z

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBluetoothState ======== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDataProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/DspFingerPrint;->L:I

    return v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->m:Lcom/dspread/xpos/d;

    invoke-virtual {v0}, Lcom/dspread/xpos/d;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->n:Ljava/util/List;

    return-object v0
.end method

.method public getFingerInfo(I)V
    .locals 1

    .line 1
    const-string v0, "0501002F"

    invoke-virtual {p0, v0, p1}, Lcom/dspread/xpos/DspFingerPrint;->getFingerTrasmission(Ljava/lang/String;I)V

    return-void
.end method

.method public getFingerTrasmission(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->g:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----1----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 6
    iput p2, p0, Lcom/dspread/xpos/DspFingerPrint;->s:I

    .line 7
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$BusinessMode;->Business_GetDspFingerPrint_Info:Lcom/dspread/xpos/DspFingerPrint$BusinessMode;

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$BusinessMode;)V

    return-void
.end method

.method public getModuleAndSerial(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->g:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/dspread/xpos/DspFingerPrint;->s:I

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/DspFingerPrint;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getModuleNumber()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "0501002F"

    const/16 v1, 0x14

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint;->getModuleAndSerial(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQposInfo()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$BusinessMode;->BusinessMode_GET_POS_INFO:Lcom/dspread/xpos/DspFingerPrint$BusinessMode;

    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$BusinessMode;)V

    return-void
.end method

.method public getScanStatus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->m:Lcom/dspread/xpos/d;

    invoke-virtual {v0}, Lcom/dspread/xpos/d;->j()Z

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "0501002F"

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint;->getModuleAndSerial(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsbDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->B:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public initListener(Landroid/os/Handler;Lcom/dspread/xpos/DspFingerPrint$DspFingerPrintListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/dspread/xpos/DspFingerPrint;->d:Lcom/dspread/xpos/DspFingerPrint$DspFingerPrintListener;

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    .line 3
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    instance-of p1, p1, Lcom/dspread/xpos/x0;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    .line 5
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->setVolume(Landroid/content/Context;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    sget-object p2, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/DspFingerPrint;)V

    return-void
.end method

.method public isSetVolumeFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->e:Z

    return v0
.end method

.method protected k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->q:Z

    return v0
.end method

.method public lcdShowCustomDisplay(Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->LCD_MODE_ALIGNLEFT:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    const-string v1, "00"

    if-ne p1, v0, :cond_1

    .line 6
    move-object p1, v1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->LCD_MODE_ALIGNRIGHT:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    if-ne p1, v0, :cond_2

    .line 8
    const-string p1, "20"

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->LCD_MODE_ALIGNCENTER:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    if-ne p1, v0, :cond_3

    .line 10
    const-string p1, "40"

    goto :goto_0

    .line 12
    :cond_3
    move-object p1, v1

    .line 14
    :goto_0
    const-string v0, ""

    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_4
    invoke-direct {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->h(Ljava/lang/String;)V

    .line 20
    iput p3, p0, Lcom/dspread/xpos/DspFingerPrint;->p:I

    .line 21
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint$BusinessMode;->BusinessMode_LCD_SHOW_CUSTOM_DIDPLAY:Lcom/dspread/xpos/DspFingerPrint$BusinessMode;

    invoke-direct {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint$BusinessMode;)V

    return-void
.end method

.method protected m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->r:Z

    return v0
.end method

.method protected o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->b:Z

    return v0
.end method

.method public openLog(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/dspread/xpos/Tip;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public openUsb(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "openUsb begin--"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->q()V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    check-cast v0, Lcom/dspread/xpos/t0;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/t0;->a(Landroid/hardware/usb/UsbDevice;)V

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p1}, Lcom/dspread/xpos/Vpos;->A()Z

    move-result p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbSerialPort open f: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->r()V

    return-void

    :cond_1
    nop

    .line 20
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->s()V

    return-void
.end method

.method protected p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    new-instance v1, Lcom/dspread/xpos/DspFingerPrint$f;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/DspFingerPrint$f;-><init>(Lcom/dspread/xpos/DspFingerPrint;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected q()V
    .locals 3

    .line 1
    const-string v0, "onRequestNoQposDetected"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->o()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/Vpos;->c(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    .line 12
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    if-nez v0, :cond_2

    return-void

    .line 15
    :cond_2
    new-instance v1, Lcom/dspread/xpos/DspFingerPrint$c;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/DspFingerPrint$c;-><init>(Lcom/dspread/xpos/DspFingerPrint;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected r()V
    .locals 2

    .line 1
    const-string v0, "onRequestQposConnected"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance v1, Lcom/dspread/xpos/DspFingerPrint$b;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/DspFingerPrint$b;-><init>(Lcom/dspread/xpos/DspFingerPrint;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetPosStatus()Z
    .locals 3

    .line 1
    const-string v0, "dpsFingerPrint resetPosStatus"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$DisconnectState;->UNKNOW:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->D:Lcom/dspread/xpos/DspFingerPrint$DisconnectState;

    .line 7
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$ResetState;->INIT:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    .line 9
    iget-boolean v0, p0, Lcom/dspread/xpos/DspFingerPrint;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 13
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$ResetState;->RESETING:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    .line 15
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->e()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 17
    :try_start_1
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    .line 19
    :cond_2
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$ResetState;->RESETED:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    iput-object v2, p0, Lcom/dspread/xpos/DspFingerPrint;->N:Lcom/dspread/xpos/DspFingerPrint$ResetState;

    goto :goto_0

    .line 22
    :catch_0
    move-exception v2

    goto :goto_1

    .line 13
    :cond_3
    move v0, v1

    .line 22
    :goto_0
    const-string/jumbo v2, "resetPosStatus"

    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    .line 27
    :goto_1
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    .line 28
    iput v1, p0, Lcom/dspread/xpos/DspFingerPrint;->H:I

    return v0
.end method

.method protected s()V
    .locals 3

    .line 1
    const-string v0, "onRequestQposDisconnected"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->o()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/DspFingerPrint;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->d(Z)V

    :cond_0
    nop

    .line 9
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/DspFingerPrint;->setPosExistFlag(Z)V

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 13
    :cond_1
    new-instance v1, Lcom/dspread/xpos/DspFingerPrint$j;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/DspFingerPrint$j;-><init>(Lcom/dspread/xpos/DspFingerPrint;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scanQPos2Mode(Landroid/content/Context;J)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->m:Lcom/dspread/xpos/d;

    if-nez v0, :cond_0

    sget-object v0, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/dspread/xpos/d;->a(Lcom/dspread/xpos/DspFingerPrint;)Lcom/dspread/xpos/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->m:Lcom/dspread/xpos/d;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->m:Lcom/dspread/xpos/d;

    invoke-virtual {v0}, Lcom/dspread/xpos/d;->t()V

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->m:Lcom/dspread/xpos/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dspread/xpos/d;->a(Landroid/content/Context;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$TransactionType;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "setAmount"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->u:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/dspread/xpos/DspFingerPrint;->v:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/dspread/xpos/DspFingerPrint;->y:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "transactionType :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p4}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/QPOSService$TransactionType;)B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x1

    new-array p2, p1, [B

    .line 7
    invoke-direct {p0, p4}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/QPOSService$TransactionType;)B

    move-result p3

    const/4 p4, 0x0

    aput-byte p3, p2, p4

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/DspFingerPrint;->w:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/DspFingerPrint;->c(Z)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setAmount tradeType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/dspread/xpos/DspFingerPrint;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->R:Lcom/dspread/xpos/z0;

    invoke-virtual {p1}, Lcom/dspread/xpos/z0;->b()V

    return-void
.end method

.method public setAutomaticDisconnect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->E:Z

    return-void
.end method

.method public setCommunicationMode(Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/dspread/xpos/DspFingerPrint;->Y:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setConext(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->C:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/dspread/xpos/QPOSService;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dspread/xpos/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    if-nez v1, :cond_2

    .line 14
    const-string p1, "audio---pos null--------------"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    instance-of v0, v0, Lcom/dspread/xpos/x0;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->closeAudio()V

    goto :goto_0

    .line 22
    :cond_3
    const-string/jumbo v0, "setConext nnnnnnnn----------------- "

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 26
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->a:Lcom/dspread/xpos/Vpos;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/Vpos;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    return-void
.end method

.method public setJudgeDebitOrCreditFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->T:Z

    return-void
.end method

.method public setPosExistFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->h:Z

    return-void
.end method

.method public setPosMode(Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;)Z
    .locals 2

    .line 1
    const-string v0, "[DspFingerPrint]->setPosMode"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/dspread/xpos/DspFingerPrint;->f()Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 5
    :cond_0
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/DspFingerPrint;->setCommunicationMode(Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;)V

    .line 6
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->BLUETOOTH:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    if-ne v0, p1, :cond_1

    .line 7
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    invoke-direct {p1}, Lcom/dspread/xpos/DspFingerPrint;->i()V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->USB_OTG_CDC_ACM:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    if-ne v0, p1, :cond_2

    .line 9
    sget-object p1, Lcom/dspread/xpos/DspFingerPrint;->W:Lcom/dspread/xpos/DspFingerPrint;

    invoke-direct {p1}, Lcom/dspread/xpos/DspFingerPrint;->j()V

    .line 15
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPosMode: this.context: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setUsbDevice(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint;->B:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method public setVolume(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/DspFingerPrint;->isSetVolumeFlag()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/u;->j()Z

    return-void
.end method

.method public setVolumeFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/DspFingerPrint;->e:Z

    return-void
.end method

.method public stopScanQPos2Mode()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/DspFingerPrint;->u()Z

    move-result v0

    return v0
.end method

.method protected t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint;->k:Landroid/os/Handler;

    new-instance v1, Lcom/dspread/xpos/DspFingerPrint$i;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/DspFingerPrint$i;-><init>(Lcom/dspread/xpos/DspFingerPrint;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
