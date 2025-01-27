.class public Lcom/dspread/xpos/y;
.super Ljava/lang/Object;
.source "IccApdu.java"


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "01"

    iput-object v0, p0, Lcom/dspread/xpos/y;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method private a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    .line 350
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0xc0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 351
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 352
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/dspread/xpos/Vpos;)V
    .locals 11

    .line 367
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x16

    const/16 v2, 0x61

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 368
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 369
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    aput-byte v3, v1, v2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    .line 375
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 376
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    if-nez v3, :cond_1

    .line 378
    new-array v3, v0, [B

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    aput-byte v4, v3, v2

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 379
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    .line 382
    new-array v4, v0, [B

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    aput-byte v3, v4, v2

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 383
    invoke-virtual {p1, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v6, v3

    .line 386
    new-array v3, v0, [B

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    aput-byte v6, v3, v2

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 387
    invoke-virtual {p1, v7, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v7, v3

    .line 390
    new-array v3, v0, [B

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    aput-byte v7, v3, v2

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 391
    invoke-virtual {p1, v8, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v8, v3

    .line 394
    new-array v3, v0, [B

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v8}, Lcom/dspread/xpos/j;->a(I)B

    move-result v8

    aput-byte v8, v3, v2

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 395
    invoke-virtual {p1, v9, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v9, v3

    .line 398
    new-array v3, v0, [B

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {p1, v9}, Lcom/dspread/xpos/j;->a(I)B

    move-result v9

    aput-byte v9, v3, v2

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 399
    invoke-virtual {p1, v10, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v10, v3

    .line 402
    new-array v0, v0, [B

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {p1, v10}, Lcom/dspread/xpos/j;->a(I)B

    move-result v10

    aput-byte v10, v0, v2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 403
    invoke-virtual {p1, v3, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 406
    const-string v0, "aid"

    invoke-virtual {v1, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string/jumbo v0, "track1"

    invoke-virtual {v1, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string/jumbo v0, "track2"

    invoke-virtual {v1, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v0, "track3"

    invoke-virtual {v1, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v0, "pinblock"

    invoke-virtual {v1, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string/jumbo v0, "trackKsn"

    invoke-virtual {v1, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v0, "pinKsn"

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object p1, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->o(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-ne p1, v0, :cond_2

    .line 415
    iget-object p1, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->o(Ljava/util/Hashtable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 353
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x40

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 354
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 355
    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 356
    iget-object p2, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 363
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 364
    iget-object p2, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->H(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->H(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 416
    iput-object p3, p0, Lcom/dspread/xpos/y;->b:Ljava/lang/String;

    const/16 v0, 0x60

    const/16 v1, 0x16

    const/16 v2, 0x1e

    if-eqz p2, :cond_0

    .line 417
    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 419
    new-instance p3, Lcom/dspread/xpos/i;

    invoke-direct {p3, v1, v0, v2, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    goto :goto_0

    .line 421
    :cond_0
    new-instance p3, Lcom/dspread/xpos/i;

    invoke-direct {p3, v1, v0, v2}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 423
    :goto_0
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 424
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 426
    iget-object p2, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 431
    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    if-nez p3, :cond_2

    .line 433
    iget-object p1, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p2}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_2
    const/16 p2, 0xa

    .line 437
    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xb

    .line 439
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    const/16 v1, 0xc

    .line 440
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    const/16 v2, 0xd

    .line 441
    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 443
    iget-object v1, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, p3, p2, p1, v0}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/util/LinkedHashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 8
    array-length v6, v4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    goto/16 :goto_b

    .line 13
    :cond_0
    const/4 v6, 0x0

    aget-object v7, v4, v6

    if-eqz v7, :cond_18

    .line 14
    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    goto/16 :goto_a

    .line 18
    :cond_1
    const/4 v9, 0x1

    aget-object v9, v4, v9

    if-eqz v9, :cond_17

    .line 19
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xe

    if-eq v11, v12, :cond_2

    goto/16 :goto_9

    .line 24
    :cond_2
    aget-object v4, v4, v10

    if-eqz v4, :cond_16

    .line 25
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    rem-int/2addr v11, v10

    if-eqz v11, :cond_3

    goto/16 :goto_8

    .line 31
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "80"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 33
    const-string v13, "FE"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-direct {v0, v1, v4}, Lcom/dspread/xpos/y;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v4

    .line 36
    iget-object v7, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v7, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v7

    if-nez v7, :cond_4

    return-void

    .line 39
    :cond_4
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v2, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 41
    :cond_5
    const-string v13, "13"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "9000"

    const/16 v15, 0x10

    if-nez v13, :cond_11

    const-string v13, "14"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v16, v3

    goto/16 :goto_6

    .line 61
    :cond_6
    const-string v11, "15"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 63
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    rem-int/2addr v11, v15

    if-eqz v11, :cond_7

    goto/16 :goto_5

    .line 68
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0000000000000000"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    .line 75
    move v15, v6

    :goto_1
    if-lez v11, :cond_d

    .line 78
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">>>>>>>>>>>>>>>>>>>>>>>>>: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    const/16 v10, 0x100

    if-le v11, v10, :cond_8

    move v13, v10

    goto :goto_2

    :cond_8
    move v13, v11

    .line 85
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 86
    move-object/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "80FA"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v15, :cond_9

    .line 89
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "05"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 91
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "01"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "00"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int v10, v6, v13

    .line 95
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 96
    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v13, 0x2

    invoke-static {v4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    const-string v7, ">>>>ssss:  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>str:  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 99
    invoke-direct {v0, v1, v3}, Lcom/dspread/xpos/y;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v3

    .line 100
    iget-object v4, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v4

    if-nez v4, :cond_a

    return-void

    .line 103
    :cond_a
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->e()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 107
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v6, Lcom/dspread/xpos/QPOSService$Error;->APDU_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v6}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/LinkedHashMap;)V

    return-void

    :cond_b
    sub-int/2addr v11, v13

    add-int/lit8 v15, v15, 0x1

    if-nez v11, :cond_c

    goto :goto_4

    :cond_c
    move v6, v10

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    const/4 v10, 0x2

    goto/16 :goto_1

    .line 75
    :cond_d
    move-object/from16 v16, v3

    move-object v4, v8

    .line 121
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>res:  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    if-eqz v4, :cond_e

    .line 122
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x10

    if-ne v3, v6, :cond_e

    const/16 v3, 0x8

    .line 123
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 125
    :cond_e
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v3, Lcom/dspread/xpos/QPOSService$Error;->APDU_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    .line 126
    invoke-virtual {v2, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/LinkedHashMap;)V

    return-void

    .line 128
    :cond_f
    :goto_5
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 196
    :cond_10
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 41
    :cond_11
    move-object/from16 v16, v3

    .line 197
    :goto_6
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x10

    rem-int/2addr v3, v6

    if-eqz v3, :cond_12

    goto/16 :goto_7

    .line 202
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "80FA0000"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-direct {v0, v1, v3}, Lcom/dspread/xpos/y;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v3

    .line 204
    iget-object v4, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v4

    if-nez v4, :cond_13

    return-void

    .line 206
    :cond_13
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->e()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 210
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v6, Lcom/dspread/xpos/QPOSService$Error;->APDU_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v6}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/LinkedHashMap;)V

    return-void

    .line 215
    :cond_14
    invoke-virtual {v2, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 216
    :cond_15
    :goto_7
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 217
    :cond_16
    :goto_8
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 218
    :cond_17
    :goto_9
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 219
    :cond_18
    :goto_a
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 220
    :cond_19
    :goto_b
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 349
    :cond_1a
    iget-object v1, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0x70

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 170
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 171
    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 176
    :cond_0
    const/4 p2, 0x1

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    if-nez v0, :cond_1

    return-object p3

    .line 181
    :cond_1
    new-array p3, p2, [B

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    aput-byte v2, p3, v1

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    .line 182
    new-array p2, p2, [B

    const/4 p3, 0x3

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    aput-byte v2, p2, v1

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p2

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    goto :goto_0

    :goto_1
    add-int/lit16 p2, p2, 0xff

    .line 189
    :cond_3
    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 190
    const-string/jumbo p2, "sendApdu ----3"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-object p1
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v4, :cond_1c

    .line 8
    array-length v7, v4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    move-object v3, v6

    goto/16 :goto_b

    .line 13
    :cond_0
    const/4 v7, 0x0

    aget-object v8, v4, v7

    if-eqz v8, :cond_1b

    .line 14
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    move-object v3, v6

    goto/16 :goto_a

    .line 18
    :cond_1
    const/4 v10, 0x1

    aget-object v10, v4, v10

    if-eqz v10, :cond_19

    .line 19
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xe

    if-eq v12, v13, :cond_2

    move-object v3, v6

    goto/16 :goto_9

    .line 24
    :cond_2
    aget-object v4, v4, v11

    if-eqz v4, :cond_17

    .line 25
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    rem-int/2addr v12, v11

    if-eqz v12, :cond_3

    move-object v3, v6

    goto/16 :goto_8

    .line 31
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "80"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 33
    const-string v14, "FE"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-direct {v0, v1, v4}, Lcom/dspread/xpos/y;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v4

    .line 36
    iget-object v8, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v8, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v8

    if-nez v8, :cond_4

    return-object v6

    .line 39
    :cond_4
    invoke-virtual {v4}, Lcom/dspread/xpos/j;->e()I

    move-result v6

    invoke-virtual {v4, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v2, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 41
    :cond_5
    const-string v14, "13"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "9000"

    const/16 v7, 0x10

    if-nez v14, :cond_11

    const-string v14, "14"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v16, v3

    goto/16 :goto_6

    .line 61
    :cond_6
    const-string v12, "15"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 63
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    rem-int/2addr v12, v7

    if-eqz v12, :cond_7

    move-object v1, v6

    goto/16 :goto_5

    .line 68
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0000000000000000"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    .line 75
    move v11, v12

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_1
    if-lez v11, :cond_d

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ">>>>>>>>>>>>>>>>>>>>>>>>>: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    const/16 v6, 0x100

    if-le v11, v6, :cond_8

    move v14, v6

    goto :goto_2

    :cond_8
    move v14, v11

    .line 85
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 86
    move-object/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "80FA"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v12, :cond_9

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "05"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 91
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "01"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "00"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int v6, v7, v14

    .line 95
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 96
    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v14, 0x2

    invoke-static {v4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, ">>>>ssss:  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>str:  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 99
    invoke-direct {v0, v1, v3}, Lcom/dspread/xpos/y;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v3

    .line 100
    iget-object v4, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 103
    :cond_a
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->e()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v1, 0x0

    return-object v1

    :cond_b
    sub-int/2addr v11, v14

    add-int/lit8 v12, v12, 0x1

    if-nez v11, :cond_c

    goto :goto_4

    :cond_c
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v7, v18

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 75
    :cond_d
    move-object/from16 v16, v3

    move-object v4, v9

    .line 121
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>res:  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    if-eqz v4, :cond_e

    .line 122
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x10

    if-ne v3, v6, :cond_e

    const/16 v3, 0x8

    .line 123
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    return-object v1

    .line 63
    :cond_f
    move-object v1, v6

    .line 123
    :goto_5
    return-object v1

    :cond_10
    move-object v1, v6

    return-object v1

    .line 41
    :cond_11
    move-object/from16 v16, v3

    .line 124
    :goto_6
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x10

    rem-int/2addr v3, v6

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    goto :goto_7

    .line 129
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "80FA0000"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-direct {v0, v1, v3}, Lcom/dspread/xpos/y;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v3

    .line 131
    iget-object v4, v0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v1, 0x0

    return-object v1

    .line 133
    :cond_13
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->e()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x0

    return-object v3

    .line 142
    :cond_14
    invoke-virtual {v2, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 124
    :cond_15
    const/4 v3, 0x0

    .line 142
    :goto_7
    return-object v3

    .line 25
    :cond_16
    move-object v3, v6

    goto :goto_8

    .line 24
    :cond_17
    move-object v3, v6

    .line 142
    :goto_8
    return-object v3

    .line 19
    :cond_18
    move-object v3, v6

    goto :goto_9

    .line 18
    :cond_19
    move-object v3, v6

    .line 142
    :goto_9
    return-object v3

    .line 14
    :cond_1a
    move-object v3, v6

    goto :goto_a

    .line 13
    :cond_1b
    move-object v3, v6

    .line 142
    :goto_a
    return-object v3

    .line 6
    :cond_1c
    move-object v3, v6

    .line 142
    :goto_b
    return-object v3

    :cond_1d
    return-object v2
.end method

.method protected b(Lcom/dspread/xpos/Vpos;)V
    .locals 4

    .line 191
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x16

    const/16 v2, 0x80

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 192
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 193
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 194
    iget-object v0, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->v(Z)V

    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 6

    .line 143
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0x70

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 144
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 145
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 150
    :cond_0
    const/4 p2, 0x1

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object p1, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, v1}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;I)V

    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/dspread/xpos/y;->b:Ljava/lang/String;

    const-string v3, "03"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p1

    invoke-virtual {v1, p2, v0, p1}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;I)V

    goto :goto_2

    :cond_2
    nop

    .line 159
    new-array v2, p2, [B

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    aput-byte v3, v2, v1

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v2

    .line 160
    new-array v3, p2, [B

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    aput-byte v5, v3, v1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    const/16 v3, 0x11

    if-ne v0, v3, :cond_3

    add-int/lit16 v2, v2, 0xff

    :goto_0
    add-int/lit16 v1, v1, 0xff

    goto :goto_1

    :cond_3
    const/16 v3, 0x12

    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 167
    :cond_4
    :goto_1
    invoke-virtual {p1, v4, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/dspread/xpos/y;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2, p1, v2}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;I)V

    :goto_2
    return-void
.end method
