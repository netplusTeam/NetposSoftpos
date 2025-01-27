.class public Lcom/dspread/xpos/o0;
.super Ljava/lang/Object;
.source "UpdateFirmware.java"


# static fields
.field private static final e:I = 0x40


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;

.field private b:Lcom/dspread/xpos/s;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/o0;->d:Ljava/lang/String;

    .line 294
    iput-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    .line 295
    new-instance v0, Lcom/dspread/xpos/s;

    invoke-direct {v0, p1}, Lcom/dspread/xpos/s;-><init>(Lcom/dspread/xpos/QPOSService;)V

    iput-object v0, p0, Lcom/dspread/xpos/o0;->b:Lcom/dspread/xpos/s;

    return-void
.end method


# virtual methods
.method protected a(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;
    .locals 4

    .line 135
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x21

    const/16 v2, 0xf0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 136
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 137
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;I)Lcom/dspread/xpos/j;
    .locals 2

    .line 138
    nop

    .line 139
    sget-object v0, Lcom/dspread/xpos/o0$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-string v0, "06"

    packed-switch p2, :pswitch_data_0

    const-string p2, ""

    goto :goto_0

    .line 159
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 160
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 161
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "05"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 162
    :pswitch_3
    const-string p2, "04"

    goto :goto_0

    .line 163
    :pswitch_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "03"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 164
    :pswitch_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "02"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 165
    :pswitch_6
    const-string p2, "01"

    :goto_0
    const/16 p3, 0x17

    const/16 v0, 0xa

    if-nez p4, :cond_0

    .line 187
    new-instance p4, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0xa0

    invoke-direct {p4, p3, v1, v0, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 189
    new-instance p4, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0xa1

    invoke-direct {p4, p3, v1, v0, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    goto :goto_1

    .line 187
    :cond_1
    const/4 p4, 0x0

    .line 192
    :goto_1
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 193
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/dspread/xpos/o0;->e(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 195
    iget-object p3, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_3

    .line 201
    sget-object p1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->AttainList:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-ne p2, p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    return-object p1

    .line 203
    :cond_1
    sget-object p1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-ne p2, p1, :cond_2

    .line 204
    iget-object p1, p0, Lcom/dspread/xpos/o0;->d:Ljava/lang/String;

    return-object p1

    .line 206
    :cond_2
    const-string/jumbo p1, "true"

    return-object p1

    .line 209
    :cond_3
    const-string p1, "false"

    return-object p1
.end method

.method protected a(Lcom/dspread/xpos/Vpos;[BILjava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "[BI",
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

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x11

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1, p4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result p2

    const-string p3, "code"

    if-nez p2, :cond_0

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p4, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteToInt(B)I

    move-result p3

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const-string v2, "content"

    if-ge p3, v1, :cond_2

    .line 15
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteToInt(B)I

    move-result p2

    .line 16
    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, p3

    .line 18
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    if-ge p2, p3, :cond_1

    add-int/lit8 p3, p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/j;->a(I)B

    move-result p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteToInt(B)I

    move-result p2

    .line 20
    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 21
    const-string p2, "ksn"

    invoke-virtual {p4, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_1
    invoke-virtual {p4, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p4, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p4
.end method

.method public a(Lcom/dspread/xpos/Vpos;I)V
    .locals 4

    .line 650
    new-instance v0, Lcom/dspread/xpos/i;

    const-string v1, "00000010"

    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0xff

    invoke-direct {v0, v2, v3, p2, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 652
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 653
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 654
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 659
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 660
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 662
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 664
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    .line 666
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 667
    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 668
    const-string/jumbo v0, "transportKey"

    invoke-virtual {p2, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-string v0, "checkValue"

    invoke-virtual {p2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->onRequestGenerateTransportKey(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 672
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->onRequestGenerateTransportKey(Ljava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/dspread/xpos/Vpos;IIILjava/lang/String;I)V
    .locals 17

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    invoke-static/range {p5 .. p5}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 403
    array-length v6, v5

    .line 405
    const-string v8, ""

    const/4 v9, 0x0

    :goto_0
    sub-int v10, v6, v9

    .line 406
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v10

    const-string/jumbo v12, "~"

    const-string v13, "-----------------------------------"

    const-string v14, "---------send:"

    const-string v15, "0000"

    const/16 v7, 0x140

    if-le v11, v7, :cond_3

    .line 407
    new-array v10, v7, [B

    .line 408
    const/4 v11, 0x0

    invoke-static {v5, v9, v10, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v16, v6

    const/4 v15, 0x1

    new-array v6, v15, [B

    int-to-byte v15, v2

    aput-byte v15, v6, v11

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 411
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v15, v7, [B

    int-to-byte v7, v3

    aput-byte v7, v15, v11

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [B

    aput-byte v11, v7, v11

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 413
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    const/16 v11, 0x140

    add-int/2addr v7, v11

    invoke-static {v7}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 414
    new-instance v7, Lcom/dspread/xpos/i;

    invoke-static {v6}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v10, 0x13

    const/16 v11, 0x11

    invoke-direct {v7, v11, v10, v4, v8}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 416
    invoke-virtual {v1, v7}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 417
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v7

    .line 418
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 419
    iget-object v6, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v6, v7}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-virtual {v7}, Lcom/dspread/xpos/j;->f()B

    move-result v6

    if-nez v6, :cond_1

    .line 425
    const/16 v6, 0x8

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/lit16 v9, v9, 0x140

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v9, -0x40

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-------------result:===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move/from16 v6, v16

    goto/16 :goto_0

    .line 429
    :cond_1
    invoke-virtual {v7}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    const-string v2, "-------------indexindexindexindex================================="

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 430
    iget-object v1, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/dspread/xpos/QPOSService;->j(Ljava/lang/String;)V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-void

    .line 434
    :cond_2
    const/4 v3, 0x0

    iget-object v1, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v3}, Lcom/dspread/xpos/QPOSService;->j(Ljava/lang/String;)V

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-void

    .line 439
    :cond_3
    move/from16 v16, v6

    new-array v6, v10, [B

    .line 440
    const/4 v7, 0x0

    invoke-static {v5, v9, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x1

    new-array v15, v11, [B

    int-to-byte v2, v2

    aput-byte v2, v15, v7

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v5, v11, [B

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v11, [B

    aput-byte v11, v3, v7

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v10, v3

    invoke-static {v10}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    new-instance v3, Lcom/dspread/xpos/i;

    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v6, 0x13

    const/16 v7, 0x11

    invoke-direct {v3, v7, v6, v4, v5}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 448
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 449
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 451
    iget-object v2, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 455
    :cond_4
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    if-nez v2, :cond_5

    .line 456
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v6, v9, v16

    sub-int/2addr v6, v9

    const/4 v3, 0x1

    sub-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "------result:===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 458
    iget-object v2, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->j(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :cond_5
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 460
    iget-object v1, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->j(Ljava/lang/String;)V

    goto :goto_1

    .line 462
    :cond_6
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->j(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 210
    const-string p3, "9F1B040000000000"

    goto :goto_0

    .line 212
    :cond_0
    const-string p3, "9F1B041000000000"

    .line 214
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dspread/xpos/o0;->e(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 215
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->C(Z)V

    goto :goto_1

    .line 222
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->C(Z)V

    :goto_1
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 13

    .line 51
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 52
    array-length v0, p2

    .line 55
    array-length v1, p2

    const/16 v2, 0x40

    div-int/2addr v1, v2

    .line 58
    const/16 v3, 0x42

    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :cond_0
    const/16 v7, 0x3c

    const/4 v8, 0x1

    if-lez v0, :cond_6

    .line 60
    div-int/lit8 v9, v5, 0x10

    .line 61
    invoke-static {v9}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v10

    array-length v10, v10

    if-le v10, v8, :cond_1

    .line 62
    invoke-static {v9}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v10

    aget-byte v10, v10, v4

    aput-byte v10, v3, v4

    .line 63
    invoke-static {v9}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v10

    aget-byte v10, v10, v8

    aput-byte v10, v3, v8

    goto :goto_0

    :cond_1
    nop

    .line 65
    aput-byte v4, v3, v4

    .line 66
    invoke-static {v9}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v10

    aget-byte v10, v10, v4

    aput-byte v10, v3, v8

    :goto_0
    move v10, v4

    :goto_1
    if-ge v10, v2, :cond_5

    if-ne v6, v1, :cond_4

    .line 71
    array-length v3, p2

    mul-int/lit8 v10, v6, 0x40

    sub-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    .line 72
    invoke-static {v9}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v11

    array-length v11, v11

    if-le v11, v8, :cond_2

    .line 73
    invoke-static {v9}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v11

    aget-byte v11, v11, v4

    aput-byte v11, v3, v4

    .line 74
    invoke-static {v9}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v9

    aget-byte v9, v9, v8

    aput-byte v9, v3, v8

    goto :goto_2

    :cond_2
    nop

    .line 76
    aput-byte v4, v3, v4

    .line 77
    invoke-static {v9}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v9

    aget-byte v9, v9, v4

    aput-byte v9, v3, v8

    :goto_2
    move v9, v4

    .line 79
    :goto_3
    array-length v11, p2

    sub-int/2addr v11, v10

    if-ge v9, v11, :cond_3

    add-int/lit8 v11, v9, 0x2

    .line 80
    aget-byte v12, p2, v5

    aput-byte v12, v3, v11

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v10, 0x2

    .line 87
    aget-byte v12, p2, v5

    aput-byte v12, v3, v11

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/2addr v6, v8

    .line 93
    new-instance v8, Lcom/dspread/xpos/i;

    const/16 v9, 0x20

    invoke-direct {v8, v2, v9, v7, v3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 95
    invoke-virtual {p1, v8}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 96
    invoke-virtual {p1, v7}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v7

    .line 97
    iget-object v8, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v8, v7}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 103
    :cond_6
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x21

    invoke-direct {p2, v2, v0, v7}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 104
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 106
    invoke-virtual {p1, v7}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 111
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=======uc.result()="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_8

    .line 113
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v8}, Lcom/dspread/xpos/QPOSService;->p(Z)V

    goto :goto_5

    .line 115
    :cond_8
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4}, Lcom/dspread/xpos/QPOSService;->p(Z)V

    :goto_5
    return-void
.end method

.method public a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 463
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x17

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 465
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 466
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 467
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    .line 472
    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 473
    const-string v0, "0E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->d(Z)V

    return-void

    .line 477
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->d(Z)V

    goto :goto_0

    .line 478
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_3

    .line 479
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->d(Z)V

    goto :goto_0

    .line 481
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->d(Z)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;II)V
    .locals 6

    .line 621
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 622
    array-length v0, p2

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    int-to-byte p4, p4

    .line 624
    const/4 v2, 0x0

    aput-byte p4, v0, v2

    .line 625
    array-length p4, p2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    .line 626
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 628
    const-string v5, "0"

    invoke-virtual {v5, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 630
    :cond_0
    invoke-static {p4}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p4

    .line 631
    array-length v3, p4

    const/4 v4, 0x1

    invoke-static {p4, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    array-length p4, p2

    invoke-static {p2, v2, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 p4, 0x10

    const/16 v1, 0xf5

    invoke-direct {p2, p4, v1, p3, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 637
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 638
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 639
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 643
    :cond_1
    invoke-virtual {p1, v2, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p2

    .line 644
    invoke-virtual {p1, v4, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 645
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "key type = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_2

    .line 647
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    goto :goto_1

    .line 649
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    :goto_1
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;IILcom/dspread/xpos/QPOSService$TR31KeyType;)V
    .locals 5

    .line 482
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 483
    array-length v0, p2

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p5}, Lcom/dspread/xpos/QPOSService$TR31KeyType;->getmTR31KeyType()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 487
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    int-to-byte p4, p4

    .line 488
    aput-byte p4, v0, v2

    goto :goto_0

    :cond_0
    int-to-byte p4, p4

    .line 490
    aput-byte p4, v0, v2

    :goto_0
    nop

    .line 492
    array-length p4, p2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    .line 493
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    rsub-int/lit8 p5, p5, 0x4

    move v3, v2

    :goto_1
    if-ge v3, p5, :cond_1

    .line 495
    const-string v4, "0"

    invoke-virtual {v4, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 497
    :cond_1
    invoke-static {p4}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p4

    .line 498
    array-length p5, p4

    const/4 v3, 0x1

    invoke-static {p4, v2, v0, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    array-length p4, p2

    invoke-static {p2, v2, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 p4, 0x10

    const/16 p5, 0xf5

    invoke-direct {p2, p4, p5, p3, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 504
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 505
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 506
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 513
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_3

    .line 514
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    goto :goto_2

    .line 516
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    :goto_2
    return-void
.end method

.method public a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 372
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x21

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p4, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 374
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 375
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 376
    iget-object v0, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 381
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 383
    new-instance v2, Lcom/dspread/xpos/i;

    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v2, v1, v4, p4, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 385
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 386
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 387
    iget-object p3, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 391
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_2

    .line 392
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-ne p1, v3, :cond_3

    .line 394
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4, v0}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 396
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4, v0}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 398
    :cond_4
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-ne p1, v3, :cond_5

    .line 399
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4, v0}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 401
    :cond_5
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4, v0}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 517
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 518
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    int-to-byte p5, p5

    .line 520
    const/4 v2, 0x0

    aput-byte p5, v0, v2

    .line 521
    array-length p5, p3

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p5

    .line 522
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 524
    const-string v5, "0"

    invoke-virtual {v5, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 526
    :cond_0
    invoke-static {p5}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p5

    .line 527
    array-length v3, p5

    const/4 v4, 0x1

    invoke-static {p5, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    array-length p5, p3

    invoke-static {p3, v2, v0, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 p5, 0x10

    const/16 v1, 0xf5

    invoke-direct {p3, p5, v1, p4, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 533
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 534
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p3

    .line 535
    iget-object p5, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p5, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p5

    if-nez p5, :cond_1

    return-void

    .line 542
    :cond_1
    invoke-virtual {p3}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-eqz p3, :cond_2

    .line 543
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    return-void

    .line 547
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-static {p3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    .line 548
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "00000007"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 549
    new-instance p3, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 p5, 0x11

    const/16 v0, 0x60

    invoke-direct {p3, p5, v0, p4, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 550
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 551
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 552
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 559
    :cond_3
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_4

    .line 560
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    goto :goto_1

    .line 562
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    :goto_1
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;IILcom/dspread/xpos/QPOSService$TR31KeyType;)V
    .locals 6

    .line 563
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 564
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p6}, Lcom/dspread/xpos/QPOSService$TR31KeyType;->getmTR31KeyType()I

    move-result v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 567
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    int-to-byte p5, p5

    .line 568
    const/4 v2, 0x0

    aput-byte p5, v0, v2

    .line 569
    array-length p5, p3

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p5

    .line 570
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 572
    const-string v5, "0"

    invoke-virtual {v5, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 574
    :cond_0
    invoke-static {p5}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p5

    .line 575
    array-length v3, p5

    const/4 v4, 0x1

    invoke-static {p5, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    array-length p5, p3

    invoke-static {p3, v2, v0, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 p5, 0x10

    const/16 v3, 0xf5

    invoke-direct {p3, p5, v3, p4, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 581
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 582
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p3

    .line 583
    iget-object p5, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p5, p3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p5

    if-nez p5, :cond_1

    return-void

    .line 590
    :cond_1
    invoke-virtual {p3}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-eqz p3, :cond_2

    .line 591
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    return-void

    .line 594
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p5, 0x2

    div-int/2addr p3, p5

    invoke-static {p3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    .line 596
    invoke-virtual {p6}, Lcom/dspread/xpos/QPOSService$TR31KeyType;->getmTR31KeyType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 598
    const-string p5, "00000003"

    goto :goto_1

    .line 599
    :cond_3
    invoke-virtual {p6}, Lcom/dspread/xpos/QPOSService$TR31KeyType;->getmTR31KeyType()I

    move-result v0

    if-ne v0, p5, :cond_4

    .line 601
    const-string p5, "00000004"

    goto :goto_1

    .line 602
    :cond_4
    invoke-virtual {p6}, Lcom/dspread/xpos/QPOSService$TR31KeyType;->getmTR31KeyType()I

    .line 604
    const-string p5, "00000007"

    .line 606
    :goto_1
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 607
    new-instance p3, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 p5, 0x11

    const/16 p6, 0x60

    invoke-direct {p3, p5, p6, p4, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 608
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 609
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 610
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 617
    :cond_5
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_6

    .line 618
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    goto :goto_2

    .line 620
    :cond_6
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->onReturnUpdateKeyByTR_31Result(Z)V

    :goto_2
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p4, :cond_0

    .line 223
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p10, :cond_0

    invoke-virtual {p10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    .line 226
    :cond_1
    const-string v0, "0000000000000000"

    .line 227
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ge v1, v3, :cond_2

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    rsub-int/lit8 p5, p5, 0x10

    invoke-virtual {v0, v2, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 230
    :cond_2
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p8

    rsub-int/lit8 p8, p8, 0x10

    invoke-virtual {v0, v2, p8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    .line 233
    :cond_3
    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p11

    rsub-int/lit8 p11, p11, 0x10

    invoke-virtual {v0, v2, p11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p11

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p11

    invoke-virtual {p11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p11

    .line 236
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 237
    new-instance p3, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 p4, 0xf2

    const/16 p5, 0x1e

    invoke-direct {p3, v3, p4, p5, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 239
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 240
    invoke-virtual {p1, p5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 241
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 246
    :cond_5
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_6

    .line 247
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->D(Z)V

    goto :goto_0

    .line 249
    :cond_6
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->D(Z)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;ZLcom/dspread/xpos/QPOSService$KeyCryptMode;Lcom/dspread/xpos/QPOSService$KeyUsage;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 250
    nop

    .line 251
    sget-object v0, Lcom/dspread/xpos/QPOSService$KeyCryptMode;->AES:Lcom/dspread/xpos/QPOSService$KeyCryptMode;

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v0, :cond_0

    .line 252
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 254
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-eqz p2, :cond_1

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 259
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p5, :cond_2

    .line 262
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 264
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 266
    :goto_2
    sget-object p3, Lcom/dspread/xpos/QPOSService$KeyUsage;->AES_CMAC:Lcom/dspread/xpos/QPOSService$KeyUsage;

    const/4 p5, 0x2

    if-ne p4, p3, :cond_3

    .line 267
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 268
    :cond_3
    sget-object p3, Lcom/dspread/xpos/QPOSService$KeyUsage;->DES_CMAC:Lcom/dspread/xpos/QPOSService$KeyUsage;

    if-ne p4, p3, :cond_4

    .line 269
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 271
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 273
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "00000000"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 274
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p3

    div-int/2addr p3, p5

    invoke-static {p3}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 275
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 277
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 278
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p3

    div-int/2addr p3, p5

    invoke-static {p3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 279
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 280
    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    if-eqz p4, :cond_5

    .line 281
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result p3

    div-int/2addr p3, p5

    invoke-static {p3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 282
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 284
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 287
    :goto_4
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 288
    array-length p3, p2

    const/16 p4, 0x400

    if-le p3, p4, :cond_6

    .line 289
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    .line 292
    :cond_6
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 p4, 0x40

    const/16 p5, 0x20

    const/16 p6, 0x14

    invoke-direct {p3, p4, p5, p6, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 293
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 295
    invoke-virtual {p1, p6}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 296
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 300
    :cond_7
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_8

    .line 301
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->n(Z)V

    goto :goto_5

    .line 303
    :cond_8
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/QPOSService;->n(Z)V

    :goto_5
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;[BI)V
    .locals 2

    .line 26
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x11

    invoke-direct {v0, v1, v1, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 28
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 29
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->v(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;[BIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 35
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    new-instance v3, Lcom/dspread/xpos/i;

    const/16 v4, 0x10

    const/16 v5, 0xf0

    move-object v6, p2

    invoke-direct {v3, v4, v5, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 37
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 38
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 39
    iget-object v2, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    if-nez v2, :cond_1

    .line 44
    const-string/jumbo v1, "work++++++++++++++++++++++UPDATE_SUCCESS"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 45
    iget-object v1, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SUCCESS:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    .line 46
    iget-object v3, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/16 v10, 0x1e

    const-string v9, "20170101"

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-virtual/range {v3 .. v10}, Lcom/dspread/xpos/QPOSService;->getPin(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 49
    const-string/jumbo v1, "work++++++++++++++++++++++UPDATE_FAIL"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 50
    iget-object v1, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;[BZ)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1, p2, p3}, Lcom/dspread/xpos/o0;->b(Lcom/dspread/xpos/Vpos;[BZ)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/o0;->b(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 124
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "=======uc.result()="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_2

    .line 126
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SUCCESS:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    .line 128
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    .line 130
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_PACKET_VEFIRY_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 132
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_PACKET_LEN_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 134
    :cond_5
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/dspread/xpos/Vpos;[B[BI)V
    .locals 4

    .line 338
    const-string/jumbo v0, "start........workKey........"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x10

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2, p4, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 341
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 342
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 343
    iget-object v0, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_4

    .line 349
    const-string/jumbo v0, "success........workKey........"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "start........transferKey........"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v3, 0xf1

    invoke-direct {v0, v1, v3, p4, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 353
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 354
    invoke-virtual {p1, p4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 355
    iget-object p3, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 360
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_2

    .line 361
    const-string/jumbo p1, "success........transferKey........"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SUCCESS:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-ne p1, v2, :cond_3

    .line 364
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 366
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-ne p1, v2, :cond_5

    .line 369
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 371
    :cond_5
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;[B)Z
    .locals 8

    .line 304
    array-length v0, p2

    .line 307
    array-length v1, p2

    .line 310
    const/16 v2, 0x82

    new-array v2, v2, [B

    .line 312
    const/16 v3, 0x80

    rem-int/2addr v1, v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return v4

    .line 312
    :cond_0
    move v1, v4

    .line 313
    :cond_1
    const/4 v5, 0x1

    if-lez v0, :cond_4

    .line 318
    div-int/lit8 v6, v1, 0x10

    .line 319
    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v7

    array-length v7, v7

    if-le v7, v5, :cond_2

    .line 320
    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v7

    aget-byte v7, v7, v4

    aput-byte v7, v2, v4

    .line 321
    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v6

    aget-byte v6, v6, v5

    aput-byte v6, v2, v5

    goto :goto_0

    :cond_2
    nop

    .line 323
    aput-byte v4, v2, v4

    .line 324
    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v6

    aget-byte v6, v6, v4

    aput-byte v6, v2, v5

    :goto_0
    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    add-int/lit8 v6, v5, 0x2

    .line 328
    aget-byte v7, p2, v1

    aput-byte v7, v2, v6

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 333
    :cond_3
    new-instance v5, Lcom/dspread/xpos/i;

    const/16 v6, 0x40

    const/16 v7, 0x1e

    invoke-direct {v5, v6, v4, v7, v2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 335
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/16 v5, 0xa

    .line 336
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v5

    .line 337
    iget-object v6, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v6, v5}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_4
    return v5
.end method

.method b(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;
    .locals 4

    .line 22
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x40

    const/16 v2, 0x10

    const/16 v3, 0xb4

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 23
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 25
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/dspread/xpos/Vpos;IIILjava/lang/String;I)Ljava/lang/String;
    .locals 18

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    invoke-static/range {p5 .. p5}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 178
    array-length v6, v5

    .line 180
    const-string v8, ""

    const/4 v9, 0x0

    :goto_0
    sub-int v10, v6, v9

    .line 181
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v10

    const-string/jumbo v12, "~"

    const-string v13, "-----------------------------------"

    const-string v14, "---------send:"

    const-string v15, "0000"

    const/16 v16, 0x0

    const/16 v7, 0x140

    if-le v11, v7, :cond_3

    .line 182
    new-array v10, v7, [B

    .line 183
    const/4 v11, 0x0

    invoke-static {v5, v9, v10, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v17, v6

    const/4 v15, 0x1

    new-array v6, v15, [B

    int-to-byte v15, v2

    aput-byte v15, v6, v11

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v15, v7, [B

    int-to-byte v7, v3

    aput-byte v7, v15, v11

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [B

    move/from16 v15, p4

    int-to-byte v3, v15

    aput-byte v3, v7, v11

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/16 v7, 0x140

    add-int/2addr v7, v6

    invoke-static {v7}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    new-instance v6, Lcom/dspread/xpos/i;

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    const/16 v8, 0x13

    const/16 v10, 0x11

    invoke-direct {v6, v10, v8, v4, v7}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 191
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 192
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v6

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 194
    iget-object v3, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v6}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v16

    .line 198
    :cond_0
    invoke-virtual {v6}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    const/16 v7, 0x8

    if-nez v3, :cond_1

    .line 200
    const/4 v3, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/lit16 v9, v9, 0x140

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v9, -0x40

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v6, 0x3f

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-------------result:===="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move/from16 v3, p3

    move/from16 v6, v17

    goto/16 :goto_0

    .line 204
    :cond_1
    invoke-virtual {v6}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    const-string v2, "-------------indexindexindexindex================================="

    if-ne v1, v7, :cond_2

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-object v16

    .line 210
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-object v16

    .line 214
    :cond_3
    move/from16 v17, v6

    new-array v3, v10, [B

    .line 215
    const/4 v6, 0x0

    invoke-static {v5, v9, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    new-array v11, v7, [B

    int-to-byte v2, v2

    aput-byte v2, v11, v6

    invoke-static {v11}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v5, v7, [B

    move/from16 v11, p3

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v5, v7, [B

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v10, v5

    invoke-static {v10}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    new-instance v3, Lcom/dspread/xpos/i;

    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v6, 0x13

    const/16 v7, 0x11

    invoke-direct {v3, v7, v6, v4, v5}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 223
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 224
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 226
    iget-object v2, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v16

    .line 230
    :cond_4
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    if-nez v2, :cond_5

    .line 231
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v6, v9, v17

    sub-int/2addr v6, v9

    const/4 v3, 0x1

    sub-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "------result:===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object v1

    .line 234
    :cond_5
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    return-object v16
.end method

.method protected b(Lcom/dspread/xpos/Vpos;[BILjava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "[BI",
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

    .line 10
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x11

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 13
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1, p4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result p2

    const-string p3, "code"

    if-nez p2, :cond_0

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p4, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 20
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p2, "content"

    invoke-virtual {p4, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4
.end method

.method protected b(Lcom/dspread/xpos/Vpos;I)V
    .locals 4

    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    :cond_1
    :goto_0
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x21

    const/16 v2, 0xa0

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 106
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/16 p2, 0x1e

    .line 107
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rea==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->F(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->F(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)V
    .locals 3

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/dspread/xpos/o0;->e(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 74
    iget-object p3, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_4

    .line 80
    sget-object p1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->AttainList:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-ne p2, p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p2, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->D(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    sget-object p1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-ne p2, p1, :cond_2

    .line 83
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p2, p0, Lcom/dspread/xpos/o0;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->D(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    sget-object p1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getCustomEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const/4 p3, 0x1

    if-ne p2, p1, :cond_3

    .line 85
    iget-object p1, p0, Lcom/dspread/xpos/o0;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/dspread/xpos/utils/h;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 86
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string v0, "9F16"

    const-string v1, "9F4E"

    const-string v2, "9F01"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {p1, v0}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v0

    iget-object v0, v0, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    const-string v2, "merchantID"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    aget-object p3, v1, p3

    invoke-static {p1, p3}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object p3

    iget-object p3, p3, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    const-string v0, "merchantName"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x2

    .line 90
    aget-object p3, v1, p3

    invoke-static {p1, p3}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object p1

    iget-object p1, p1, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    const-string p3, "acquirerID"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->C(Z)V

    goto :goto_0

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->C(Z)V

    :goto_0
    return-void
.end method

.method public b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 235
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    const/16 v2, 0xc0

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 237
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 238
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 239
    :goto_0
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->b()B

    move-result p3

    const/16 v0, 0x41

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 240
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 p3, 0x22

    const/16 v0, 0xa

    invoke-direct {p2, p3, v1, v1, v0}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 241
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 242
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 248
    :cond_1
    const-string p1, "finished the custom display"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 251
    invoke-virtual {p2, p1}, Lcom/dspread/xpos/j;->a(I)B

    move-result p1

    const/4 p3, 0x3

    .line 252
    invoke-virtual {p2, p3, p1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 255
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p3, p2, Lcom/dspread/xpos/QPOSService;->initiator:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1, p3}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p2, p1, Lcom/dspread/xpos/QPOSService;->initiator:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, v1, p3, p2}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 120
    const/16 v11, 0x10

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, "0000000000000000"

    if-eqz v2, :cond_1

    .line 121
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 122
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v15, v11, :cond_0

    .line 123
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x10

    invoke-virtual {v14, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    .line 126
    div-int/lit8 v15, v15, 0x2

    goto :goto_0

    .line 128
    :cond_1
    nop

    .line 129
    nop

    .line 130
    move v15, v12

    move-object v2, v13

    move-object v3, v2

    move-object v4, v3

    .line 132
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    new-array v0, v12, [B

    int-to-byte v15, v15

    const/16 v17, 0x0

    aput-byte v15, v0, v17

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_3

    .line 135
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v11, v4, 0x10

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 139
    :cond_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 140
    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 142
    :cond_3
    nop

    .line 143
    nop

    .line 144
    move-object v5, v13

    move-object v6, v5

    move-object v7, v6

    const/4 v2, 0x0

    .line 146
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v12, [B

    int-to-byte v2, v2

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_5

    .line 149
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v9, :cond_5

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v10, :cond_5

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 150
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v11, v4, 0x10

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 153
    :cond_4
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 154
    div-int/lit8 v2, v2, 0x2

    move-object v13, v10

    goto :goto_2

    .line 156
    :cond_5
    nop

    .line 157
    nop

    .line 158
    move-object v8, v13

    move-object v9, v8

    const/4 v2, 0x0

    .line 161
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v12, [B

    int-to-byte v2, v2

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v2, Lcom/dspread/xpos/i;

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v3, 0xf2

    const/16 v4, 0x1e

    const/16 v5, 0x10

    invoke-direct {v2, v5, v3, v4, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 166
    invoke-virtual {v1, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 167
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 168
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_6

    return-void

    .line 173
    :cond_6
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-nez v0, :cond_7

    .line 174
    iget-object v0, v1, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v12}, Lcom/dspread/xpos/QPOSService;->D(Z)V

    goto :goto_3

    .line 176
    :cond_7
    iget-object v0, v1, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->D(Z)V

    :goto_3
    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;[BI)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x11

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->v(Ljava/lang/String;)V

    return-void
.end method

.method b(Lcom/dspread/xpos/Vpos;[BZ)Z
    .locals 10

    .line 26
    array-length v0, p2

    .line 29
    array-length v1, p2

    .line 31
    const/16 v2, 0x42

    new-array v2, v2, [B

    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 33
    rem-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_0

    .line 34
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID_FORMAT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return v3

    :cond_0
    move v4, v3

    :cond_1
    const/4 v5, 0x1

    if-lez v0, :cond_6

    .line 40
    div-int/lit8 v6, v4, 0x10

    .line 41
    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v7

    array-length v7, v7

    if-le v7, v5, :cond_2

    .line 42
    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v7

    aget-byte v7, v7, v3

    aput-byte v7, v2, v3

    .line 43
    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v6

    aget-byte v6, v6, v5

    aput-byte v6, v2, v5

    goto :goto_0

    :cond_2
    nop

    .line 45
    aput-byte v3, v2, v3

    .line 46
    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v6

    aget-byte v6, v6, v3

    aput-byte v6, v2, v5

    :goto_0
    const/16 v5, 0x40

    if-lt v0, v5, :cond_3

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_5

    add-int/lit8 v7, v6, 0x2

    .line 50
    aget-byte v8, p2, v4

    aput-byte v8, v2, v7

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_5

    sub-int v6, v1, v4

    const/4 v7, 0x2

    add-int/2addr v6, v7

    .line 57
    new-array v6, v6, [B

    .line 58
    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v0

    move v2, v3

    :goto_2
    if-ge v2, v0, :cond_4

    add-int/lit8 v8, v2, 0x2

    .line 61
    aget-byte v9, p2, v4

    aput-byte v9, v6, v8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v6

    move v0, v7

    .line 68
    :cond_5
    new-instance v6, Lcom/dspread/xpos/i;

    const/16 v7, 0xa

    invoke-direct {v6, v5, v3, v7, v2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 70
    invoke-virtual {p1, v6}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 71
    invoke-virtual {p1, v7}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v5

    .line 72
    iget-object v6, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v6, v5}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v5

    if-nez v5, :cond_1

    return v3

    :cond_6
    return v5
.end method

.method protected c(Lcom/dspread/xpos/Vpos;)V
    .locals 4

    .line 72
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x40

    const/16 v2, 0x30

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 73
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 75
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->z(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->z(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/dspread/xpos/Vpos;I)V
    .locals 7

    .line 178
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x10

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2, p2}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 180
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 181
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 182
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 186
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 189
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 190
    invoke-virtual {p1, v1, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v2

    .line 191
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, 0x1

    .line 193
    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v2

    .line 194
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v2

    add-int/lit8 v2, v4, 0x1

    .line 196
    invoke-virtual {p1, v4, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    .line 197
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 198
    const-string p1, "formatID"

    const-string v1, "FF"

    invoke-virtual {p2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "type"

    invoke-virtual {p2, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string p1, "encTrack1"

    invoke-virtual {p2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string p1, "encTrack2"

    invoke-virtual {p2, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string p1, "encTrack3"

    invoke-virtual {p2, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 206
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->BAD_SWIPE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->BAD_SWIPE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method protected c(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)V
    .locals 1

    if-nez p3, :cond_0

    .line 86
    sget-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Clear:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->AttainList:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-eq p2, v0, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 88
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/dspread/xpos/o0;->f(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 89
    iget-object p3, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_5

    .line 95
    sget-object p1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->AttainList:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-ne p2, p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p2, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->D(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    sget-object p1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-ne p2, p1, :cond_4

    .line 98
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object p2, p0, Lcom/dspread/xpos/o0;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->D(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->B(Z)V

    goto :goto_0

    .line 103
    :cond_5
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->B(Z)V

    :goto_0
    return-void
.end method

.method public c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 163
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 166
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 172
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 173
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    const-string v0, "00"

    if-ne p1, p2, :cond_2

    .line 175
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3, v0}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3, v0}, Lcom/dspread/xpos/QPOSService;->a(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    const/4 v11, 0x1

    if-eqz p2, :cond_1

    .line 106
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v11, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p2

    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    const-string v12, "00"

    :goto_1
    const-string v14, ""

    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 113
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    .line 114
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    .line 115
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v18, v16

    move/from16 v19, v17

    goto :goto_2

    .line 117
    :cond_2
    nop

    .line 118
    nop

    .line 119
    move-object v2, v14

    move-object v3, v2

    move-object v4, v3

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 121
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-array v0, v11, [B

    int-to-byte v15, v15

    const/16 v16, 0x0

    aput-byte v15, v0, v16

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v11, [B

    move/from16 v13, v18

    int-to-byte v13, v13

    aput-byte v13, v2, v16

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v11, [B

    move/from16 v13, v19

    int-to-byte v3, v13

    aput-byte v3, v2, v16

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_3

    .line 126
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 128
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 129
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 131
    :cond_3
    nop

    .line 132
    nop

    .line 133
    move-object v5, v14

    move-object v6, v5

    move-object v7, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 135
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v13, v11, [B

    int-to-byte v2, v2

    const/4 v15, 0x0

    aput-byte v2, v13, v15

    invoke-static {v13}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v11, [B

    int-to-byte v3, v3

    aput-byte v3, v2, v15

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v11, [B

    int-to-byte v3, v4

    aput-byte v3, v2, v15

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_4

    .line 140
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v9, :cond_4

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v10, :cond_4

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 141
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 142
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 143
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 145
    :cond_4
    nop

    .line 146
    nop

    .line 147
    move-object v8, v14

    move-object v9, v8

    move-object v10, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 149
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v5, v11, [B

    int-to-byte v2, v2

    const/4 v6, 0x0

    aput-byte v2, v5, v6

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v11, [B

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v11, [B

    int-to-byte v3, v4

    aput-byte v3, v2, v6

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "010000000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v2, Lcom/dspread/xpos/i;

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v3, 0x10

    const/16 v4, 0xff

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 153
    invoke-virtual {v1, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 154
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 155
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    .line 159
    :cond_5
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    if-nez v0, :cond_6

    .line 160
    iget-object v0, v1, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v11}, Lcom/dspread/xpos/QPOSService;->D(Z)V

    goto :goto_5

    .line 162
    :cond_6
    iget-object v0, v1, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->D(Z)V

    :goto_5
    return-void
.end method

.method protected c(Lcom/dspread/xpos/Vpos;[BI)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doDoubleMacSha = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    array-length v4, v2

    .line 5
    array-length v5, v2

    const/16 v6, 0x80

    div-int/2addr v5, v6

    .line 9
    const/16 v7, 0x82

    new-array v7, v7, [B

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :cond_0
    const/16 v11, 0x11

    if-lez v4, :cond_6

    .line 15
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "plenf = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 16
    div-int/lit8 v12, v9, 0x10

    .line 17
    invoke-static {v12}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v13

    array-length v13, v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 18
    invoke-static {v12}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v13

    aget-byte v13, v13, v8

    aput-byte v13, v7, v8

    .line 19
    invoke-static {v12}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v13

    aget-byte v13, v13, v14

    aput-byte v13, v7, v14

    goto :goto_0

    :cond_1
    nop

    .line 21
    aput-byte v8, v7, v8

    .line 22
    invoke-static {v12}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v13

    aget-byte v13, v13, v8

    aput-byte v13, v7, v14

    :goto_0
    move v13, v8

    :goto_1
    if-ge v13, v6, :cond_5

    if-ne v10, v5, :cond_4

    .line 27
    array-length v7, v2

    mul-int/lit16 v13, v10, 0x80

    sub-int/2addr v7, v13

    add-int/lit8 v7, v7, 0x2

    new-array v7, v7, [B

    .line 28
    invoke-static {v12}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v15

    array-length v15, v15

    if-le v15, v14, :cond_2

    .line 29
    invoke-static {v12}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v15

    aget-byte v15, v15, v8

    aput-byte v15, v7, v8

    .line 30
    invoke-static {v12}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v12

    aget-byte v12, v12, v14

    aput-byte v12, v7, v14

    goto :goto_2

    :cond_2
    nop

    .line 32
    aput-byte v8, v7, v8

    .line 33
    invoke-static {v12}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v12

    aget-byte v12, v12, v8

    aput-byte v12, v7, v14

    :goto_2
    move v12, v8

    .line 35
    :goto_3
    array-length v15, v2

    sub-int/2addr v15, v13

    if-ge v12, v15, :cond_3

    add-int/lit8 v15, v12, 0x2

    .line 36
    aget-byte v16, v2, v9

    aput-byte v16, v7, v15

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v15, v13, 0x2

    .line 43
    aget-byte v16, v2, v9

    aput-byte v16, v7, v15

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/2addr v10, v14

    .line 51
    new-instance v12, Lcom/dspread/xpos/i;

    const/16 v13, 0x24

    const/16 v14, 0xa

    invoke-direct {v12, v11, v13, v14, v7}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 53
    invoke-virtual {v1, v12}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 54
    invoke-virtual {v1, v14}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v11

    .line 55
    iget-object v12, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v12, v11}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 60
    :cond_6
    new-instance v2, Lcom/dspread/xpos/i;

    const/16 v4, 0x14

    invoke-direct {v2, v11, v4, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 62
    invoke-virtual {v1, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 63
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 64
    iget-object v2, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    .line 68
    :cond_7
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    if-nez v2, :cond_8

    .line 69
    iget-object v2, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    invoke-virtual {v1, v8, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->v(Ljava/lang/String;)V

    goto :goto_5

    .line 71
    :cond_8
    iget-object v1, v0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->v(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method protected d(Lcom/dspread/xpos/Vpos;)Ljava/lang/String;
    .locals 4

    .line 10
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/o0;->a(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    const/16 v3, 0x1a

    .line 16
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->y(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->y(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected d(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/dspread/xpos/o0;->e(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 27
    nop

    .line 28
    const-string p2, "9F1B"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 v0, p2, 0x6

    add-int/lit8 p2, p2, 0xe

    .line 30
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 28
    :cond_1
    const-string p1, ""

    .line 33
    :goto_0
    const-string p2, "00000000"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->s(Z)V

    goto :goto_1

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->s(Z)V

    :goto_1
    return-void
.end method

.method public d(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 11

    .line 37
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    const/16 v2, 0x71

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 39
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 40
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 41
    iget-object p3, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    .line 46
    :goto_0
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    const/16 v2, 0x31

    const-wide/16 v3, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v0, v2, :cond_9

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    const/16 v2, 0x32

    if-ne v0, v2, :cond_1

    goto/16 :goto_6

    .line 139
    :cond_1
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 v0, 0x33

    if-eq p1, v0, :cond_5

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 v0, 0x34

    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 168
    :cond_2
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_3

    .line 170
    invoke-virtual {p2, v8, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    const/4 p1, 0x4

    .line 172
    invoke-virtual {p2, p1}, Lcom/dspread/xpos/j;->a(I)B

    move-result p1

    .line 173
    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    .line 176
    invoke-virtual {p2, p1}, Lcom/dspread/xpos/j;->a(I)B

    move-result p1

    .line 177
    invoke-virtual {p2, v0, p1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 180
    const-string/jumbo p2, "pinKsn"

    invoke-virtual {p3, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo p2, "pinBlock"

    invoke-virtual {p3, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->n(Ljava/util/Hashtable;)V

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    .line 184
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v5}, Lcom/dspread/xpos/QPOSService;->n(Ljava/util/Hashtable;)V

    goto :goto_1

    .line 186
    :cond_4
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v5}, Lcom/dspread/xpos/QPOSService;->n(Ljava/util/Hashtable;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    nop

    .line 187
    invoke-virtual {p2, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result p1

    if-eqz p1, :cond_6

    .line 190
    invoke-virtual {p2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result p1

    move v0, v8

    goto :goto_3

    .line 187
    :cond_6
    move p1, v6

    move v0, v7

    .line 190
    :goto_3
    add-int/lit8 v1, v0, 0x1

    .line 192
    invoke-virtual {p2, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v9, v1

    :goto_4
    add-int v10, v0, v1

    if-ge v9, v10, :cond_7

    .line 196
    invoke-virtual {p2, v9, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    nop

    .line 198
    sput-boolean v6, Lcom/dspread/xpos/x;->n:Z

    .line 199
    sput-boolean v7, Lcom/dspread/xpos/x;->o:Z

    .line 200
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, v2, p1}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/List;I)V

    .line 201
    :goto_5
    sget-boolean p1, Lcom/dspread/xpos/x;->n:Z

    if-nez p1, :cond_8

    .line 203
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_5

    .line 208
    :cond_8
    sget-object p2, Lcom/dspread/xpos/x;->p:Lcom/dspread/xpos/j;

    .line 209
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 210
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v7}, Lcom/dspread/xpos/QPOSService;->S(Z)V

    .line 211
    iget-object v0, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v7}, Lcom/dspread/xpos/QPOSService;->U(Z)V

    .line 214
    invoke-virtual {p2, v6, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 215
    invoke-virtual {p2, v8, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v8

    add-int/lit8 v7, v0, 0x1

    .line 217
    invoke-virtual {p2, v0}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v0, v7, 0x1

    .line 222
    invoke-virtual {p2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move v7, v0

    .line 224
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "publick ="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2, v7, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    add-int/2addr v7, v8

    .line 227
    invoke-virtual {p2, v7, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 229
    invoke-static {}, Lcom/dspread/xpos/utils/AESUtil;->generateKey()Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "randomR1 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 232
    invoke-static {v2, p2}, Lcom/dspread/xpos/Util;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p2

    .line 235
    :try_start_1
    invoke-static {p2, v7}, Lcom/dspread/xpos/Util;->getEnDeRSA(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception p2

    .line 239
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptResult "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Lcom/dspread/xpos/o0;->b:Lcom/dspread/xpos/s;

    invoke-virtual {p2, p1, v5}, Lcom/dspread/xpos/s;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 242
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    if-nez v2, :cond_e

    .line 243
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    invoke-virtual {p2, v6, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resut  == "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 246
    :try_start_2
    invoke-static {v0, p2}, Lcom/dspread/xpos/utils/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 250
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resu == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 253
    const-string/jumbo v2, "randomDataLen start"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v2, v8

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "randomDataLen "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    add-int/2addr v2, v8

    .line 256
    invoke-virtual {p2, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v2, 0x2

    .line 258
    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v2, v8

    add-int/2addr v2, v7

    .line 260
    invoke-virtual {p2, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v9, v2, 0x2

    .line 262
    invoke-virtual {p2, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v2, v8

    add-int/2addr v2, v9

    .line 264
    invoke-virtual {p2, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 267
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_b

    add-int/lit8 v10, v2, 0x2

    .line 268
    invoke-virtual {p2, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v2, v8

    add-int/2addr v2, v10

    .line 270
    invoke-virtual {p2, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 271
    iget-object v2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, p2}, Lcom/dspread/xpos/QPOSService;->N(Ljava/lang/String;)V

    .line 273
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 274
    const-string p2, "RandomData"

    invoke-virtual {v0, p2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string p2, "AESKey"

    invoke-virtual {v0, p2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {v9}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "PAN"

    invoke-virtual {v0, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string p2, "isOnlinePin"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string p2, "ResetTimes"

    const-string v2, ""

    invoke-virtual {v0, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo p2, "pinTryLimit"

    const-string v2, "0"

    invoke-virtual {v0, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object p2, p0, Lcom/dspread/xpos/o0;->b:Lcom/dspread/xpos/s;

    invoke-virtual {p2, v6}, Lcom/dspread/xpos/s;->a(Z)V

    .line 281
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, v0}, Lcom/dspread/xpos/QPOSService;->r(Ljava/util/Hashtable;)V

    .line 282
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2}, Lcom/dspread/xpos/QPOSService;->H1()V

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doCvmPin ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean v2, Lcom/dspread/xpos/s;->b:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 285
    :goto_a
    sget-boolean p2, Lcom/dspread/xpos/s;->b:Z

    if-nez p2, :cond_d

    .line 286
    sget-boolean p2, Lcom/dspread/xpos/s;->b:Z

    if-eqz p2, :cond_c

    goto :goto_b

    .line 289
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean v2, Lcom/dspread/xpos/s;->b:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 291
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception p2

    goto :goto_a

    .line 297
    :cond_d
    :goto_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doCvmPin 2222="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean v0, Lcom/dspread/xpos/s;->b:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 298
    sget-object p2, Lcom/dspread/xpos/s;->c:Lcom/dspread/xpos/j;

    goto/16 :goto_0

    :cond_e
    goto/16 :goto_0
.end method

.method protected d(Lcom/dspread/xpos/Vpos;[BI)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x11

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->v(Ljava/lang/String;)V

    return-void
.end method

.method protected e(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 6

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dspread/xpos/o0;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 19
    sget-object p3, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->AttainList:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-ne p2, p3, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    invoke-virtual {p1, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    .line 22
    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    move v2, v0

    .line 23
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 24
    iget-object v3, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    const-string v4, "1000000000000000000000000000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    .line 25
    invoke-static {p3, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    .line 26
    iget-object v3, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    const/16 v3, 0x11

    if-ge p3, v3, :cond_0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    .line 38
    :cond_3
    sget-object p3, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-eq p2, p3, :cond_4

    sget-object p3, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getCustomEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-ne p2, p3, :cond_5

    .line 39
    :cond_4
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/o0;->d:Ljava/lang/String;

    :cond_5
    return-object p1
.end method

.method public e(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 4

    .line 40
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x11

    const/16 v1, 0x50

    invoke-direct {p2, v0, v1, p3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 42
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 43
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x2

    .line 49
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p2

    const/4 v0, 0x3

    .line 50
    invoke-virtual {p1, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 51
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v0, v2

    .line 52
    invoke-virtual {p1, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v2

    add-int/2addr v0, p3

    .line 53
    invoke-virtual {p1, v0, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object p3, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2, v1, p1}, Lcom/dspread/xpos/QPOSService;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 57
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3, v0, v0}, Lcom/dspread/xpos/QPOSService;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3, v0, v0}, Lcom/dspread/xpos/QPOSService;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected e(Lcom/dspread/xpos/Vpos;[BI)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x10

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 10
    const-string/jumbo p1, "work++++++++++++++++++++++UPDATE_SUCCESS"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SUCCESS:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_2

    .line 13
    const-string/jumbo p1, "work++++++++++++++++++++++UPDATE_FAIL"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 16
    const-string/jumbo p1, "work++++++++++++++++++++++UPDATE_PACKET_VEFIRY_ERROR"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_PACKET_VEFIRY_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected f(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 7

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dspread/xpos/o0;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    sget-object p3, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->AttainList:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const/4 v1, 0x0

    if-ne p2, p3, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    invoke-virtual {p1, v1, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    .line 5
    const/4 v2, 0x2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    move v3, v1

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    const-string v5, "1000000000000000000000000000000000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 8
    invoke-static {p3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p3

    sub-int/2addr p3, v0

    .line 9
    iget-object v4, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    const/16 v4, 0x11

    if-ge p3, v4, :cond_0

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 13
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/dspread/xpos/o0;->c:Ljava/lang/String;

    .line 19
    :cond_3
    sget-object p3, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    if-ne p2, p3, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/o0;->d:Ljava/lang/String;

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "aidEmvData"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dspread/xpos/o0;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public f(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 22
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x11

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 24
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 25
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-ne p1, p2, :cond_2

    .line 35
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->q(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x17

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    const-string p2, ""

    .line 10
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_2

    .line 14
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x17

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    nop

    .line 10
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Lcom/dspread/xpos/QPOSService;->g(ZLjava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, ""

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->g(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    const/16 v2, 0xf4

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/dspread/xpos/QPOSService;->j(ZLjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, "The AES Ciphertext length is wrong,should be 32 bytes"

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->j(ZLjava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 15
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, "The CRC is wrong"

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->j(ZLjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected j(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    const/16 v2, 0xe2

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->y(Z)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->y(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected k(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSetMasterKeyByBaseKLK:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    const/16 v2, 0xe5

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 5
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->y(Z)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->y(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public l(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->convertAscIIStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_1

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_2

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public m(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_1

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_2

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public n(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->convertAscIIStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x21

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_1

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-ne p1, p3, :cond_2

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->f(ZLjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public o(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->convertAscIIStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x21

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "doSetVenderId: "

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

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_1

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->g(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-ne p1, p3, :cond_2

    .line 14
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->g(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->g(ZLjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method protected p(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Z
    .locals 4

    .line 1
    const-string v0, "FFFFFFFF0000002E000B0127FC0703300403020A02001E0127FC1A004F1700000000000000000000000000000000000000000000006EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dspread/xpos/o0;->a(Lcom/dspread/xpos/Vpos;[B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    return v1

    .line 7
    :cond_0
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v2, 0x40

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 11
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 16
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "=======uc.result()="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    .line 18
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SUCCESS:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-ne p2, p3, :cond_3

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 22
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_PACKET_VEFIRY_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 24
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_PACKET_LEN_ERROR:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    :cond_5
    :goto_0
    return p3
.end method

.method public q(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x16

    const/16 v1, 0xe0

    invoke-direct {p2, v0, v1, p3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 10
    const-string/jumbo p3, "step"

    const-string v0, "1"

    invoke-virtual {p2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 12
    const/4 p3, 0x1

    invoke-virtual {p1, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 13
    invoke-virtual {p1, p3, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    add-int/lit8 v2, v0, 0x1

    .line 15
    invoke-virtual {p1, v2, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    .line 16
    invoke-virtual {p1, v0, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 17
    const-string v0, "RN1"

    invoke-virtual {p2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v0, "POSID"

    invoke-virtual {p2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_2

    .line 21
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public r(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0xe1

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 5
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---------------------"

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

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---------------------uc.result()=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 12
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 13
    const-string/jumbo p3, "step"

    const-string v1, "2"

    invoke-virtual {p2, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_1

    .line 15
    const/4 p3, 0x1

    invoke-virtual {p1, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 16
    invoke-virtual {p1, p3, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 17
    const-string v0, "RN2"

    invoke-virtual {p2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_2

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public s(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0xe2

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 10
    const-string/jumbo p3, "step"

    const-string v0, "3"

    invoke-virtual {p2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    if-nez p3, :cond_1

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-ne p1, p3, :cond_2

    .line 14
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public t(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 5

    .line 1
    const/4 v0, 0x6

    const/16 v1, 0x8

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "typetypetypetypetypetypetypetypetyeptyep===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v3, 0x10

    const/16 v4, 0xe3

    invoke-direct {v2, v3, v4, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 5
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 6
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v4, "step"

    invoke-virtual {p2, v4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p3

    const/4 v4, 0x0

    if-nez p3, :cond_2

    const-string/jumbo p3, "random"

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 15
    invoke-virtual {p1, v4, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "randomrandomrandomrandomrandom======="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p2, p3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_0
    const-string p1, "esc.onUpdateMasterKeyResult(true,resultTable);"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-ne p1, v1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v4, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/util/Hashtable;)V

    :goto_1
    return-void
.end method

.method protected u(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "010000010000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 5
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_SUCCESS:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$UpdateInformationResult;->UPDATE_FAIL:Lcom/dspread/xpos/QPOSService$UpdateInformationResult;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$UpdateInformationResult;)V

    :goto_0
    return-void
.end method

.method public v(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x17

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->L(Z)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-ne p1, p2, :cond_2

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->L(Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->L(Z)V

    :goto_0
    return-void
.end method

.method public w(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x17

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->M(Z)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->M(Z)V

    :goto_0
    return-void
.end method

.method protected x(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0xd0

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 12
    const/4 p3, 0x2

    invoke-virtual {p1, p3, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p1, p3, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 14
    const-string/jumbo v3, "randomKeyLen"

    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string/jumbo v0, "randomKey"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p1, p3, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    add-int/2addr v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p1, p3, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {p1, p3, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p3

    add-int/2addr p3, v2

    invoke-virtual {p1, p3, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p3

    invoke-virtual {p1, v3, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 19
    const-string/jumbo p3, "randomKeyCheckValueLen"

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string/jumbo p3, "randomKeyCheckValue"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-ne p1, p2, :cond_2

    .line 24
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/HashMap;)V

    :goto_0
    return-void
.end method

.method public y(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    const/16 v2, 0xf4

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/o0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/dspread/xpos/QPOSService;->h(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
