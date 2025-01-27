.class public Lcom/dspread/xpos/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/Service$DisconnectState;,
        Lcom/dspread/xpos/Service$ResetState;,
        Lcom/dspread/xpos/Service$c;,
        Lcom/dspread/xpos/Service$BusinessMode;,
        Lcom/dspread/xpos/Service$TransactionType;,
        Lcom/dspread/xpos/Service$Error;,
        Lcom/dspread/xpos/Service$Display;,
        Lcom/dspread/xpos/Service$EmvOption;
    }
.end annotation


# static fields
.field private static L:Z = true


# instance fields
.field private A:Z

.field protected B:Lcom/dspread/xpos/QPOSService$DoTradeMode;

.field private C:Lcom/dspread/xpos/Service$DisconnectState;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:I

.field private J:Lcom/dspread/xpos/Service$ResetState;

.field private K:Z

.field private a:Lcom/dspread/xpos/POSUart;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field private l:Lcom/dspread/xpos/t;

.field private m:Ljava/lang/String;

.field private n:Lcom/dspread/xpos/z0;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:I

.field r:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/dspread/xpos/Vpos;

.field protected t:Lcom/dspread/xpos/DoEmvApp;

.field private u:Z

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Lcom/dspread/xpos/Service$c;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/Service;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/dspread/xpos/Service;->d:Z

    .line 5
    const-string v1, ""

    iput-object v1, p0, Lcom/dspread/xpos/Service;->e:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/dspread/xpos/Service;->f:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/dspread/xpos/Service;->g:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/dspread/xpos/Service;->h:Ljava/lang/String;

    .line 10
    iput v0, p0, Lcom/dspread/xpos/Service;->j:I

    .line 11
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    iput-object v2, p0, Lcom/dspread/xpos/Service;->k:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    .line 14
    iput-object v1, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lcom/dspread/xpos/Service;->o:Z

    .line 18
    iput-object v1, p0, Lcom/dspread/xpos/Service;->p:Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/dspread/xpos/Service;->r:Ljava/util/Hashtable;

    .line 23
    iput-boolean v0, p0, Lcom/dspread/xpos/Service;->u:Z

    .line 24
    iput v0, p0, Lcom/dspread/xpos/Service;->v:I

    .line 25
    iput-object v1, p0, Lcom/dspread/xpos/Service;->w:Ljava/lang/String;

    .line 26
    const/16 v2, 0x3c

    iput v2, p0, Lcom/dspread/xpos/Service;->x:I

    .line 28
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dspread/xpos/Service;->z:Z

    .line 326
    iput-boolean v0, p0, Lcom/dspread/xpos/Service;->A:Z

    .line 327
    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeMode;->COMMON:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    iput-object v3, p0, Lcom/dspread/xpos/Service;->B:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    .line 343
    sget-object v3, Lcom/dspread/xpos/Service$DisconnectState;->UNKNOW:Lcom/dspread/xpos/Service$DisconnectState;

    iput-object v3, p0, Lcom/dspread/xpos/Service;->C:Lcom/dspread/xpos/Service$DisconnectState;

    .line 806
    iput-object v1, p0, Lcom/dspread/xpos/Service;->D:Ljava/lang/String;

    .line 1031
    iput-object v1, p0, Lcom/dspread/xpos/Service;->F:Ljava/lang/String;

    .line 1044
    iput-object v1, p0, Lcom/dspread/xpos/Service;->G:Ljava/lang/String;

    .line 1160
    iput v0, p0, Lcom/dspread/xpos/Service;->I:I

    .line 1206
    sget-object v0, Lcom/dspread/xpos/Service$ResetState;->INIT:Lcom/dspread/xpos/Service$ResetState;

    iput-object v0, p0, Lcom/dspread/xpos/Service;->J:Lcom/dspread/xpos/Service$ResetState;

    .line 1211
    iput-boolean v2, p0, Lcom/dspread/xpos/Service;->K:Z

    .line 1212
    iget-object v0, p0, Lcom/dspread/xpos/Service;->a:Lcom/dspread/xpos/POSUart;

    if-nez v0, :cond_0

    .line 1213
    invoke-static {}, Lcom/dspread/xpos/POSUart;->G()Lcom/dspread/xpos/POSUart;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/Service;->a:Lcom/dspread/xpos/POSUart;

    .line 1214
    new-instance v0, Lcom/dspread/xpos/z0;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/z0;-><init>(Lcom/dspread/xpos/Service;)V

    iput-object v0, p0, Lcom/dspread/xpos/Service;->n:Lcom/dspread/xpos/z0;

    .line 1215
    new-instance v0, Lcom/dspread/xpos/t;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/t;-><init>(Lcom/dspread/xpos/Service;)V

    iput-object v0, p0, Lcom/dspread/xpos/Service;->l:Lcom/dspread/xpos/t;

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    if-nez v0, :cond_1

    .line 1218
    invoke-static {}, Lcom/dspread/xpos/POSUart;->G()Lcom/dspread/xpos/POSUart;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    :cond_1
    return-void
.end method

.method private a(Lcom/dspread/xpos/Service$TransactionType;)B
    .locals 2

    .line 934
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->GOODS:Lcom/dspread/xpos/Service$TransactionType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 936
    :cond_0
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->SERVICES:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 938
    :cond_1
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->CASH:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 940
    :cond_2
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->CASHBACK:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 942
    :cond_3
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->INQUIRY:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    return p1

    .line 944
    :cond_4
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->TRANSFER:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    .line 946
    :cond_5
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->ADMIN:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x7

    return p1

    .line 948
    :cond_6
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->CASHDEPOSIT:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    return p1

    .line 950
    :cond_7
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->PAYMENT:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_8

    const/16 p1, 0x9

    return p1

    .line 952
    :cond_8
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->PBOCLOG:Lcom/dspread/xpos/Service$TransactionType;

    if-eq p1, v0, :cond_12

    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_INQUIRE_LOG:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_9

    goto :goto_0

    .line 955
    :cond_9
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->SALE:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_a

    const/16 p1, 0xb

    return p1

    .line 957
    :cond_a
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->PREAUTH:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_b

    const/16 p1, 0xc

    return p1

    .line 959
    :cond_b
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_DESIGNATED_LOAD:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_c

    const/16 p1, 0x10

    return p1

    .line 961
    :cond_c
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_UNDESIGNATED_LOAD:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_d

    const/16 p1, 0x11

    return p1

    .line 963
    :cond_d
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_CASH_LOAD:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_e

    const/16 p1, 0x12

    return p1

    .line 965
    :cond_e
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_CASH_LOAD_VOID:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_f

    const/16 p1, 0x13

    return p1

    .line 967
    :cond_f
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->REFUND:Lcom/dspread/xpos/Service$TransactionType;

    if-ne p1, v0, :cond_10

    const/16 p1, 0x14

    return p1

    .line 969
    :cond_10
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->UPDATE_PIN:Lcom/dspread/xpos/Service$TransactionType;

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

.method private a(Lcom/dspread/xpos/Service$BusinessMode;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/dspread/xpos/Service;->C:Lcom/dspread/xpos/Service$DisconnectState;

    sget-object v1, Lcom/dspread/xpos/Service$DisconnectState;->DISCONNECTING:Lcom/dspread/xpos/Service$DisconnectState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/dspread/xpos/Service;->C:Lcom/dspread/xpos/Service$DisconnectState;

    sget-object v2, Lcom/dspread/xpos/Service$DisconnectState;->DISCONNECTED:Lcom/dspread/xpos/Service$DisconnectState;

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 203
    :cond_0
    sget-object v2, Lcom/dspread/xpos/Service$DisconnectState;->UNKNOW:Lcom/dspread/xpos/Service$DisconnectState;

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v1, 0xa

    .line 207
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 217
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/dspread/xpos/Service;->J:Lcom/dspread/xpos/Service$ResetState;

    sget-object v1, Lcom/dspread/xpos/Service$ResetState;->RESETING:Lcom/dspread/xpos/Service$ResetState;

    if-ne v0, v1, :cond_4

    return-void

    .line 220
    :cond_4
    sget-object v0, Lcom/dspread/xpos/Service$ResetState;->INIT:Lcom/dspread/xpos/Service$ResetState;

    iput-object v0, p0, Lcom/dspread/xpos/Service;->J:Lcom/dspread/xpos/Service$ResetState;

    .line 222
    invoke-virtual {p0}, Lcom/dspread/xpos/Service;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    iput-object v1, p0, Lcom/dspread/xpos/Service;->J:Lcom/dspread/xpos/Service$ResetState;

    .line 225
    const-string p1, "onDoTrade(DDDD)"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    .line 226
    const/16 p1, 0x7544

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 227
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    return-void

    :cond_5
    nop

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Service;->e(Z)V

    .line 234
    sget-object v0, Lcom/dspread/xpos/Service$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/16 p1, 0x756b

    .line 519
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 520
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_1
    const/16 p1, 0x756a

    .line 521
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 522
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_2
    const/16 p1, 0x7569

    .line 523
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 524
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_3
    const/16 p1, 0x7568

    .line 525
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 526
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_4
    const/16 p1, 0x7567

    .line 527
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 528
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_5
    const/16 p1, 0x7566

    .line 529
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 530
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_6
    const/16 p1, 0x7565

    .line 531
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 532
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_7
    const/16 p1, 0x7564

    .line 533
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 534
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_8
    const/16 p1, 0x7563

    .line 535
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 536
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_9
    const/16 p1, 0x7561

    .line 537
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 538
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_a
    const/16 p1, 0x7560

    .line 539
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 540
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_b
    const/16 p1, 0x755f

    .line 541
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 542
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_c
    const/16 p1, 0x755e

    .line 543
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 544
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_d
    const/16 p1, 0x755d

    .line 545
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 546
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_e
    const/16 p1, 0x7562

    .line 547
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 548
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_f
    const/16 p1, 0x755c

    .line 549
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 550
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_10
    const/16 p1, 0x755b

    .line 551
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 552
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_11
    const/16 p1, 0x7550

    .line 553
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 554
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_12
    const/16 p1, 0x754f

    .line 555
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 556
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_13
    const/16 p1, 0x754e

    .line 557
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 558
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_14
    const/16 p1, 0x754c

    .line 559
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 560
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_15
    const/16 p1, 0x754b

    .line 561
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 562
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_16
    const/16 p1, 0x7557

    .line 563
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 564
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_17
    const/16 p1, 0x755a

    .line 565
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 566
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_18
    const/16 p1, 0x7556

    .line 567
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 568
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_19
    const/16 p1, 0x7555

    .line 569
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 570
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_1a
    const/16 p1, 0x7554

    .line 571
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 572
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_1b
    const/16 p1, 0x7553

    .line 573
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 574
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_1c
    const/16 p1, 0x7552

    .line 575
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 576
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_1d
    const/16 p1, 0x754a

    .line 577
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 578
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_1e
    const/16 p1, 0x7547

    .line 579
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 580
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_1f
    const/16 p1, 0x7549

    .line 581
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 582
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_20
    const/16 p1, 0x7548

    .line 583
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 584
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_21
    const/16 p1, 0x7546

    .line 585
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 586
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_22
    const/16 p1, 0x7545

    .line 587
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 588
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_23
    const/16 p1, 0x7543

    .line 589
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 590
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_24
    const/16 p1, 0x7558

    .line 591
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 592
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_25
    const/16 p1, 0x756d

    .line 593
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 594
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_26
    const/16 p1, 0x7542

    .line 595
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 596
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_27
    nop

    .line 597
    const/16 p1, 0x7541

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 598
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_28
    nop

    .line 599
    const/16 p1, 0x7540

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 600
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_29
    nop

    .line 601
    const/16 p1, 0x7538

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 602
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_2a
    nop

    .line 603
    const/16 p1, 0x7532

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 604
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_2b
    nop

    .line 605
    const/16 p1, 0x7537

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 606
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_2c
    nop

    .line 607
    const/16 p1, 0x753f

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 608
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_2d
    nop

    .line 609
    const/16 p1, 0x756f

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 610
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_2e
    nop

    .line 611
    const/16 p1, 0x753e

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 612
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_2f
    nop

    .line 613
    const/16 p1, 0x753d

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 614
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto/16 :goto_3

    :pswitch_30
    nop

    .line 615
    const/16 p1, 0x753c

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 616
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_31
    nop

    .line 617
    const/16 p1, 0x756c

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 618
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_32
    nop

    .line 619
    const/16 p1, 0x7539

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 620
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_33
    nop

    .line 621
    const/16 p1, 0x7576

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 622
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_34
    nop

    .line 623
    const/16 p1, 0x7575

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 624
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_35
    nop

    .line 625
    const/16 p1, 0x7536

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 626
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_36
    nop

    .line 627
    const/16 p1, 0x7574

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 628
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_37
    nop

    .line 629
    const/16 p1, 0x7573

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 630
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_38
    nop

    .line 631
    const/16 p1, 0x7535

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 632
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_39
    nop

    .line 633
    const/16 p1, 0x7531

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 634
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    goto :goto_3

    :pswitch_3a
    nop

    .line 635
    const/16 p1, 0x7534

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 636
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    .line 924
    :goto_3
    iget p1, p0, Lcom/dspread/xpos/Service;->I:I

    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->b(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/dspread/xpos/Service;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 10

    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/Service;->b:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    .line 971
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 972
    const-string v3, "FFFFFFFF"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 973
    iput-boolean v1, p0, Lcom/dspread/xpos/Service;->b:Z

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===========tradeAmount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return v1

    .line 977
    :cond_0
    const-string v3, "00000000"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    iput-object v2, p0, Lcom/dspread/xpos/Service;->D:Ljava/lang/String;

    return v1

    .line 982
    :cond_1
    iget-object v2, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    const-string v3, "0704"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "amount out of limit"

    const-wide/16 v4, 0x0

    const/16 v6, 0xa

    const-string v7, "amount format error"

    const-string v8, "0"

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    const-string v9, "704"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 1003
    :cond_2
    iget-object v2, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    const-string v9, "0360"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    const-string v9, "360"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1027
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_5

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1033
    :cond_4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    .line 1035
    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1036
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    goto/16 :goto_8

    .line 1037
    :cond_5
    :goto_0
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    return v0

    .line 1038
    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "360:000"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v6, :cond_9

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 1046
    :cond_7
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long p1, v8, v4

    if-ltz p1, :cond_8

    long-to-double v4, v8

    const-wide v8, 0x42474876e8000000L    # 2.0E11

    cmpg-double p1, v4, v8

    if-gtz p1, :cond_8

    goto :goto_4

    .line 1051
    :cond_8
    sget-object p1, Lcom/dspread/xpos/Service$Error;->AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    .line 1052
    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 1055
    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1056
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    goto/16 :goto_8

    .line 1057
    :cond_9
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "360:111"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1058
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    return v0

    .line 1059
    :cond_a
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v6, :cond_d

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    .line 1065
    :cond_b
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long p1, v8, v4

    if-ltz p1, :cond_c

    long-to-double v4, v8

    const-wide v8, 0x41ddcd6500000000L    # 2.0E9

    cmpg-double p1, v4, v8

    if-gtz p1, :cond_c

    .line 1046
    :goto_4
    move v0, v1

    goto :goto_8

    .line 1070
    :cond_c
    sget-object p1, Lcom/dspread/xpos/Service$Error;->AMOUNT_OUT_OF_LIMIT:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    .line 1071
    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1052
    :goto_5
    goto :goto_8

    .line 1071
    :catch_2
    move-exception p1

    .line 1074
    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1075
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    goto :goto_8

    .line 1076
    :cond_d
    :goto_6
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    return v0

    .line 1132
    :cond_e
    iget-object p1, p0, Lcom/dspread/xpos/Service;->i:Ljava/lang/String;

    const-string v2, "05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1134
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    goto :goto_8

    :cond_f
    :goto_7
    move v0, v1

    :goto_8
    return v0
.end method

.method private b()V
    .locals 9

    .line 32
    sget-boolean v0, Lcom/dspread/xpos/Service;->L:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/dspread/xpos/Service;->d:Z

    .line 34
    :goto_0
    iget-boolean v0, p0, Lcom/dspread/xpos/Service;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1e

    .line 36
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "please wait..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/dspread/xpos/Service;->t:Lcom/dspread/xpos/DoEmvApp;

    iget-object v3, p0, Lcom/dspread/xpos/Service;->D:Ljava/lang/String;

    iget-object v4, p0, Lcom/dspread/xpos/Service;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/dspread/xpos/Service;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    iget-object v8, p0, Lcom/dspread/xpos/Service;->e:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/dspread/xpos/DoEmvApp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/dspread/xpos/Service;->p()V

    .line 48
    :goto_1
    const-string v0, "doEmvTrade__"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->d(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Service;->e(I)V

    .line 6
    invoke-static {}, Lcom/dspread/xpos/utils/i;->a()Lcom/dspread/xpos/utils/i;

    move-result-object v0

    new-instance v1, Lcom/dspread/xpos/Service$a;

    invoke-direct {v1, p0, p1}, Lcom/dspread/xpos/Service$a;-><init>(Lcom/dspread/xpos/Service;I)V

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/utils/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "amount format error"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 8
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_2
    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 31
    sget-object p1, Lcom/dspread/xpos/Service$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    :goto_1
    return v1
.end method

.method private c(I)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 8
    :sswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/dspread/xpos/Service;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    const-string p1, "MSG_DO_TRADE_BY_GOOD"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/dspread/xpos/Service$Error;->UNKNOWN:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    goto :goto_2

    .line 49
    :sswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_2

    .line 50
    :sswitch_2
    :try_start_1
    sget-object p1, Lcom/dspread/xpos/Service$Error;->DEVICE_BUSY:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/dspread/xpos/Service;->d()Z

    .line 52
    const-string p1, "MSG_EXIT_TRADE"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 54
    const-string p1, "MSG_EXIT_TRADE222"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    .line 55
    sget-object p1, Lcom/dspread/xpos/Service$Error;->UNKNOWN:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    .line 58
    :goto_0
    sget-object p1, Lcom/dspread/xpos/Service$ResetState;->RESETED:Lcom/dspread/xpos/Service$ResetState;

    iput-object p1, p0, Lcom/dspread/xpos/Service;->J:Lcom/dspread/xpos/Service$ResetState;

    goto :goto_2

    .line 59
    :sswitch_3
    :try_start_2
    invoke-direct {p0}, Lcom/dspread/xpos/Service;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 61
    const-string p1, "MSG_DO_EMV_APP"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    .line 62
    sget-object p1, Lcom/dspread/xpos/Service$Error;->UNKNOWN:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    goto :goto_2

    .line 63
    :sswitch_4
    :try_start_3
    invoke-direct {p0}, Lcom/dspread/xpos/Service;->c()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 8
    :goto_1
    goto :goto_2

    .line 63
    :catch_3
    move-exception p1

    .line 66
    const-string p1, "MSG_DO_TRADE"

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    .line 67
    sget-object p1, Lcom/dspread/xpos/Service$Error;->UNKNOWN:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7531 -> :sswitch_4
        0x7533 -> :sswitch_3
        0x7544 -> :sswitch_2
        0x754d -> :sswitch_1
        0x756b -> :sswitch_0
    .end sparse-switch
.end method

.method private c()Z
    .locals 14

    .line 1
    sget-boolean v0, Lcom/dspread/xpos/Service;->L:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/dspread/xpos/Service;->k()Z

    move-result v0

    return v0

    .line 5
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/Service;->w:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/dspread/xpos/Service;->l:Lcom/dspread/xpos/t;

    iget-object v2, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    iget-object v3, p0, Lcom/dspread/xpos/Service;->D:Ljava/lang/String;

    iget v4, p0, Lcom/dspread/xpos/Service;->x:I

    iget-object v6, p0, Lcom/dspread/xpos/Service;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/dspread/xpos/Service;->p:Ljava/lang/String;

    iget-object v8, p0, Lcom/dspread/xpos/Service;->h:Ljava/lang/String;

    iget v9, p0, Lcom/dspread/xpos/Service;->v:I

    iget-object v10, p0, Lcom/dspread/xpos/Service;->k:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    iget-object v11, p0, Lcom/dspread/xpos/Service;->i:Ljava/lang/String;

    iget-object v12, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    iget-object v13, p0, Lcom/dspread/xpos/Service;->g:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual/range {v1 .. v13}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0
.end method

.method private d(I)V
    .locals 0

    return-void
.end method

.method private d()Z
    .locals 3

    .line 4
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "exit disConnect() 1"

    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    const-wide/16 v1, 0x32

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Vpos;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    move v1, v0

    .line 20
    :cond_1
    :goto_2
    const-string v0, "exit disConnect() 2"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    return v1
.end method

.method private e(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/dspread/xpos/Service;->I:I

    return-void
.end method

.method private k()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Service;->n:Lcom/dspread/xpos/z0;

    invoke-virtual {v0}, Lcom/dspread/xpos/z0;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/Service;->D:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dspread/xpos/Service;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v2, p0, Lcom/dspread/xpos/Service;->i:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/Service;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dspread/xpos/Service;->b(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_3

    .line 14
    iget-object v2, p0, Lcom/dspread/xpos/Service;->l:Lcom/dspread/xpos/t;

    iget-object v3, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    iget-object v4, p0, Lcom/dspread/xpos/Service;->D:Ljava/lang/String;

    iget v5, p0, Lcom/dspread/xpos/Service;->x:I

    iget-object v6, p0, Lcom/dspread/xpos/Service;->w:Ljava/lang/String;

    iget-object v7, p0, Lcom/dspread/xpos/Service;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/dspread/xpos/Service;->p:Ljava/lang/String;

    iget-object v9, p0, Lcom/dspread/xpos/Service;->h:Ljava/lang/String;

    iget v10, p0, Lcom/dspread/xpos/Service;->v:I

    iget-object v11, p0, Lcom/dspread/xpos/Service;->k:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    iget-object v12, p0, Lcom/dspread/xpos/Service;->i:Ljava/lang/String;

    iget-object v13, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    iget-object v14, p0, Lcom/dspread/xpos/Service;->g:Ljava/lang/String;

    invoke-virtual/range {v2 .. v14}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v0

    .line 26
    :cond_2
    const-string v0, "isKeyboardTrade"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method private m()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Service;->C:Lcom/dspread/xpos/Service$DisconnectState;

    sget-object v1, Lcom/dspread/xpos/Service$DisconnectState;->DISCONNECTING:Lcom/dspread/xpos/Service$DisconnectState;

    const/16 v2, 0xc8

    const-wide/16 v3, 0xa

    const/4 v5, 0x0

    if-ne v0, v1, :cond_3

    move v0, v5

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/dspread/xpos/Service;->C:Lcom/dspread/xpos/Service$DisconnectState;

    sget-object v6, Lcom/dspread/xpos/Service$DisconnectState;->DISCONNECTED:Lcom/dspread/xpos/Service$DisconnectState;

    if-ne v1, v6, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    sget-object v6, Lcom/dspread/xpos/Service$DisconnectState;->UNKNOW:Lcom/dspread/xpos/Service$DisconnectState;

    if-ne v1, v6, :cond_1

    return v5

    .line 9
    :cond_1
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 19
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Service;->o()Z

    move-result v0

    const-string v1, "isPosExistFlag"

    if-eqz v0, :cond_4

    .line 21
    sget-object v0, Lcom/dspread/xpos/Service$ResetState;->RESETING:Lcom/dspread/xpos/Service$ResetState;

    iput-object v0, p0, Lcom/dspread/xpos/Service;->J:Lcom/dspread/xpos/Service$ResetState;

    .line 22
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    const/16 v0, 0x7544

    .line 28
    invoke-direct {p0, v0}, Lcom/dspread/xpos/Service;->b(I)V

    return v5

    :cond_4
    move v0, v5

    .line 35
    :goto_3
    invoke-virtual {p0}, Lcom/dspread/xpos/Service;->o()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 37
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v6

    :goto_4
    add-int/lit8 v6, v0, 0x1

    if-ne v0, v2, :cond_5

    return v5

    .line 45
    :cond_5
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    move v0, v6

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private p()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Service;->n:Lcom/dspread/xpos/z0;

    invoke-virtual {v0}, Lcom/dspread/xpos/z0;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    const-string/jumbo v0, "set amount "

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/Service;->D:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dspread/xpos/Service;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/dspread/xpos/Service;->i:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/Service;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dspread/xpos/Service;->b(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/dspread/xpos/Service;->d:Z

    .line 14
    :goto_0
    iget-boolean v0, p0, Lcom/dspread/xpos/Service;->d:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1e

    .line 16
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/dspread/xpos/Service;->t:Lcom/dspread/xpos/DoEmvApp;

    iget-object v2, p0, Lcom/dspread/xpos/Service;->D:Ljava/lang/String;

    iget-object v3, p0, Lcom/dspread/xpos/Service;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/dspread/xpos/Service;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    iget-object v7, p0, Lcom/dspread/xpos/Service;->e:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/dspread/xpos/DoEmvApp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Vpos;)Z

    goto :goto_1

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Vpos;)Z

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;
    .locals 2

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/dspread/xpos/Service;->a:Lcom/dspread/xpos/POSUart;

    invoke-virtual {v0}, Lcom/dspread/xpos/POSUart;->d()V

    return-void
.end method

.method public a(Lcom/dspread/xpos/QPOSService$DoTradeMode;)V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/dspread/xpos/Service;->A:Z

    if-eqz v0, :cond_0

    .line 196
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTradeMode;->IS_DEBIT_OR_CREDIT:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    iput-object p1, p0, Lcom/dspread/xpos/Service;->B:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    goto :goto_0

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/dspread/xpos/Service;->B:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/QPOSService$DoTradeResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1135
    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->BAD_SWIPE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    if-eq p1, v0, :cond_0

    .line 1136
    const-string v0, "onDoTradeResult"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Service;->c(Ljava/lang/String;)V

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/Service;->y:Lcom/dspread/xpos/Service$c;

    if-eqz v0, :cond_1

    .line 1139
    invoke-interface {v0, p1, p2}, Lcom/dspread/xpos/Service$c;->onDoTradeResult(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/dspread/xpos/Service$c;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/dspread/xpos/Service;->y:Lcom/dspread/xpos/Service$c;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dspread/xpos/Service$TransactionType;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/dspread/xpos/Service;->D:Ljava/lang/String;

    .line 926
    iput-object p2, p0, Lcom/dspread/xpos/Service;->e:Ljava/lang/String;

    .line 927
    iput-object p3, p0, Lcom/dspread/xpos/Service;->m:Ljava/lang/String;

    .line 929
    const/4 p1, 0x1

    new-array p2, p1, [B

    .line 930
    invoke-direct {p0, p4}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$TransactionType;)B

    move-result p3

    const/4 p4, 0x0

    aput-byte p3, p2, p4

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/Service;->i:Ljava/lang/String;

    .line 931
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->c(Z)V

    .line 933
    iget-object p1, p0, Lcom/dspread/xpos/Service;->n:Lcom/dspread/xpos/z0;

    invoke-virtual {p1}, Lcom/dspread/xpos/z0;->b()V

    return-void
.end method

.method public a(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/dspread/xpos/Service;->r:Ljava/util/Hashtable;

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1140
    const-string p1, "01"

    iput-object p1, p0, Lcom/dspread/xpos/Service;->G:Ljava/lang/String;

    goto :goto_0

    .line 1142
    :cond_0
    const-string p1, "00"

    iput-object p1, p0, Lcom/dspread/xpos/Service;->G:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/dspread/xpos/Service;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 187
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v0, 0x6f

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(I)V

    return v1

    :cond_0
    nop

    .line 190
    iput v1, p0, Lcom/dspread/xpos/Service;->v:I

    .line 191
    iput p1, p0, Lcom/dspread/xpos/Service;->x:I

    .line 192
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTradeMode;->COMMON:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/QPOSService$DoTradeMode;)V

    .line 194
    invoke-direct {p0}, Lcom/dspread/xpos/Service;->c()Z

    move-result p1

    return p1
.end method

.method public a(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "=========="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [B

    int-to-byte p1, p1

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v0, v1, [B

    int-to-byte p2, p2

    aput-byte p2, v0, v3

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array p2, v1, [B

    int-to-byte p3, p3

    aput-byte p3, p2, v3

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    add-int/2addr p3, v1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [B

    int-to-byte p3, p3

    aput-byte p3, v2, v3

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "gbk"

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "00"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_0

    .line 17
    :cond_0
    nop

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array p3, v1, [B

    int-to-byte p4, v3

    aput-byte p4, p3, v3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object p4, p2

    .line 21
    :goto_0
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 22
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v0, v1, [B

    int-to-byte p3, p3

    aput-byte p3, v0, v3

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 27
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array p3, v1, [B

    int-to-byte p5, v3

    aput-byte p5, p3, v3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    :goto_1
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x2

    if-nez p3, :cond_2

    .line 31
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p2

    div-int/2addr p2, p4

    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array p3, v1, [B

    int-to-byte p2, p2

    aput-byte p2, p3, v3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 36
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array p3, v1, [B

    int-to-byte p5, v3

    aput-byte p5, p3, v3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    :goto_2
    iput-object p1, p0, Lcom/dspread/xpos/Service;->c:Ljava/lang/String;

    .line 39
    new-instance p2, Lcom/dspread/xpos/i;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 p3, 0x10

    const/16 p5, 0x71

    invoke-direct {p2, p3, p5, p7, p1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 41
    iget-object p1, p0, Lcom/dspread/xpos/Service;->a:Lcom/dspread/xpos/POSUart;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 42
    iget-object p1, p0, Lcom/dspread/xpos/Service;->a:Lcom/dspread/xpos/POSUart;

    invoke-virtual {p1, p7}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    .line 44
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "f:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p2, :cond_3

    return v3

    .line 49
    :cond_3
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "1111"

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_4

    .line 52
    invoke-virtual {p1, p4, p4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    const/4 p2, 0x4

    .line 54
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/j;->a(I)B

    move-result p2

    .line 55
    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p4

    invoke-static {p4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p4

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    .line 58
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/j;->a(I)B

    move-result p2

    .line 59
    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/dspread/xpos/Service;->r:Ljava/util/Hashtable;

    const-string/jumbo p3, "pinKsn"

    invoke-virtual {p2, p3, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p2, p0, Lcom/dspread/xpos/Service;->r:Ljava/util/Hashtable;

    const-string/jumbo p3, "pinBlock"

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/dspread/xpos/Service;->r:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Ljava/util/Hashtable;)V

    return v1

    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    return v3
.end method

.method protected a(Lcom/dspread/xpos/Vpos;)Z
    .locals 4

    .line 1144
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 1146
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1147
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 1148
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/dspread/xpos/j;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x24

    const/4 v3, 0x1

    if-eq v1, v2, :cond_20

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x88

    if-ne v1, v2, :cond_1

    goto/16 :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_4

    .line 83
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const-string v2, "INPUT_PIN_ING"

    if-lez v1, :cond_3

    .line 85
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result p1

    if-nez p1, :cond_2

    .line 86
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 88
    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "INPUT_OFFLINE_PIN_ONLY"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :cond_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 94
    :cond_4
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_5

    .line 96
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "MAG_TO_ICC_TRADE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_2

    .line 97
    :cond_5
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_6

    goto/16 :goto_0

    .line 99
    :cond_6
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_7

    goto/16 :goto_0

    .line 101
    :cond_7
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x89

    if-ne v1, v2, :cond_8

    goto/16 :goto_0

    .line 103
    :cond_8
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_9

    .line 105
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "MSR_DATA_READY"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_2

    :cond_9
    nop

    .line 109
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_a

    .line 111
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DEVICE_ERROR"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 114
    :cond_a
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_b

    .line 115
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "CMD_TIMEOUT"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 116
    :cond_b
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const-string v2, "CARD_REMOVED"

    const/16 v4, 0x51

    if-ne v1, v4, :cond_c

    .line 117
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 119
    :cond_c
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v5, 0x28

    if-ne v1, v5, :cond_d

    .line 121
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TRANSACTION_TERMINATED"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    :cond_d
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    if-ne v1, v4, :cond_e

    .line 127
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 130
    :cond_e
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_f

    goto/16 :goto_2

    .line 132
    :cond_f
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_10

    goto/16 :goto_2

    .line 136
    :cond_10
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_11

    goto/16 :goto_2

    .line 140
    :cond_11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x48

    if-ne v1, v2, :cond_12

    goto/16 :goto_2

    .line 142
    :cond_12
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x35

    if-ne v1, v2, :cond_13

    goto/16 :goto_2

    .line 145
    :cond_13
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_2

    .line 147
    :cond_14
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_15

    goto/16 :goto_0

    .line 150
    :cond_15
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_16

    goto :goto_2

    .line 154
    :cond_16
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_17

    goto :goto_2

    .line 156
    :cond_17
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_18

    goto :goto_2

    .line 159
    :cond_18
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_19

    goto :goto_2

    .line 162
    :cond_19
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1a

    goto :goto_2

    .line 164
    :cond_1a
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1b

    goto :goto_2

    .line 168
    :cond_1b
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_1c

    goto :goto_2

    .line 172
    :cond_1c
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x46

    if-ne v1, v2, :cond_1d

    goto :goto_2

    .line 176
    :cond_1d
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x47

    if-ne v1, v2, :cond_1e

    goto :goto_2

    .line 181
    :cond_1e
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1f

    goto :goto_2

    .line 184
    :cond_1f
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    goto :goto_2

    :cond_20
    :goto_0
    nop

    :goto_1
    move v0, v3

    :goto_2
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/dspread/xpos/i;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 p3, 0x10

    const/16 p4, 0xf2

    const/16 p5, 0x1e

    invoke-direct {p2, p3, p4, p5, p1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 72
    iget-object p1, p0, Lcom/dspread/xpos/Service;->a:Lcom/dspread/xpos/POSUart;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 73
    iget-object p1, p0, Lcom/dspread/xpos/Service;->a:Lcom/dspread/xpos/POSUart;

    invoke-virtual {p1, p5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method

.method protected b(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x22

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/dspread/xpos/Service;->H:Z

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 68
    sget-object p1, Lcom/dspread/xpos/Service$DisconnectState;->DISCONNECTING:Lcom/dspread/xpos/Service$DisconnectState;

    iput-object p1, p0, Lcom/dspread/xpos/Service;->C:Lcom/dspread/xpos/Service$DisconnectState;

    .line 70
    :try_start_0
    iget-object p1, p0, Lcom/dspread/xpos/Service;->s:Lcom/dspread/xpos/Vpos;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/dspread/xpos/Service;->K:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/dspread/xpos/Vpos;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/dspread/xpos/Service;->b:Z

    .line 79
    const-string p1, ""

    iput-object p1, p0, Lcom/dspread/xpos/Service;->p:Ljava/lang/String;

    .line 80
    sget-object p1, Lcom/dspread/xpos/Service$DisconnectState;->DISCONNECTED:Lcom/dspread/xpos/Service$DisconnectState;

    iput-object p1, p0, Lcom/dspread/xpos/Service;->C:Lcom/dspread/xpos/Service$DisconnectState;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/dspread/xpos/Service;->z:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/Service;->b:Z

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Service;->a:Lcom/dspread/xpos/POSUart;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/POSUart;->d(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/Service;->a:Lcom/dspread/xpos/POSUart;

    invoke-virtual {p1}, Lcom/dspread/xpos/POSUart;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/Service;->G:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/Service;->E:Ljava/lang/String;

    return-void
.end method

.method protected e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/Service;->u:Z

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Service;->F:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Lcom/dspread/xpos/QPOSService$DoTradeMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Service;->B:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Service;->E:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Service;->H:Z

    return v0
.end method

.method public j()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Service;->r:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Service;->z:Z

    return v0
.end method

.method protected n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Service;->b:Z

    return v0
.end method

.method protected o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/Service;->u:Z

    return v0
.end method

.method protected q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Service;->y:Lcom/dspread/xpos/Service$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/dspread/xpos/Service$c;->onRequestWaitingUser()V

    :cond_0
    return-void
.end method
