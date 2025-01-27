.class public Lcom/dspread/xpos/v;
.super Ljava/lang/Object;
.source "FelicaAPDU.java"


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/v;->a:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method private a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$FelicaOpMode;Ljava/lang/String;I)Lcom/dspread/xpos/j;
    .locals 7

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    sget-object v2, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->POWER_ON:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_0

    .line 4
    new-array v1, v3, [B

    .line 5
    aput-byte v3, v1, v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->POWER_OFF:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    const/4 v4, 0x3

    if-ne p2, v2, :cond_1

    .line 7
    new-array v1, v3, [B

    .line 8
    aput-byte v4, v1, v0

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->SEND_APDU:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    if-ne p2, v2, :cond_3

    .line 11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blueconfig==="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-static {p3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 17
    array-length p3, p2

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "felicaParas lenth =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 19
    invoke-static {p3}, Lcom/dspread/xpos/Util;->intToBytes(I)[B

    move-result-object v1

    add-int/lit8 v2, p3, 0x3

    .line 20
    new-array v2, v2, [B

    .line 21
    const/4 v5, 0x2

    aput-byte v5, v2, v0

    .line 22
    aget-byte v6, v1, v0

    aput-byte v6, v2, v3

    .line 23
    aget-byte v1, v1, v3

    aput-byte v1, v2, v5

    .line 24
    invoke-static {p2, v0, v2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    .line 28
    :cond_3
    :goto_0
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 p3, 0x17

    const/16 v0, 0xd0

    invoke-direct {p2, p3, v0, p4, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 30
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/16 p2, 0xa

    .line 31
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$FelicaOpMode;Ljava/lang/String;I)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dspread/xpos/v;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$FelicaOpMode;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/v;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    .line 6
    const/4 p4, 0x1

    invoke-virtual {p1, p4, p4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaStatusCode;->NFC_FELICA_SUCCESS:Lcom/dspread/xpos/QPOSService$FelicaStatusCode;

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string v6, "00"

    const/4 v7, 0x2

    packed-switch v3, :pswitch_data_0

    :goto_0
    goto :goto_1

    :pswitch_0
    const-string v3, "06"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_1

    :pswitch_1
    const-string v3, "05"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_2
    const-string v3, "04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :pswitch_3
    const-string v3, "03"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_1

    :pswitch_4
    const-string v3, "02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v2, v7

    goto :goto_1

    :pswitch_5
    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v2, p4

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    move v2, p2

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 28
    :pswitch_7
    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaStatusCode;->NFC_FELICA_TIMEOUT:Lcom/dspread/xpos/QPOSService$FelicaStatusCode;

    goto :goto_2

    .line 29
    :pswitch_8
    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaStatusCode;->NFC_FELICA_ERROR_END:Lcom/dspread/xpos/QPOSService$FelicaStatusCode;

    goto :goto_2

    .line 30
    :pswitch_9
    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaStatusCode;->NFC_FELICA_RAW_TRANS_ERROR:Lcom/dspread/xpos/QPOSService$FelicaStatusCode;

    goto :goto_2

    .line 31
    :pswitch_a
    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaStatusCode;->NFC_FELICA_OPERATION_ERROR:Lcom/dspread/xpos/QPOSService$FelicaStatusCode;

    goto :goto_2

    .line 32
    :pswitch_b
    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaStatusCode;->NFC_FELICA_POLL_ERROR:Lcom/dspread/xpos/QPOSService$FelicaStatusCode;

    goto :goto_2

    .line 33
    :pswitch_c
    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaStatusCode;->NFC_FELICA_PARAM_ERROR:Lcom/dspread/xpos/QPOSService$FelicaStatusCode;

    :goto_2
    :pswitch_d
    if-ne p3, p4, :cond_8

    .line 53
    const-string p1, "Felica powerOn"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/dspread/xpos/v;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->b(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;)V

    goto :goto_3

    :cond_8
    if-ne p3, v7, :cond_a

    .line 56
    const-string p3, "Felica sendapdu"

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 58
    iget-object p1, p0, Lcom/dspread/xpos/v;->a:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    nop

    .line 61
    invoke-virtual {p1, v7, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p3

    .line 63
    invoke-static {p3, p2}, Lcom/dspread/xpos/Util;->bytesToInt([BI)I

    move-result p2

    .line 64
    invoke-virtual {p1, v4, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object p3, p0, Lcom/dspread/xpos/v;->a:Lcom/dspread/xpos/QPOSService;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    if-ne p3, v5, :cond_b

    .line 68
    const-string p1, "Felica powerOff"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/dspread/xpos/v;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$FelicaStatusCode;)V

    :cond_b
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
