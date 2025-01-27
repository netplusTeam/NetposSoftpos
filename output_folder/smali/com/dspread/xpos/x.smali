.class public Lcom/dspread/xpos/x;
.super Ljava/lang/Object;
.source "GetPosInfo.java"


# static fields
.field protected static volatile n:Z

.field protected static o:Z

.field protected static volatile p:Lcom/dspread/xpos/j;


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;

.field private b:I

.field private final c:Ljava/lang/String;

.field d:[B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/x;->b:I

    .line 3
    const-string v0, "0101000000"

    iput-object v0, p0, Lcom/dspread/xpos/x;->c:Ljava/lang/String;

    .line 5
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dspread/xpos/x;->d:[B

    .line 978
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/x;->e:Ljava/lang/String;

    .line 979
    iput-object v0, p0, Lcom/dspread/xpos/x;->f:Ljava/lang/String;

    .line 980
    iput-object v0, p0, Lcom/dspread/xpos/x;->g:Ljava/lang/String;

    .line 981
    iput-object v0, p0, Lcom/dspread/xpos/x;->h:Ljava/lang/String;

    .line 982
    iput-object v0, p0, Lcom/dspread/xpos/x;->i:Ljava/lang/String;

    .line 983
    iput-object v0, p0, Lcom/dspread/xpos/x;->j:Ljava/lang/String;

    .line 1784
    iput-object v0, p0, Lcom/dspread/xpos/x;->k:Ljava/lang/String;

    .line 1785
    iput-object v0, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    .line 2023
    iput-object v0, p0, Lcom/dspread/xpos/x;->m:Ljava/lang/String;

    .line 2024
    iput-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x23t
        0x45t
        0x67t
        -0x77t
        -0x55t
        -0x33t
        -0x11t
    .end array-data
.end method

.method private A(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 4

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 3
    invoke-static {p2}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p2

    .line 4
    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 5
    aget-byte v1, p2, v3

    aput-byte v1, v0, v3

    .line 6
    aget-byte p2, p2, v2

    aput-byte p2, v0, v2

    goto :goto_0

    :cond_0
    nop

    .line 8
    aput-byte v3, v0, v3

    .line 9
    aget-byte p2, p2, v3

    aput-byte p2, v0, v2

    .line 12
    :goto_0
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v1, 0x20

    const/16 v2, 0xd0

    const/4 v3, 0x5

    invoke-direct {p2, v1, v2, v3, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 14
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 15
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 7

    .line 371
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 372
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 373
    invoke-static {p2}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p2

    .line 374
    array-length v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gt v2, v0, :cond_0

    .line 375
    array-length v0, p2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v1, p2

    goto :goto_0

    .line 389
    :pswitch_1
    aput-byte v6, v1, v6

    .line 390
    aget-byte v0, p2, v6

    aput-byte v0, v1, v5

    .line 391
    aget-byte v0, p2, v5

    aput-byte v0, v1, v4

    .line 392
    aget-byte p2, p2, v4

    aput-byte p2, v1, v3

    goto :goto_0

    :pswitch_2
    nop

    .line 393
    aput-byte v6, v1, v6

    .line 394
    aput-byte v6, v1, v5

    .line 395
    aget-byte v0, p2, v6

    aput-byte v0, v1, v4

    .line 396
    aget-byte p2, p2, v5

    aput-byte p2, v1, v3

    goto :goto_0

    :pswitch_3
    nop

    .line 397
    aput-byte v6, v1, v6

    .line 398
    aput-byte v6, v1, v5

    .line 399
    aput-byte v6, v1, v4

    .line 400
    aget-byte p2, p2, v6

    aput-byte p2, v1, v3

    goto :goto_0

    :cond_0
    nop

    .line 419
    aget-byte v0, p2, v6

    aput-byte v0, v1, v6

    .line 420
    aget-byte v0, p2, v5

    aput-byte v0, v1, v5

    .line 421
    aget-byte v0, p2, v4

    aput-byte v0, v1, v4

    .line 422
    aget-byte p2, p2, v3

    aput-byte p2, v1, v3

    .line 424
    :goto_0
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x22

    const/16 v2, 0x90

    const/16 v3, 0xa

    invoke-direct {p2, v0, v2, v3, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 426
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/4 p2, 0x5

    .line 427
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/dspread/xpos/Vpos;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 7

    if-eqz p8, :cond_0

    .line 96
    const-string v0, ""

    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 97
    invoke-virtual {p8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-static/range {v1 .. v6}, Lcom/dspread/xpos/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 99
    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p4

    array-length p4, p4

    invoke-static {p4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p4

    invoke-static {p4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p4

    .line 100
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "01"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 101
    new-instance p4, Lcom/dspread/xpos/i;

    const/16 p5, 0x42

    const/16 p6, 0x20

    invoke-direct {p4, p5, p6, p2, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 102
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 103
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$DoTransactionType;I)Lcom/dspread/xpos/j;
    .locals 4

    .line 225
    nop

    .line 226
    sget-object v0, Lcom/dspread/xpos/x$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x10

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 254
    :pswitch_0
    nop

    .line 255
    sget-object p2, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearLast:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const-string v2, "04"

    goto/16 :goto_2

    :pswitch_1
    if-ltz p3, :cond_0

    if-ge p3, v1, :cond_0

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "030000000"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_0

    :cond_0
    if-lt p3, v1, :cond_1

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "03000000"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    .line 260
    :cond_1
    :goto_0
    iput p3, p0, Lcom/dspread/xpos/x;->b:I

    .line 261
    sget-object p2, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    goto :goto_2

    :pswitch_2
    if-ltz p3, :cond_2

    if-ge p3, v1, :cond_2

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "020000000"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-lt p3, v1, :cond_3

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "02000000"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    :cond_3
    :goto_1
    iput p3, p0, Lcom/dspread/xpos/x;->b:I

    .line 267
    sget-object p2, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    .line 268
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "p: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 269
    :pswitch_3
    const-string v2, "01"

    goto :goto_2

    .line 270
    :pswitch_4
    nop

    .line 271
    sget-object p2, Lcom/dspread/xpos/QPOSService$DoTransactionType;->Clear:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const-string v2, "00"

    .line 300
    :goto_2
    new-instance p3, Lcom/dspread/xpos/i;

    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x17

    const/16 v2, 0xb0

    const/16 v3, 0xa

    invoke-direct {p3, v1, v2, v3, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 301
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/16 p3, 0x1e

    .line 302
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 303
    iget-object p3, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_4
    const-string p3, "DoTransactionType end"

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 309
    sget-object p3, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetAll:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    if-ne p2, p3, :cond_5

    .line 310
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/x;->k:Ljava/lang/String;

    .line 311
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 312
    iget-object p3, p0, Lcom/dspread/xpos/x;->k:Ljava/lang/String;

    add-int/lit8 v0, p2, -0x4

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/x;->k:Ljava/lang/String;

    goto :goto_3

    .line 313
    :cond_5
    sget-object p3, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    if-ne p2, p3, :cond_6

    .line 314
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const/16 p3, 0x14

    const/16 v0, 0x16

    .line 315
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dataOne: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$DoTransactionType;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    .line 317
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_0
    nop

    .line 322
    sget-object v1, Lcom/dspread/xpos/x$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const-string p3, ""

    goto :goto_0

    .line 327
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "06"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 328
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "05"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 334
    :goto_0
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    const/16 v1, 0x17

    const/16 v2, 0xb0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 335
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/16 p3, 0x1e

    .line 336
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 337
    iget-object p3, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 341
    :cond_3
    const-string p3, "DoTransactionType end"

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 342
    sget-object p3, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetOneByBatchID:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    if-ne p2, p3, :cond_4

    .line 343
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const/16 p3, 0x14

    const/16 v0, 0x16

    .line 344
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    .line 345
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dataOne: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    const-string v1, ""

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const/4 v2, 0x0

    invoke-virtual {p5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_0
    const/16 p0, 0x8

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    invoke-virtual {p5, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_1
    const/16 p1, 0xc

    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p5, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_2
    const/16 p0, 0x10

    if-eqz p3, :cond_3

    .line 116
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 117
    invoke-virtual {p5, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_3
    if-eqz p4, :cond_4

    .line 120
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x14

    .line 121
    invoke-virtual {p5, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0, p4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_4
    return-object p5
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2

    .line 137
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 138
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 140
    new-instance p2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 145
    :try_start_0
    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static a([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 122
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "DES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 123
    new-instance p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const-string v1, "DES/ECB/NoPadding"

    invoke-static {v1, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 124
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 125
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 126
    array-length v5, p1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1

    .line 127
    invoke-virtual {p0, v0, p1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object v0
.end method

.method private b(Lcom/dspread/xpos/Vpos;ILcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;II)Lcom/dspread/xpos/j;
    .locals 3

    .line 337
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 339
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 340
    const/4 v2, 0x1

    aput-byte v1, v0, v2

    int-to-byte p2, p2

    .line 343
    const/4 v2, 0x2

    aput-byte p2, v0, v2

    .line 345
    sget-object p2, Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;->DUKPT_MKSK_ALLTYPE:Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;

    const/4 v2, 0x3

    if-ne p3, p2, :cond_0

    const/4 p2, -0x1

    .line 346
    aput-byte p2, v0, v2

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    int-to-byte p2, p2

    aput-byte p2, v0, v2

    :goto_0
    int-to-byte p2, p5

    const/4 p3, 0x4

    .line 352
    aput-byte p2, v0, p3

    .line 354
    const/4 p2, 0x5

    new-array p3, p2, [B

    .line 356
    invoke-static {v0, v1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    new-instance p5, Lcom/dspread/xpos/i;

    const/16 v0, 0x23

    const/16 v1, 0x20

    invoke-direct {p5, v0, v1, p4, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 360
    invoke-virtual {p1, p5}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 361
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$BuzzerType;III)Lcom/dspread/xpos/j;
    .locals 4

    .line 140
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 141
    sget-object v1, Lcom/dspread/xpos/QPOSService$BuzzerType;->COMMON:Lcom/dspread/xpos/QPOSService$BuzzerType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    .line 142
    aput-byte v2, v0, v2

    goto :goto_0

    .line 143
    :cond_0
    sget-object v1, Lcom/dspread/xpos/QPOSService$BuzzerType;->PAYMENT_SUCCESS:Lcom/dspread/xpos/QPOSService$BuzzerType;

    if-ne p2, v1, :cond_1

    .line 144
    aput-byte v3, v0, v2

    goto :goto_0

    .line 145
    :cond_1
    sget-object v1, Lcom/dspread/xpos/QPOSService$BuzzerType;->PAYMENT_ERROR:Lcom/dspread/xpos/QPOSService$BuzzerType;

    if-ne p2, v1, :cond_2

    const/4 p2, 0x2

    .line 146
    aput-byte p2, v0, v2

    goto :goto_0

    .line 147
    :cond_2
    sget-object v1, Lcom/dspread/xpos/QPOSService$BuzzerType;->PAIRING_SUCCESS:Lcom/dspread/xpos/QPOSService$BuzzerType;

    if-ne p2, v1, :cond_3

    const/4 p2, 0x3

    .line 148
    aput-byte p2, v0, v2

    goto :goto_0

    .line 147
    :cond_3
    move v3, v2

    .line 150
    :goto_0
    invoke-static {p3}, Lcom/dspread/xpos/Util;->intToByteArray(I)[B

    move-result-object p2

    .line 151
    array-length p3, p2

    invoke-static {p2, v2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    array-length p2, p2

    add-int/2addr v3, p2

    .line 154
    invoke-static {p4}, Lcom/dspread/xpos/Util;->intToByteArray(I)[B

    move-result-object p2

    .line 155
    array-length p3, p2

    invoke-static {p2, v2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    array-length p2, p2

    add-int/2addr v3, p2

    int-to-byte p2, p5

    .line 159
    aput-byte p2, v0, v3

    .line 161
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 p3, 0x17

    const/16 p4, 0x91

    const/16 p5, 0xa

    invoke-direct {p2, p3, p4, p5, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 162
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 163
    invoke-virtual {p1, p5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$LEDType;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$LEDDirection;Lcom/dspread/xpos/QPOSService$LEDStatus;III)Lcom/dspread/xpos/j;
    .locals 5

    .line 97
    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 98
    sget-object v2, Lcom/dspread/xpos/QPOSService$LEDType;->FIXED_COLOR:Lcom/dspread/xpos/QPOSService$LEDType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v2, :cond_0

    .line 99
    aput-byte v3, v1, v3

    move p2, v4

    goto :goto_0

    .line 100
    :cond_0
    sget-object v2, Lcom/dspread/xpos/QPOSService$LEDType;->RGB_COLOR:Lcom/dspread/xpos/QPOSService$LEDType;

    if-ne p2, v2, :cond_1

    .line 101
    aput-byte v4, v1, v3

    move p2, v4

    goto :goto_0

    .line 100
    :cond_1
    move p2, v3

    .line 103
    :goto_0
    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 104
    array-length v2, p3

    invoke-static {p3, v3, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    array-length p3, p3

    add-int/2addr p2, p3

    .line 107
    sget-object p3, Lcom/dspread/xpos/QPOSService$LEDDirection;->ALL:Lcom/dspread/xpos/QPOSService$LEDDirection;

    const/4 v2, 0x2

    if-ne p4, p3, :cond_2

    add-int/lit8 p3, p2, 0x1

    .line 108
    aput-byte v3, v1, p2

    move p2, p3

    goto :goto_1

    .line 109
    :cond_2
    sget-object p3, Lcom/dspread/xpos/QPOSService$LEDDirection;->LEFT:Lcom/dspread/xpos/QPOSService$LEDDirection;

    if-ne p4, p3, :cond_3

    add-int/lit8 p3, p2, 0x1

    .line 110
    aput-byte v4, v1, p2

    move p2, p3

    goto :goto_1

    .line 111
    :cond_3
    sget-object p3, Lcom/dspread/xpos/QPOSService$LEDDirection;->RIGHT:Lcom/dspread/xpos/QPOSService$LEDDirection;

    if-ne p4, p3, :cond_4

    add-int/lit8 p3, p2, 0x1

    .line 112
    aput-byte v2, v1, p2

    move p2, p3

    goto :goto_1

    .line 113
    :cond_4
    sget-object p3, Lcom/dspread/xpos/QPOSService$LEDDirection;->UP:Lcom/dspread/xpos/QPOSService$LEDDirection;

    if-ne p4, p3, :cond_5

    add-int/lit8 p3, p2, 0x1

    const/4 p4, 0x3

    .line 114
    aput-byte p4, v1, p2

    move p2, p3

    goto :goto_1

    .line 115
    :cond_5
    sget-object p3, Lcom/dspread/xpos/QPOSService$LEDDirection;->DOWN:Lcom/dspread/xpos/QPOSService$LEDDirection;

    if-ne p4, p3, :cond_6

    add-int/lit8 p3, p2, 0x1

    const/4 p4, 0x4

    .line 116
    aput-byte p4, v1, p2

    move p2, p3

    .line 119
    :cond_6
    :goto_1
    sget-object p3, Lcom/dspread/xpos/QPOSService$LEDStatus;->OFF:Lcom/dspread/xpos/QPOSService$LEDStatus;

    if-ne p5, p3, :cond_7

    add-int/lit8 p3, p2, 0x1

    .line 120
    aput-byte v3, v1, p2

    move p2, p3

    goto :goto_2

    .line 121
    :cond_7
    sget-object p3, Lcom/dspread/xpos/QPOSService$LEDStatus;->ON:Lcom/dspread/xpos/QPOSService$LEDStatus;

    if-ne p5, p3, :cond_8

    add-int/lit8 p3, p2, 0x1

    .line 122
    aput-byte v4, v1, p2

    move p2, p3

    goto :goto_2

    .line 123
    :cond_8
    sget-object p3, Lcom/dspread/xpos/QPOSService$LEDStatus;->BLINKS:Lcom/dspread/xpos/QPOSService$LEDStatus;

    if-ne p5, p3, :cond_9

    add-int/lit8 p3, p2, 0x1

    .line 124
    aput-byte v2, v1, p2

    move p2, p3

    .line 126
    :cond_9
    :goto_2
    invoke-static {p6}, Lcom/dspread/xpos/Util;->intToByteArray(I)[B

    move-result-object p3

    .line 127
    array-length p4, p3

    invoke-static {p3, v3, v1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    array-length p3, p3

    add-int/2addr p2, p3

    .line 130
    invoke-static {p7}, Lcom/dspread/xpos/Util;->intToByteArray(I)[B

    move-result-object p3

    .line 131
    array-length p4, p3

    invoke-static {p3, v3, v1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    array-length p3, p3

    add-int/2addr p2, p3

    int-to-byte p3, p8

    .line 135
    aput-byte p3, v1, p2

    .line 137
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 p3, 0x20

    const/16 p4, 0xc

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 138
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 139
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Lcom/dspread/xpos/j;
    .locals 3

    .line 288
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 294
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x11

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 295
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 296
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$BLuConfigMode;I)Lcom/dspread/xpos/j;
    .locals 8

    .line 381
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 383
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 384
    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 385
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-byte v4, v0, v3

    .line 386
    const/4 v4, 0x3

    const/16 v5, 0x53

    aput-byte v5, v0, v4

    .line 387
    const/4 v4, 0x4

    const/16 v5, 0x42

    aput-byte v5, v0, v4

    .line 389
    sget-object v4, Lcom/dspread/xpos/QPOSService$BLuConfigMode;->BLU_MAC_ADDRESS:Lcom/dspread/xpos/QPOSService$BLuConfigMode;

    const/4 v5, 0x6

    const/4 v6, 0x5

    if-ne p3, v4, :cond_0

    .line 390
    aput-byte v1, v0, v6

    goto :goto_0

    .line 391
    :cond_0
    sget-object v7, Lcom/dspread/xpos/QPOSService$BLuConfigMode;->BLU_NAME:Lcom/dspread/xpos/QPOSService$BLuConfigMode;

    if-ne p3, v7, :cond_1

    .line 392
    aput-byte v2, v0, v6

    goto :goto_0

    .line 393
    :cond_1
    sget-object v2, Lcom/dspread/xpos/QPOSService$BLuConfigMode;->BLU_PIN_CODE:Lcom/dspread/xpos/QPOSService$BLuConfigMode;

    if-ne p3, v2, :cond_2

    .line 394
    aput-byte v3, v0, v6

    goto :goto_0

    .line 393
    :cond_2
    move v5, v6

    .line 394
    :goto_0
    if-ne p3, v4, :cond_3

    .line 401
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 402
    array-length p3, p2

    add-int/lit8 v2, v5, 0x1

    int-to-byte v3, p3

    .line 403
    aput-byte v3, v0, v5

    .line 404
    invoke-static {p2, v1, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p3

    goto :goto_3

    :cond_3
    add-int/lit8 p3, v5, 0x1

    .line 407
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    move v2, p3

    move p3, v1

    .line 408
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p3, v3, :cond_6

    .line 409
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_5

    if-gez v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    .line 413
    aput-byte v3, v0, v2

    add-int/lit8 p3, p3, 0x1

    move v2, v4

    goto :goto_1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1

    :cond_6
    nop

    .line 416
    :goto_3
    new-array p2, v2, [B

    .line 418
    invoke-static {v0, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0x21

    const/16 v1, 0x50

    invoke-direct {p3, v0, v1, p4, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 422
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/16 p2, 0xa

    .line 423
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/dspread/xpos/Vpos;II)Lcom/dspread/xpos/j;
    .locals 3

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p3, p3

    .line 120
    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 121
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v1, 0x51

    const/16 v2, 0x50

    invoke-direct {p3, v1, v2, p2, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 122
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 123
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/dspread/xpos/Vpos;ILjava/lang/String;)Lcom/dspread/xpos/j;
    .locals 3

    .line 111
    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x70

    const/16 v2, 0x17

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 112
    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 113
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-direct {v0, v2, v1, p2}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 117
    :goto_0
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 118
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/dspread/xpos/j;
    .locals 3

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x100

    if-lt v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-lt v0, v2, :cond_2

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_2

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "++++++++=data:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 137
    new-instance p3, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 p4, 0x11

    const/16 v0, 0x21

    invoke-direct {p3, p4, v0, p5, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 138
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 139
    invoke-virtual {p1, p5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/dspread/xpos/Vpos;II)Lcom/dspread/xpos/j;
    .locals 2

    .line 461
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p3, p3

    .line 462
    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 463
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v1, 0x51

    invoke-direct {p3, v1, v1, p2, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 464
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 465
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    .line 466
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x11

    const/16 v2, 0x41

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 467
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 468
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;
    .locals 4

    .line 33
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x11

    const/16 v2, 0x40

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 34
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 35
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;
    .locals 4

    .line 12
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x11

    const/16 v2, 0x30

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 14
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private i(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 3

    .line 9
    const-string v0, "doRealTimeSelfDestructStatusCommand"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x52

    const/16 v2, 0x72

    invoke-direct {v0, v1, v2, p2}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 14
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private j(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 3

    .line 23
    const-string v0, "doSelfDestructRecordsCommand"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x52

    const/16 v2, 0x70

    invoke-direct {v0, v1, v2, p2}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 28
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private l(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    .line 23
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x20

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 24
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 25
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private o(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 7

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 15
    invoke-static {p2}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p2

    .line 16
    array-length v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gt v2, v0, :cond_0

    .line 17
    array-length v0, p2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v1, p2

    goto :goto_0

    .line 31
    :pswitch_1
    aput-byte v6, v1, v6

    .line 32
    aget-byte v0, p2, v6

    aput-byte v0, v1, v5

    .line 33
    aget-byte v0, p2, v5

    aput-byte v0, v1, v4

    .line 34
    aget-byte p2, p2, v4

    aput-byte p2, v1, v3

    goto :goto_0

    :pswitch_2
    nop

    .line 35
    aput-byte v6, v1, v6

    .line 36
    aput-byte v6, v1, v5

    .line 37
    aget-byte v0, p2, v6

    aput-byte v0, v1, v4

    .line 38
    aget-byte p2, p2, v5

    aput-byte p2, v1, v3

    goto :goto_0

    :pswitch_3
    nop

    .line 39
    aput-byte v6, v1, v6

    .line 40
    aput-byte v6, v1, v5

    .line 41
    aput-byte v6, v1, v4

    .line 42
    aget-byte p2, p2, v6

    aput-byte p2, v1, v3

    goto :goto_0

    :cond_0
    nop

    .line 61
    aget-byte v0, p2, v6

    aput-byte v0, v1, v6

    .line 62
    aget-byte v0, p2, v5

    aput-byte v0, v1, v5

    .line 63
    aget-byte v0, p2, v4

    aput-byte v0, v1, v4

    .line 64
    aget-byte p2, p2, v3

    aput-byte p2, v1, v3

    .line 66
    :goto_0
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x22

    const/16 v2, 0x70

    const/4 v3, 0x5

    invoke-direct {p2, v0, v2, v3, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 68
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 69
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x33

    const/16 v2, 0x20

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 10
    const-string p2, "2003"

    invoke-virtual {p0, p1, p2}, Lcom/dspread/xpos/x;->c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->j(Z)V

    :goto_0
    return-void
.end method

.method private p(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    .line 4
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x30

    const/16 v2, 0x60

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 6
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private q(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    .line 7
    :cond_0
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 8
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x30

    const/16 v2, 0x60

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 10
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private r(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 4

    .line 1
    const-string v0, "02"

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    new-instance v1, Lcom/dspread/xpos/i;

    const/16 v2, 0x42

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private s(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private t(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x17

    const/16 v2, 0x70

    invoke-direct {v0, v1, v2, p2}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private v(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 4

    const/16 v0, 0xa

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00C80"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00C8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    :goto_0
    new-instance v1, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v2, 0x17

    const/16 v3, 0x90

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private w(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 5

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    new-instance v1, Lcom/dspread/xpos/i;

    const/16 v2, 0xa

    add-int/2addr p2, v2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v3, 0x23

    const/16 v4, 0x10

    invoke-direct {v1, v3, v4, p2, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 7
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private x(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 5

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    rsub-int/lit8 v3, v1, 0x8

    if-ge v2, v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/dspread/xpos/i;

    const/16 v2, 0xa

    add-int/2addr p2, v2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v3, 0x17

    const/16 v4, 0xc0

    invoke-direct {v1, v3, v4, p2, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 7
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 8
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private y(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 4

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 2
    invoke-static {p2}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p2

    .line 3
    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 4
    aget-byte v1, p2, v3

    aput-byte v1, v0, v3

    .line 5
    aget-byte p2, p2, v2

    aput-byte p2, v0, v2

    goto :goto_0

    :cond_0
    nop

    .line 7
    aput-byte v3, v0, v3

    .line 8
    aget-byte p2, p2, v3

    aput-byte p2, v0, v2

    .line 11
    :goto_0
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v1, 0x20

    const/16 v2, 0xd2

    const/4 v3, 0x5

    invoke-direct {p2, v1, v2, v3, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 13
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 14
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected B(Lcom/dspread/xpos/Vpos;I)Ljava/util/Hashtable;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "I)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/dspread/xpos/x;->s(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 3
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pos id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    .line 9
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 10
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    .line 13
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 14
    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v5, v4

    .line 19
    nop

    .line 20
    add-int/lit8 v4, v5, 0x1

    .line 22
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 23
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    .line 26
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 27
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v4

    const-string v4, ""

    if-ge v5, v3, :cond_1

    add-int/lit8 v10, v5, 0x1

    .line 31
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 32
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v1, v10, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v10, v5

    add-int/lit8 v5, v10, 0x1

    .line 35
    invoke-virtual {v1, v10}, Lcom/dspread/xpos/j;->a(I)B

    move-result v10

    .line 36
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v1, v5, v10}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v10

    goto :goto_0

    .line 27
    :cond_1
    move-object v11, v4

    move-object v12, v11

    .line 39
    :goto_0
    if-ge v5, v3, :cond_2

    add-int/lit8 v10, v5, 0x1

    .line 41
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 42
    invoke-virtual {v1, v10, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-static {v13}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v5, v10

    goto :goto_1

    .line 39
    :cond_2
    move-object v13, v4

    .line 47
    :goto_1
    nop

    .line 48
    nop

    .line 49
    nop

    .line 50
    nop

    .line 51
    if-ge v5, v3, :cond_3

    add-int/lit8 v10, v5, 0x1

    .line 55
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 56
    invoke-virtual {v1, v10, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v14

    invoke-static {v14}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v14

    add-int/2addr v10, v5

    add-int/lit8 v5, v10, 0x1

    .line 59
    invoke-virtual {v1, v10}, Lcom/dspread/xpos/j;->a(I)B

    move-result v10

    .line 60
    invoke-virtual {v1, v5, v10}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v15

    add-int/2addr v5, v10

    add-int/lit8 v10, v5, 0x1

    .line 63
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 64
    invoke-virtual {v1, v10, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v16

    add-int/2addr v10, v5

    add-int/lit8 v5, v10, 0x1

    .line 67
    invoke-virtual {v1, v10}, Lcom/dspread/xpos/j;->a(I)B

    move-result v10

    .line 68
    invoke-virtual {v1, v5, v10}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v17

    add-int/2addr v5, v10

    add-int/lit8 v10, v5, 0x1

    .line 71
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 72
    invoke-virtual {v1, v10, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v18

    add-int/2addr v5, v10

    move-object/from16 p1, v4

    move-object/from16 v10, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    goto :goto_2

    .line 51
    :cond_3
    move-object/from16 p1, v4

    move-object/from16 v2, p1

    move-object v10, v2

    move-object v14, v10

    move-object v15, v14

    .line 77
    :goto_2
    if-ge v5, v3, :cond_5

    add-int/lit8 v3, v5, 0x1

    .line 79
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 80
    invoke-virtual {v1, v3, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v3, "00"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    const-string v1, "false"

    goto :goto_3

    .line 85
    :cond_4
    const-string/jumbo v1, "true"

    goto :goto_3

    .line 77
    :cond_5
    move-object/from16 v1, p1

    .line 90
    :goto_3
    const-string/jumbo v3, "posId"

    invoke-virtual {v0, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v3, "psamId"

    invoke-virtual {v0, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v3, "merchantId"

    invoke-virtual {v0, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v3, "vendorCode"

    invoke-virtual {v0, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v3, "deviceNumber"

    invoke-virtual {v0, v3, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v3, "psamNo"

    invoke-virtual {v0, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v3, "csn"

    invoke-virtual {v0, v3, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v3, "tmk0Status"

    invoke-virtual {v0, v3, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v3, "tmk1Status"

    invoke-virtual {v0, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v3, "tmk2Status"

    invoke-virtual {v0, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v3, "tmk3Status"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v2, "tmk4Status"

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "isKeyboard"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected a(ILcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 3

    .line 18
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    const/16 v1, 0x20

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2, p1, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 19
    invoke-virtual {p2, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 20
    invoke-virtual {p2, p1}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 130
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 131
    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 135
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/dspread/xpos/Vpos;)V
    .locals 4

    .line 191
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x23

    const/16 v2, 0x11

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 192
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 193
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 194
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buzzer==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->m(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;II)V
    .locals 3

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/x;->c(Lcom/dspread/xpos/Vpos;II)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->a()B

    move-result p2

    .line 27
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->g()B

    move-result v0

    const/16 v1, 0x51

    const/4 v2, 0x0

    if-ne p2, v1, :cond_b

    const/16 p2, 0x50

    if-eq v0, p2, :cond_1

    goto/16 :goto_3

    .line 35
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "result ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 36
    const-string p2, ""

    .line 37
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-nez v0, :cond_9

    .line 38
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_8

    const/16 v0, 0x9

    if-ne p3, v0, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, v1, p1}, Lcom/dspread/xpos/QPOSService;->d(ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const/16 v0, 0x10

    if-ne p3, v0, :cond_4

    .line 43
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    add-int/lit8 v2, p3, 0x1

    if-ge v0, v2, :cond_3

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->c(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    const/16 v0, 0xa0

    if-eq p3, v0, :cond_6

    const/16 v0, 0xa1

    if-eq p3, v0, :cond_6

    const/16 v0, 0xa2

    if-eq p3, v0, :cond_6

    const/16 v0, 0xa3

    if-ne p3, v0, :cond_5

    goto :goto_1

    .line 58
    :cond_5
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1, p2}, Lcom/dspread/xpos/QPOSService;->d(ZLjava/lang/String;)V

    goto :goto_2

    .line 59
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    invoke-virtual {p1, v2, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    const-string p3, "0E"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 60
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1, p2}, Lcom/dspread/xpos/QPOSService;->d(ZLjava/lang/String;)V

    goto :goto_2

    .line 62
    :cond_7
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, p2}, Lcom/dspread/xpos/QPOSService;->d(ZLjava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_8
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1, p2}, Lcom/dspread/xpos/QPOSService;->d(ZLjava/lang/String;)V

    goto :goto_2

    .line 72
    :cond_9
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    if-lez p3, :cond_a

    .line 73
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 75
    :cond_a
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, p2}, Lcom/dspread/xpos/QPOSService;->d(ZLjava/lang/String;)V

    :goto_2
    return-void

    .line 76
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    if-lez p2, :cond_c

    .line 77
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, v2, p1}, Lcom/dspread/xpos/QPOSService;->d(ZLjava/lang/String;)V

    :cond_c
    return-void
.end method

.method public a(Lcom/dspread/xpos/Vpos;ILcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;II)V
    .locals 4

    .line 428
    invoke-direct/range {p0 .. p5}, Lcom/dspread/xpos/x;->b(Lcom/dspread/xpos/Vpos;ILcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;II)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 429
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 434
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 435
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p4

    .line 436
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    mul-int/lit8 p5, p5, 0x2

    .line 440
    sget-object p4, Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;->DUKPT_MKSK_ALLTYPE:Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;

    const-string v1, "_KCV"

    if-ne p3, p4, :cond_4

    move p3, v0

    .line 442
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-ge v0, p4, :cond_7

    const/16 p4, 0x9

    if-ne p3, p4, :cond_2

    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    const/16 p5, 0x14

    goto :goto_1

    .line 446
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const/16 v3, 0x48

    if-ne v2, v3, :cond_2

    const/16 p5, 0x18

    :cond_2
    :goto_1
    add-int v2, v0, p5

    .line 450
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-ge p3, p4, :cond_3

    .line 453
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;->values()[Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 455
    :cond_3
    invoke-static {}, Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;->values()[Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;

    move-result-object p4

    aget-object p4, p4, p3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 457
    :goto_2
    invoke-virtual {p2, p4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    move v0, v2

    goto :goto_0

    .line 461
    :cond_4
    sget-object p4, Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;->DUKPT_EMV_KSN:Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;

    if-eq p3, p4, :cond_6

    sget-object p4, Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;->DUKPT_TRK_KSN:Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;

    if-eq p3, p4, :cond_6

    sget-object p4, Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;->DUKPT_PIN_KSN:Lcom/dspread/xpos/QPOSService$CHECKVALUE_KEYTYPE;

    if-ne p3, p4, :cond_5

    goto :goto_3

    .line 464
    :cond_5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 465
    :cond_6
    :goto_3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->f(Ljava/util/Hashtable;)V

    return-void
.end method

.method public a(Lcom/dspread/xpos/Vpos;ILjava/lang/String;)V
    .locals 7

    .line 483
    const/16 v0, 0x200

    new-array v0, v0, [B

    int-to-byte p2, p2

    .line 484
    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 485
    const-string p2, "//"

    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    move v3, p3

    move v2, v1

    .line 487
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    if-eqz v2, :cond_1

    .line 488
    array-length v4, p2

    sub-int/2addr v4, p3

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_2

    .line 492
    :cond_1
    :goto_1
    aget-object v4, p2, v2

    invoke-static {v4}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    :goto_2
    add-int/lit8 v5, v3, 0x1

    .line 496
    array-length v6, v4

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 497
    array-length v3, v4

    invoke-static {v4, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    array-length v3, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_2
    new-array p2, v3, [B

    .line 501
    invoke-static {v0, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0x10

    const/16 v2, 0x80

    const/4 v3, 0x5

    invoke-direct {p3, v0, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 506
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 507
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 508
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 510
    :cond_3
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_4

    .line 511
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    invoke-virtual {p1, v1, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->onReturnConverEncryptedBlockFormat(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 79
    move-object v9, p0

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->r(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 80
    iget-object v1, v9, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    .line 85
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/dspread/xpos/x;->a(Lcom/dspread/xpos/Vpos;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 86
    iget-object v1, v9, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {v0, v10, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, v9, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->m(Z)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, v9, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v10}, Lcom/dspread/xpos/QPOSService;->m(Z)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;Ljava/lang/String;I)V
    .locals 6

    if-eqz p3, :cond_6

    .line 512
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 516
    :cond_0
    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 517
    array-length v0, p3

    const/16 v1, 0x40

    if-gt v0, v1, :cond_5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x2

    .line 522
    new-array v2, v2, [B

    .line 523
    sget-object v3, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;->ENCRYPT_ENV:Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v3, :cond_2

    .line 524
    aput-byte v5, v2, v5

    goto :goto_0

    :cond_2
    nop

    .line 526
    aput-byte v4, v2, v5

    :goto_0
    and-int/lit16 p2, v0, 0xff

    int-to-byte p2, p2

    .line 528
    aput-byte p2, v2, v4

    .line 529
    const/4 p2, 0x2

    invoke-static {p3, v5, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "paras::"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 531
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0xf1

    invoke-direct {p3, v1, v0, p4, v2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 532
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 533
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 534
    iget-object p3, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_3

    return-void

    .line 536
    :cond_3
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-eqz p3, :cond_4

    .line 537
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->A(Ljava/lang/String;)V

    return-void

    :cond_4
    nop

    .line 541
    invoke-virtual {p1, v5, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p3

    .line 543
    invoke-virtual {p1, p2, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 544
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->A(Ljava/lang/String;)V

    return-void

    .line 545
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_OUT_OF_RANGE:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 546
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$BuzzerType;III)V
    .locals 0

    .line 214
    invoke-direct/range {p0 .. p5}, Lcom/dspread/xpos/x;->b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$BuzzerType;III)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 215
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 220
    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 221
    const-string p4, "00"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->u(Z)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->u(Z)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$FirmwareStatus;Ljava/lang/String;I)V
    .locals 7

    .line 157
    invoke-static {p3}, Lcom/dspread/xpos/Util;->convertAscIIStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 158
    array-length v1, v0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apversionlen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    add-int/lit8 p3, v1, 0x2

    .line 160
    new-array p3, p3, [B

    .line 161
    sget-object v2, Lcom/dspread/xpos/QPOSService$FirmwareStatus;->DEBUG:Lcom/dspread/xpos/QPOSService$FirmwareStatus;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne p2, v2, :cond_0

    .line 162
    aput-byte v5, p3, v4

    goto :goto_0

    :cond_0
    nop

    .line 164
    aput-byte v6, p3, v4

    :goto_0
    int-to-byte p2, v1

    .line 166
    aput-byte p2, p3, v5

    .line 167
    invoke-static {v0, v4, p3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x11

    const/16 v1, 0x31

    invoke-direct {p2, v0, v1, p4, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 169
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 170
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 174
    :cond_1
    invoke-virtual {p1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result p2

    if-ne p2, v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/dspread/xpos/QPOSService$FirmwareStatus;->RELEASE:Lcom/dspread/xpos/QPOSService$FirmwareStatus;

    .line 175
    :goto_1
    new-array p2, v5, [B

    invoke-virtual {p1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    aput-byte p3, p2, v4

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p2

    .line 176
    invoke-virtual {p1, v6, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 177
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aap:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    add-int/2addr p2, v6

    .line 180
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "status:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1, p2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p4

    invoke-static {p4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p4

    const-string v1, "AA998870"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 182
    sget-object p1, Lcom/dspread/xpos/QPOSService$QposStatus;->SELF_DESTRUCTION_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

    goto :goto_2

    :cond_3
    nop

    .line 183
    invoke-virtual {p1, p2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p4

    invoke-static {p4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p4

    const-string v1, "AA998871"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 184
    sget-object p1, Lcom/dspread/xpos/QPOSService$QposStatus;->ENGINEERING_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

    goto :goto_2

    :cond_4
    nop

    .line 185
    invoke-virtual {p1, p2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AA998872"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 186
    sget-object p1, Lcom/dspread/xpos/QPOSService$QposStatus;->NORMAL_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

    goto :goto_2

    .line 188
    :cond_5
    sget-object p1, Lcom/dspread/xpos/QPOSService$QposStatus;->UNKOWN:Lcom/dspread/xpos/QPOSService$QposStatus;

    .line 190
    :goto_2
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, v2, p3, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$FirmwareStatus;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$QposStatus;)V

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$LEDType;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$LEDDirection;Lcom/dspread/xpos/QPOSService$LEDStatus;III)V
    .locals 0

    .line 203
    invoke-direct/range {p0 .. p8}, Lcom/dspread/xpos/x;->b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$LEDType;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$LEDDirection;Lcom/dspread/xpos/QPOSService$LEDStatus;III)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 204
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 209
    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 210
    const-string p4, "00"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->t(Z)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->t(Z)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->d(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 363
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 368
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->b(Z)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->b(Z)V

    :goto_0
    return-void
.end method

.method a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 547
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 548
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x41

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 549
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 550
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 551
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 553
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 554
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->H(Z)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->H(Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$BLuConfigMode;I)V
    .locals 3

    .line 472
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blueconfig==="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->onSetPosBluConfig(Z)V

    .line 476
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dspread/xpos/x;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Lcom/dspread/xpos/QPOSService$BLuConfigMode;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 477
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 479
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_2

    .line 480
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->onSetPosBluConfig(Z)V

    goto :goto_0

    .line 482
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->onSetPosBluConfig(Z)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->convertAscIIStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p3}, Lcom/dspread/xpos/Util;->convertAscIIStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customDisplayStrLen\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customDisplayStrAscii\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " qrLinkLen\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " qrLinkAscii\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/dspread/xpos/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 p3, 0x41

    const/16 v0, 0xe2

    invoke-direct {v2, p3, v0, p4, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 7
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 8
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "result ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->r(Z)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p4}, Lcom/dspread/xpos/QPOSService;->r(Z)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 557
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-lez p4, :cond_4

    const/16 v0, 0x20

    if-gt p4, v0, :cond_4

    .line 560
    rem-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 564
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0101000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/dspread/xpos/Util;->intToHexStr(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v1

    invoke-static {v0}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    div-int/2addr p4, v1

    invoke-static {p4}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object p4

    invoke-static {p4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 565
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 568
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 p4, 0x10

    const/16 v0, 0xfe

    const/16 v2, 0xa

    invoke-direct {p3, p4, v0, v2, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 569
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 570
    invoke-virtual {p1, p5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 571
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 575
    :cond_2
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 576
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_3

    .line 578
    invoke-virtual {p1, v1, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p3

    .line 580
    const/4 p4, 0x4

    invoke-virtual {p1, p4, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p5

    invoke-static {p5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p5

    add-int/2addr p3, p4

    add-int/lit8 p4, p3, 0x1

    .line 582
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    .line 583
    invoke-virtual {p1, p4, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x6

    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 584
    const-string/jumbo p3, "transportKey"

    invoke-virtual {p2, p3, p5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string p3, "checkValue"

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->onRequestGenerateTransportKey(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 588
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->onRequestGenerateTransportKey(Ljava/util/Hashtable;)V

    :goto_0
    return-void

    .line 589
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 346
    invoke-direct/range {p0 .. p5}, Lcom/dspread/xpos/x;->c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 347
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 353
    const/16 p3, 0xa

    invoke-virtual {p1, p2, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 354
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p4

    sub-int/2addr p4, p3

    invoke-virtual {p1, p3, p4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    .line 355
    new-instance p4, Ljava/util/Hashtable;

    invoke-direct {p4}, Ljava/util/Hashtable;-><init>()V

    .line 356
    const-string p5, "ksn"

    invoke-virtual {p4, p5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string p2, "encryptedData"

    invoke-virtual {p4, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p4}, Lcom/dspread/xpos/QPOSService;->d(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->d(Ljava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 147
    invoke-virtual/range {p0 .. p6}, Lcom/dspread/xpos/x;->c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 148
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "rsa:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, p4, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Z)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p4}, Lcom/dspread/xpos/QPOSService;->e(Z)V

    :goto_0
    return-void
.end method

.method public b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 424
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 426
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 428
    aget-byte v5, p2, v2

    aput-byte v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v2, 0x8

    if-le p2, v2, :cond_1

    const-string p3, "0400"

    .line 433
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v2, p2

    move p2, v1

    :goto_1
    if-ge p2, v2, :cond_2

    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 437
    :cond_2
    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    move p3, v1

    :goto_2
    if-ge p3, v4, :cond_3

    add-int/lit8 v2, v3, 0x1

    .line 439
    aget-byte v5, p2, p3

    aput-byte v5, v0, v3

    add-int/lit8 p3, p3, 0x1

    move v3, v2

    goto :goto_2

    .line 441
    :cond_3
    new-array p2, v3, [B

    .line 443
    invoke-static {v0, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0x41

    const/16 v2, 0xb0

    invoke-direct {p3, v0, v2, p4, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 447
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/16 p2, 0xa

    .line 448
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 449
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 451
    :cond_4
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-direct/range {p0 .. p5}, Lcom/dspread/xpos/x;->c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    const/4 p2, 0x0

    .line 304
    const/16 p4, 0xa

    invoke-virtual {p1, p2, p4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p5

    sub-int/2addr p5, p4

    invoke-virtual {p1, p4, p5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p4

    invoke-static {p4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p4

    .line 306
    new-instance p5, Ljava/util/Hashtable;

    invoke-direct {p5}, Ljava/util/Hashtable;-><init>()V

    .line 307
    const-string v0, "ksn"

    invoke-virtual {p5, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string p2, "encryptedData"

    invoke-virtual {p5, p2, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    return-object p5

    :cond_1
    return-object p3
.end method

.method public b(Lcom/dspread/xpos/Vpos;)V
    .locals 4

    .line 320
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x20

    const/16 v2, 0xe2

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 322
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 323
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 330
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_1

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timer:++++"

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

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->C(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/dspread/xpos/Vpos;I)V
    .locals 3

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/dspread/xpos/x;->q(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 363
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 369
    const/4 p2, 0x4

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 371
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v2, v0, 0x4

    .line 373
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 375
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 376
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 377
    const-string v1, "modulus"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string p2, "exponent"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->onGetDevicePubKey(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;II)V
    .locals 1

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/x;->d(Lcom/dspread/xpos/Vpos;II)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "result ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 19
    const-string p2, ""

    .line 20
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    if-lez p3, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->e(ZLjava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->e(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$DoTransactionType;I)V
    .locals 2

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/x;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$DoTransactionType;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 165
    iget-object p3, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_9

    .line 170
    sget-object p3, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetAll:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    if-ne p2, p3, :cond_1

    .line 171
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p2, p0, Lcom/dspread/xpos/x;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->r(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    :cond_1
    sget-object p3, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const/4 v1, 0x1

    if-ne p2, p3, :cond_6

    .line 173
    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_a

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "=====2222"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 176
    const-string p2, "---------------dataOne go0"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const-string p3, "00"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---------------dataOne 00"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 179
    sget-object p2, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 180
    new-instance p3, Lcom/dspread/xpos/t;

    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p3, v0}, Lcom/dspread/xpos/t;-><init>(Lcom/dspread/xpos/QPOSService;)V

    .line 181
    invoke-virtual {p3, p2, p1}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    goto/16 :goto_1

    .line 182
    :cond_2
    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const-string p3, "99"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 183
    const-string p2, "---------------dataOne 99"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 184
    new-instance p2, Lcom/dspread/xpos/DoEmvApp;

    iget-object p3, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p2, p3}, Lcom/dspread/xpos/DoEmvApp;-><init>(Lcom/dspread/xpos/QPOSService;)V

    .line 185
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    invoke-virtual {p1, v1, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/DoEmvApp;->c([B)Z

    .line 186
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    invoke-virtual {p1, v1, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/DoEmvApp;->a([B)Ljava/util/Hashtable;

    move-result-object p1

    .line 187
    const-string p2, "iccData"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "icc==="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 189
    const-string/jumbo p3, "tagC"

    invoke-virtual {p1, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 190
    iget-object p3, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2, p1}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :cond_3
    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const-string p3, "03"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const-string p3, "05"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 202
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 204
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "usstr++++"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 205
    sget-object p2, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_OFFLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 206
    new-instance p3, Lcom/dspread/xpos/t;

    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p3, v0}, Lcom/dspread/xpos/t;-><init>(Lcom/dspread/xpos/QPOSService;)V

    .line 207
    invoke-virtual {p3, p2, p1}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    goto :goto_1

    .line 217
    :cond_6
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    if-ne p2, p1, :cond_7

    .line 218
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->i(Z)V

    goto :goto_1

    .line 219
    :cond_7
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearLast:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    if-ne p2, p1, :cond_8

    .line 220
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->i(Z)V

    goto :goto_1

    .line 221
    :cond_8
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->Clear:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    if-ne p2, p1, :cond_a

    .line 222
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->i(Z)V

    goto :goto_1

    .line 225
    :cond_9
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->i(Z)V

    :cond_a
    :goto_1
    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$DoTransactionType;Ljava/lang/String;)V
    .locals 3

    .line 226
    invoke-static {p3}, Lcom/dspread/xpos/Util;->convertAscIIStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/x;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$DoTransactionType;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 233
    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearOneByBatchID:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 234
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->i(Z)V

    goto/16 :goto_1

    .line 235
    :cond_1
    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetOneByBatchID:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    if-ne p2, v0, :cond_7

    .line 236
    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    .line 237
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=====2222"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 246
    const-string p2, "---------------dataOne go0"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const-string v0, "00"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 249
    sget-object p2, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 250
    new-instance p3, Lcom/dspread/xpos/t;

    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p3, v0}, Lcom/dspread/xpos/t;-><init>(Lcom/dspread/xpos/QPOSService;)V

    .line 251
    invoke-virtual {p3, p2, p1}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    goto/16 :goto_1

    .line 252
    :cond_2
    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const-string v0, "99"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 253
    const-string p2, "---------------dataOne 99"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 254
    new-instance p2, Lcom/dspread/xpos/DoEmvApp;

    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p2, v0}, Lcom/dspread/xpos/DoEmvApp;-><init>(Lcom/dspread/xpos/QPOSService;)V

    .line 255
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dspread/xpos/DoEmvApp;->c([B)Z

    .line 256
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/DoEmvApp;->a([B)Ljava/util/Hashtable;

    move-result-object p1

    .line 257
    const-string p2, "iccData"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "icc==="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1, p3}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_3
    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const-string p3, "03"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/dspread/xpos/x;->l:Ljava/lang/String;

    const-string p3, "05"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 271
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 273
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "usstr++++"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 274
    sget-object p2, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_OFFLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 275
    new-instance p3, Lcom/dspread/xpos/t;

    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p3, v0}, Lcom/dspread/xpos/t;-><init>(Lcom/dspread/xpos/QPOSService;)V

    .line 276
    invoke-virtual {p3, p2, p1}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    goto :goto_1

    .line 287
    :cond_6
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->i(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->d(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->b(Z)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->b(Z)V

    :goto_0
    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual/range {p0 .. p6}, Lcom/dspread/xpos/x;->c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 31
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "rsa:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, p4, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_2

    .line 35
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/j;->a(I)B

    move-result p2

    .line 36
    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p4

    invoke-static {p4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p4

    .line 37
    invoke-static {p4}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 38
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p6, "rsaReginString:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 39
    iput-object p4, p0, Lcom/dspread/xpos/x;->i:Ljava/lang/String;

    add-int/lit8 p5, p2, 0x1

    add-int/lit8 p6, p5, 0x1

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p1, p5, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p5

    invoke-static {p5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p5

    .line 42
    const/16 v1, 0x10

    invoke-static {p5, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p5

    add-int/2addr p6, p3

    .line 44
    invoke-virtual {p1, p6, p5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    add-int/2addr p6, p5

    add-int/lit8 p5, p6, 0x1

    .line 46
    invoke-virtual {p1, p6, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p6

    invoke-static {p6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p6

    .line 47
    invoke-static {p6, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p6

    add-int/2addr p5, p3

    .line 49
    invoke-virtual {p1, p5, p6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    add-int/2addr p5, p6

    .line 51
    invoke-direct {p0, v2, p3}, Lcom/dspread/xpos/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p3

    add-int/lit8 p6, p5, 0x1

    .line 53
    invoke-virtual {p1, p5}, Lcom/dspread/xpos/j;->a(I)B

    move-result p5

    .line 55
    invoke-static {p5}, Lcom/dspread/xpos/Util;->byteToInt(B)I

    move-result p5

    .line 57
    invoke-virtual {p1, p6, p5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/dspread/xpos/x;->d:[B

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dspread/xpos/x;->a([B[B)[B

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pdata:===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p3, v0}, Lcom/dspread/xpos/x;->a(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enpda:=========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    add-int/2addr p6, p5

    add-int/lit8 p5, p6, 0x1

    .line 67
    invoke-virtual {p1, p6}, Lcom/dspread/xpos/j;->a(I)B

    move-result p6

    .line 68
    invoke-static {p6}, Lcom/dspread/xpos/Util;->byteToInt(B)I

    move-result p6

    .line 69
    invoke-virtual {p1, p5, p6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 71
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p6, "\u5f53\u524d\u7ebf\u7a0b: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 72
    iget-object p5, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p5}, Lcom/dspread/xpos/QPOSService;->l1()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 73
    iput-object p3, p0, Lcom/dspread/xpos/x;->e:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/dspread/xpos/x;->g:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, "onQposGenerateSessionKeysResult"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    const-wide/16 p1, 0x64

    .line 77
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 78
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->generateSessionKeys()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void

    .line 84
    :cond_1
    iput-object p3, p0, Lcom/dspread/xpos/x;->f:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/dspread/xpos/x;->h:Ljava/lang/String;

    .line 87
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 88
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "rsaReginLen"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo p2, "rsaReginString"

    invoke-virtual {p1, p2, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p2, p0, Lcom/dspread/xpos/x;->e:Ljava/lang/String;

    const-string p3, "enPinKey"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p2, p0, Lcom/dspread/xpos/x;->g:Ljava/lang/String;

    const-string p3, "enPinKcvKey"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object p2, p0, Lcom/dspread/xpos/x;->f:Ljava/lang/String;

    const-string p3, "enDataCardKey"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p2, p0, Lcom/dspread/xpos/x;->h:Ljava/lang/String;

    const-string p3, "enKcvDataCardKey"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->h(Ljava/util/Hashtable;)V

    goto :goto_1

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->h(Ljava/util/Hashtable;)V

    :goto_1
    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/x;->c(Lcom/dspread/xpos/Vpos;ILjava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 7
    const-string p2, "00"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->k(Z)V

    return p3

    .line 11
    :cond_1
    const-string p2, "01"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->k(Z)V

    return p2

    :cond_2
    return p3
.end method

.method protected c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 15

    .line 25
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 26
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/2addr v7, v6

    const-string v8, "0"

    if-eqz v7, :cond_0

    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 30
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v7

    div-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    const-string v11, "000"

    const/4 v12, 0x1

    const-string v13, "00"

    if-ne v9, v12, :cond_1

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v6, :cond_2

    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v10, :cond_3

    .line 36
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 39
    :cond_3
    :goto_0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v9

    div-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 40
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v12, :cond_4

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 42
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v6, :cond_5

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 44
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 48
    :cond_6
    :goto_1
    const-string v6, "0A"

    move-object/from16 v8, p3

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0A180000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 55
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "0A18"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_2
    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 60
    new-instance v2, Lcom/dspread/xpos/i;

    const/16 v3, 0x10

    const/16 v4, 0xf3

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 61
    invoke-virtual {v0, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/4 v1, 0x5

    .line 62
    invoke-virtual {v0, v1}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/dspread/xpos/Vpos;)V
    .locals 7

    .line 63
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x11

    const/16 v2, 0x32

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 64
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 65
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 84
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 85
    invoke-virtual {p1, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    .line 87
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 88
    invoke-virtual {p1, v2, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v2, v3

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->b(Ljava/util/List;)V

    return-void
.end method

.method public c(Lcom/dspread/xpos/Vpos;I)V
    .locals 2

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->r(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, p2}, Lcom/dspread/xpos/QPOSService;->t(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/dspread/xpos/QPOSService;->t(Ljava/lang/String;)V

    .line 24
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result ="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x33

    const/16 v2, 0x21

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "result ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->j(Z)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->j(Z)V

    :goto_0
    return-void
.end method

.method protected c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 94
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x41

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 95
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 96
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 104
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    const/4 p2, 0x2

    .line 105
    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p2

    const/4 p3, 0x3

    .line 107
    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->s(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .line 140
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 142
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 144
    aget-byte v5, p2, v2

    aput-byte v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    move p3, v1

    :goto_1
    if-ge p3, v4, :cond_1

    add-int/lit8 v2, v3, 0x1

    .line 149
    aget-byte v5, p2, p3

    aput-byte v5, v0, v3

    add-int/lit8 p3, p3, 0x1

    move v3, v2

    goto :goto_1

    .line 151
    :cond_1
    new-array p2, v3, [B

    .line 153
    invoke-static {v0, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0x41

    const/16 v2, 0xb1

    invoke-direct {p3, v0, v2, p4, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 157
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/16 p2, 0xa

    .line 158
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 159
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 161
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected d(Lcom/dspread/xpos/Vpos;)V
    .locals 21

    .line 254
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/dspread/xpos/x;->g(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 255
    iget-object v2, v0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 257
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

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    .line 260
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 261
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 264
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 265
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 268
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 269
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 270
    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 277
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 278
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "batteryLevelLen:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 279
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mV"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 282
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 283
    invoke-virtual {v1, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    .line 284
    const-string v11, "00"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v12, "false"

    const-string/jumbo v13, "true"

    if-eqz v10, :cond_1

    .line 285
    move-object v10, v12

    goto :goto_0

    .line 287
    :cond_1
    move-object v10, v13

    :goto_0
    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 291
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 292
    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v14

    invoke-static {v14}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v14

    .line 293
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 294
    move-object v14, v12

    goto :goto_1

    .line 296
    :cond_2
    move-object v14, v13

    :goto_1
    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 300
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 301
    invoke-virtual {v1, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v15

    .line 302
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 303
    move-object v15, v12

    goto :goto_2

    .line 305
    :cond_3
    move-object v15, v13

    :goto_2
    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 309
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 310
    invoke-virtual {v1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 312
    move-object v4, v12

    goto :goto_3

    .line 314
    :cond_4
    move-object v4, v13

    :goto_3
    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 318
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 319
    invoke-virtual {v1, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v12

    .line 320
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 321
    move-object/from16 v12, v17

    goto :goto_4

    .line 323
    :cond_5
    move-object v12, v13

    :goto_4
    add-int/2addr v3, v6

    .line 327
    const-string v6, ""

    if-ge v3, v2, :cond_6

    move-object/from16 v16, v13

    add-int/lit8 v13, v3, 0x1

    .line 329
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 330
    invoke-virtual {v1, v13, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v18

    add-int/2addr v3, v13

    move-object/from16 v13, v18

    goto :goto_5

    .line 327
    :cond_6
    move-object/from16 v16, v13

    move-object v13, v6

    .line 333
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    const-string v6, "dataEncryptionMode: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 334
    if-ge v3, v2, :cond_8

    add-int/lit8 v0, v3, 0x1

    .line 336
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 337
    invoke-virtual {v1, v0, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 340
    move-object/from16 v6, v17

    goto :goto_6

    .line 342
    :cond_7
    move-object/from16 v6, v16

    :goto_6
    add-int/2addr v3, v0

    goto :goto_7

    .line 334
    :cond_8
    move-object/from16 v6, v18

    .line 346
    :goto_7
    if-ge v3, v2, :cond_a

    add-int/lit8 v0, v3, 0x1

    .line 348
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 349
    invoke-virtual {v1, v0, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-static {v13}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v13

    .line 351
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 352
    move-object/from16 v16, v17

    goto :goto_8

    .line 354
    :cond_9
    nop

    :goto_8
    add-int/2addr v3, v0

    move-object/from16 v0, v16

    goto :goto_9

    .line 346
    :cond_a
    move-object/from16 v0, v18

    .line 359
    :goto_9
    if-ge v3, v2, :cond_d

    add-int/lit8 v11, v3, 0x1

    .line 361
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 363
    invoke-virtual {v1, v11, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    const/16 v16, 0x0

    aget-byte v13, v13, v16

    move-object/from16 v17, v0

    const/16 v0, 0x64

    if-le v13, v0, :cond_b

    goto :goto_a

    :cond_b
    if-gez v13, :cond_c

    move/from16 v0, v16

    goto :goto_a

    :cond_c
    move v0, v13

    .line 369
    :goto_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "%"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/2addr v3, v11

    goto :goto_b

    .line 359
    :cond_d
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .line 374
    :goto_b
    if-ge v3, v2, :cond_e

    add-int/lit8 v11, v3, 0x1

    .line 376
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 377
    invoke-virtual {v1, v11, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-static {v13}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v13

    .line 378
    invoke-static {v13}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v3, v11

    goto :goto_c

    .line 374
    :cond_e
    move-object/from16 v13, v18

    .line 382
    :goto_c
    const-string v11, "A27"

    if-ge v3, v2, :cond_f

    move-object/from16 v16, v13

    add-int/lit8 v13, v3, 0x1

    .line 384
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 385
    invoke-virtual {v1, v13, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v19

    .line 386
    move-object/from16 p1, v0

    invoke-static/range {v19 .. v19}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v3, v13

    .line 388
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, "1.0.6"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 389
    const-string v0, "1.0.5"

    goto :goto_d

    .line 382
    :cond_f
    move-object/from16 p1, v0

    move-object/from16 v16, v13

    move-object/from16 v0, v18

    .line 393
    :cond_10
    :goto_d
    if-ge v3, v2, :cond_11

    add-int/lit8 v13, v3, 0x1

    .line 395
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 396
    move-object/from16 v19, v11

    invoke-virtual {v1, v13, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v11

    .line 397
    move-object/from16 v20, v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v3, v13

    goto :goto_e

    .line 393
    :cond_11
    move-object/from16 v20, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v18

    .line 397
    :goto_e
    if-ge v3, v2, :cond_12

    add-int/lit8 v11, v3, 0x1

    .line 402
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 403
    invoke-virtual {v1, v11, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    .line 404
    invoke-static {v13}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    add-int/2addr v3, v11

    :cond_12
    if-ge v3, v2, :cond_13

    add-int/lit8 v11, v3, 0x1

    .line 409
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 410
    invoke-virtual {v1, v11, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    .line 411
    invoke-static {v13}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    add-int/2addr v3, v11

    .line 414
    :cond_13
    if-ge v3, v2, :cond_14

    add-int/lit8 v2, v3, 0x1

    .line 416
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 417
    invoke-virtual {v1, v2, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    .line 418
    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v1}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    .line 414
    :cond_14
    move-object/from16 v1, v18

    .line 423
    :goto_f
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 424
    const-string v3, "isSupportedTrack1"

    invoke-virtual {v2, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v3, "isSupportedTrack2"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v3, "isSupportedTrack3"

    invoke-virtual {v2, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v3, "bootloaderVersion"

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v3, "firmwareVersion"

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v3, "isUsbConnected"

    invoke-virtual {v2, v3, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v3, "isCharging"

    invoke-virtual {v2, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v3, "batteryLevel"

    invoke-virtual {v2, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v3, "Voltage"

    invoke-virtual {v2, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v3, "hardwareVersion"

    invoke-virtual {v2, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v3, "SUB"

    move-object/from16 v4, v18

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string/jumbo v3, "updateWorkKeyFlag"

    invoke-virtual {v2, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v3, "isKeyboard"

    move-object/from16 v4, v17

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v3, "batteryPercentage"

    move-object/from16 v4, p1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v3, "PCI_hardwareVersion"

    move-object/from16 v13, v16

    invoke-virtual {v2, v3, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v3, "PCI_firmwareVersion"

    move-object/from16 v4, v20

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_15

    .line 443
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 444
    const-string v4, "_"

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_15
    const-string v3, "compileTime"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v0, "Manufacturere"

    const-string v3, "Dspread"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "ModelInfor"

    if-eqz v0, :cond_16

    .line 450
    const-string v0, "QPOSMINI"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_16
    const-string v0, "A29"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 453
    const-string v0, "QPOSCUTE"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 454
    :cond_17
    const-string v0, "A30"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 455
    const-string v0, "QPOSPLUS"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 456
    :cond_18
    const-string v0, "D20"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 457
    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_19
    :goto_10
    const-string v0, "OTAversion"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->j(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected d(Lcom/dspread/xpos/Vpos;I)V
    .locals 25

    .line 97
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p2}, Lcom/dspread/xpos/x;->s(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object v2

    .line 98
    iget-object v0, v1, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pos id : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    .line 105
    invoke-virtual {v2, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 106
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v0, v5

    add-int/lit8 v7, v0, 0x1

    .line 110
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 111
    invoke-virtual {v2, v7, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v7, v0

    .line 116
    nop

    .line 117
    add-int/lit8 v0, v7, 0x1

    .line 119
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 120
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v2, v0, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    .line 124
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 125
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v2, v7, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v0

    const-string v11, ""

    if-ge v7, v3, :cond_1

    add-int/lit8 v0, v7, 0x1

    .line 129
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 130
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v2, v0, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    .line 133
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 134
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v2, v7, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v0

    goto :goto_0

    .line 125
    :cond_1
    move-object v12, v11

    move-object v13, v12

    .line 138
    :goto_0
    if-ge v7, v3, :cond_2

    add-int/lit8 v0, v7, 0x1

    .line 140
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 141
    invoke-virtual {v2, v0, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v14

    invoke-static {v14}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v14

    add-int/2addr v7, v0

    goto :goto_1

    .line 138
    :cond_2
    move-object v14, v11

    .line 146
    :goto_1
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    if-ge v7, v3, :cond_3

    add-int/lit8 v0, v7, 0x1

    .line 154
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 155
    invoke-virtual {v2, v0, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v15

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    .line 158
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 159
    invoke-virtual {v2, v7, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v16

    add-int/2addr v7, v0

    add-int/lit8 v0, v7, 0x1

    .line 162
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 163
    invoke-virtual {v2, v0, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v17

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    .line 166
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 167
    invoke-virtual {v2, v7, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v18

    add-int/2addr v7, v0

    add-int/lit8 v0, v7, 0x1

    .line 170
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 171
    invoke-virtual {v2, v0, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v19

    add-int/2addr v7, v0

    move-object/from16 v4, v16

    move-object/from16 v20, v17

    move-object/from16 v21, v18

    move-object/from16 v22, v19

    goto :goto_2

    .line 150
    :cond_3
    move-object v4, v11

    move-object v15, v4

    move-object/from16 v20, v15

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    .line 176
    :goto_2
    if-ge v7, v3, :cond_5

    add-int/lit8 v0, v7, 0x1

    .line 178
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 179
    invoke-virtual {v2, v0, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    .line 181
    move-object/from16 v16, v11

    const-string v11, "00"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 182
    const-string v5, "false"

    goto :goto_3

    .line 184
    :cond_4
    const-string/jumbo v5, "true"

    :goto_3
    add-int/2addr v7, v0

    goto :goto_4

    .line 176
    :cond_5
    move-object/from16 v16, v11

    move-object/from16 v5, v16

    .line 189
    :goto_4
    if-ge v7, v3, :cond_9

    add-int/lit8 v11, v7, 0x1

    .line 192
    :try_start_0
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 193
    invoke-virtual {v2, v11, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    add-int/2addr v11, v0

    .line 196
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 199
    move-object/from16 v17, v7

    :try_start_2
    array-length v7, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v18, v11

    add-int/lit8 v11, v7, 0x5

    .line 200
    :try_start_3
    new-array v11, v11, [B

    const/16 v19, 0x1

    add-int/lit8 v7, v7, -0x1

    move/from16 v19, v7

    const/4 v7, 0x0

    :goto_5
    if-ltz v19, :cond_7

    add-int/lit8 v23, v7, 0x1

    .line 205
    aget-byte v24, v0, v19

    aput-byte v24, v11, v23

    add-int/lit8 v19, v19, -0x1

    .line 207
    aget-byte v23, v0, v19

    aput-byte v23, v11, v7

    add-int/lit8 v7, v7, 0x2

    if-eqz v19, :cond_6

    add-int/lit8 v23, v7, 0x1

    const/16 v24, 0x3a

    .line 210
    aput-byte v24, v11, v7

    move/from16 v7, v23

    :cond_6
    add-int/lit8 v19, v19, -0x1

    goto :goto_5

    .line 213
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    .line 196
    :cond_8
    move-object/from16 v17, v7

    move/from16 v18, v11

    move-object/from16 v0, v17

    move/from16 v7, v18

    goto :goto_a

    .line 213
    :catch_2
    move-exception v0

    move-object/from16 v17, v7

    :goto_6
    move/from16 v18, v11

    :goto_7
    move-object/from16 v7, v17

    goto :goto_8

    :catch_3
    move-exception v0

    move/from16 v18, v11

    move-object/from16 v7, v16

    :goto_8
    move-object v0, v7

    :goto_9
    move/from16 v7, v18

    goto :goto_a

    :cond_9
    move-object/from16 v0, v16

    .line 222
    :goto_a
    if-ge v7, v3, :cond_a

    add-int/lit8 v3, v7, 0x1

    .line 224
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 225
    invoke-virtual {v2, v3, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v11

    goto :goto_b

    .line 222
    :cond_a
    move-object/from16 v11, v16

    .line 229
    :goto_b
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 230
    const-string/jumbo v3, "posId"

    invoke-virtual {v2, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string/jumbo v3, "psamId"

    invoke-virtual {v2, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v3, "merchantId"

    invoke-virtual {v2, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v3, "vendorCode"

    invoke-virtual {v2, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v3, "deviceNumber"

    invoke-virtual {v2, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v3, "psamNo"

    invoke-virtual {v2, v3, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v3, "csn"

    invoke-virtual {v2, v3, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v3, "tmk0Status"

    invoke-virtual {v2, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v3, "tmk1Status"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v3, "tmk2Status"

    move-object/from16 v4, v20

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string/jumbo v3, "tmk3Status"

    move-object/from16 v4, v21

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v3, "tmk4Status"

    move-object/from16 v4, v22

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v3, "isKeyboard"

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v3, "macAddress"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "nfcID"

    invoke-virtual {v2, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, v1, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->i(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected d(Lcom/dspread/xpos/Vpos;ILjava/lang/String;)V
    .locals 5

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/x;->p:Lcom/dspread/xpos/j;

    .line 46
    sget-boolean v0, Lcom/dspread/xpos/x;->o:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/dspread/xpos/x;->e(Lcom/dspread/xpos/Vpos;ILjava/lang/String;)V

    return-void

    :cond_0
    nop

    .line 54
    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 55
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x17

    const/16 v2, 0xb1

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 56
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 57
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p3

    .line 58
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-eqz p3, :cond_3

    .line 63
    invoke-virtual {p3}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_3

    .line 64
    const-string v2, "commid = 53"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/QPOSService;->L(I)V

    .line 67
    invoke-virtual {p3}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    if-lez v2, :cond_2

    .line 68
    invoke-virtual {p3, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    const/4 v3, 0x2

    .line 69
    invoke-virtual {p3, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commid get pin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, p3}, Lcom/dspread/xpos/QPOSService;->E(Ljava/lang/String;)V

    const/4 p3, -0x1

    if-eq v2, p3, :cond_2

    .line 73
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v2, 0x22

    const/16 v3, 0xf

    invoke-direct {p3, v2, v1, v1, v3}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 75
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 81
    :cond_2
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p3

    move v2, v1

    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "request pin result ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p3, v1, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_6

    .line 90
    invoke-virtual {p3}, Lcom/dspread/xpos/j;->e()I

    move-result p1

    invoke-virtual {p3, v1, p1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0E"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 91
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, v2}, Lcom/dspread/xpos/QPOSService;->a(ZZ)V

    goto :goto_1

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1, v2}, Lcom/dspread/xpos/QPOSService;->a(ZZ)V

    goto :goto_1

    .line 96
    :cond_6
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1, v2}, Lcom/dspread/xpos/QPOSService;->a(ZZ)V

    :goto_1
    return-void
.end method

.method protected d(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x17

    const/16 v2, 0xb2

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->b()B

    move-result p3

    const/16 v0, 0x53

    if-ne p3, v0, :cond_1

    .line 6
    iget-object p3, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/16 v0, 0x96

    invoke-virtual {p3, v0}, Lcom/dspread/xpos/QPOSService;->L(I)V

    .line 7
    const-string p3, "commid = 53"

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    if-lez p3, :cond_0

    .line 9
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/j;->a(I)B

    move-result p2

    .line 12
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/QPOSService;->J(I)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 14
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x22

    const/16 v1, 0xf

    invoke-direct {p2, v0, p3, p3, v1}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 15
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    :cond_0
    const/16 p2, 0x1e

    .line 18
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 25
    :cond_2
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 26
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_3

    .line 28
    const/4 p3, 0x2

    invoke-virtual {p2, p3, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    const/4 p3, 0x4

    .line 30
    invoke-virtual {p2, p3}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    .line 31
    const/4 v0, 0x5

    invoke-virtual {p2, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p3, v0

    add-int/lit8 v0, p3, 0x1

    .line 34
    invoke-virtual {p2, p3}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    .line 35
    invoke-virtual {p2, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 38
    const-string/jumbo p3, "pinKsn"

    invoke-virtual {p1, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo p3, "pinBlock"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->n(Ljava/util/Hashtable;)V

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-ne p1, p2, :cond_4

    .line 42
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->n(Ljava/util/Hashtable;)V

    goto :goto_1

    .line 44
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->n(Ljava/util/Hashtable;)V

    :goto_1
    return-void
.end method

.method protected e(Lcom/dspread/xpos/Vpos;)V
    .locals 5

    .line 53
    invoke-direct {p0, p1}, Lcom/dspread/xpos/x;->f(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ksn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 68
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 73
    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 77
    const-string/jumbo v1, "pinKsn"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo p1, "trackKsn"

    invoke-virtual {v0, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string p1, "emvKsn"

    invoke-virtual {v0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo p1, "uid"

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->k(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected e(Lcom/dspread/xpos/Vpos;I)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->j(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Lcom/dspread/xpos/QPOSService;->c(ZLjava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->c(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected e(Lcom/dspread/xpos/Vpos;ILjava/lang/String;)V
    .locals 3

    .line 7
    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 8
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x17

    const/16 v2, 0xb1

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 11
    iget-object p3, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    :goto_0
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_2

    .line 17
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    if-lez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->L(I)V

    .line 19
    invoke-virtual {p2, p3}, Lcom/dspread/xpos/j;->a(I)B

    move-result p2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "len = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/QPOSService;->J(I)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 24
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x22

    const/16 v1, 0xf

    invoke-direct {p2, v0, p3, p3, v1}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 26
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    :cond_1
    const/16 p2, 0x1e

    .line 32
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 38
    sput-boolean p1, Lcom/dspread/xpos/x;->n:Z

    .line 39
    sput-object p2, Lcom/dspread/xpos/x;->p:Lcom/dspread/xpos/j;

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "request trade pin result ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 41
    sget-boolean p1, Lcom/dspread/xpos/x;->o:Z

    if-eqz p1, :cond_4

    .line 42
    sput-boolean p3, Lcom/dspread/xpos/x;->o:Z

    :cond_4
    return-void
.end method

.method protected e(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 83
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x41

    const/16 v2, 0x3e

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 84
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 85
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 86
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->o(Z)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->o(Z)V

    :goto_0
    return-void
.end method

.method protected e(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1, p2}, Lcom/dspread/xpos/x;->a(ILcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method protected f(Lcom/dspread/xpos/Vpos;I)V
    .locals 6

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 v1, 0x32

    if-ge p2, v1, :cond_1

    .line 13
    new-instance v1, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v2

    const/16 v3, 0xff

    const/4 v4, 0x2

    const/16 v5, 0x3c

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 14
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 15
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FF"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-static {p2}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dspread/xpos/utils/d;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 32
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, "okay,please check the posLog.txt file in D20 device storage"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->I(Ljava/lang/String;)V

    return-void
.end method

.method protected f(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1, p2}, Lcom/dspread/xpos/x;->a(ILcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 8
    const-string p2, " 2003AA998871"

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->o(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->j(Z)V

    :goto_0
    return-void
.end method

.method protected g(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->p(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->I(Z)V

    return-void
.end method

.method protected g(Lcom/dspread/xpos/Vpos;I)Z
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->t(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 24
    const-string p2, "00"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 26
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->l(Z)V

    return v0

    .line 29
    :cond_1
    const-string p2, "01"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->l(Z)V

    return p2

    :cond_2
    return v0
.end method

.method protected h(Lcom/dspread/xpos/Vpos;)V
    .locals 4

    .line 11
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x20

    const/16 v2, 0xe0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 14
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timer:++++"

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

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->o(Ljava/lang/String;)V

    return-void
.end method

.method protected h(Lcom/dspread/xpos/Vpos;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->i(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Lcom/dspread/xpos/QPOSService;->b(ZLjava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->b(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected h(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->q(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSetManagementRsaPublicKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected i(Lcom/dspread/xpos/Vpos;)V
    .locals 4

    .line 15
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x22

    const/16 v2, 0x80

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 18
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->p(Ljava/lang/String;)V

    return-void
.end method

.method protected i(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x33

    const/16 v2, 0x21

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "result ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-void
.end method

.method public j(Lcom/dspread/xpos/Vpos;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/dspread/xpos/x;->g(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    .line 36
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 37
    const-string p1, "4.0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "judgePlatform: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    if-ltz p1, :cond_0

    move v0, v3

    :cond_0
    return v0

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "check CmdId error!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected j(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x33

    const/16 v2, 0x21

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_4

    .line 12
    const-string p1, "2003AA998870"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    const-string p1, "2003AA998871"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    const-string p1, "2003AA998872"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, "2"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->k(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected k(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x33

    const/16 v2, 0x21

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_3

    .line 12
    const-string p1, "2003AA998870"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    const-string p1, "0"

    return-object p1

    .line 14
    :cond_1
    const-string p1, "2003AA998871"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    const-string p1, "1"

    return-object p1

    .line 16
    :cond_2
    const-string p1, "2003AA998872"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    const-string p1, "2"

    return-object p1

    :cond_3
    return-object v1
.end method

.method public k(Lcom/dspread/xpos/Vpos;)V
    .locals 5

    .line 33
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 34
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 35
    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 37
    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 39
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x20

    const/16 v2, 0x30

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 43
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    return-void
.end method

.method protected k(Lcom/dspread/xpos/Vpos;I)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->v(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->b()B

    move-result p2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->uc.length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/16 p1, 0x24

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->E(Z)V

    return-void
.end method

.method protected l(Lcom/dspread/xpos/Vpos;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const-string v1, "0204017F0000"

    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x6

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5199\u5165\u6d4b\u8bd5\u7ed3\u679cuc\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->g(Z)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->g(Z)V

    :goto_0
    return-void
.end method

.method protected l(Lcom/dspread/xpos/Vpos;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->w(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->F(Z)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->F(Z)V

    :goto_0
    return-void
.end method

.method protected m(Lcom/dspread/xpos/Vpos;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->x(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->G(Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->G(Z)V

    :goto_0
    return-void
.end method

.method public m(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 4

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 11
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x18

    const/16 v2, 0x10

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 14
    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/dspread/xpos/QPOSService;->onReturnSignature(ZLjava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/dspread/xpos/QPOSService;->onReturnSignature(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public n(Lcom/dspread/xpos/Vpos;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->y(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->x(Z)V

    return-void
.end method

.method protected n(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 4

    .line 4
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x33

    const/16 v2, 0x20

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 6
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "result ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->q(Z)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->q(Z)V

    :goto_0
    return-void
.end method

.method protected p(Lcom/dspread/xpos/Vpos;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->A(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->z(Z)V

    return-void
.end method

.method q(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 4

    .line 11
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 12
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 13
    const/16 v3, 0x8

    aput-byte v3, v0, v2

    .line 15
    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 17
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x21

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 21
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 22
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method protected r(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Z
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->d(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method protected u(Lcom/dspread/xpos/Vpos;I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x17

    const/16 v2, 0xb0

    invoke-direct {v0, v1, v2, p2}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "request pin result ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    if-lez v0, :cond_1

    .line 12
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_1

    .line 15
    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->c(Ljava/util/List;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->c(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method protected z(Lcom/dspread/xpos/Vpos;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/x;->o(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/dspread/xpos/x;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->J(Z)V

    return-void
.end method
