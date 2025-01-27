.class public Lcom/dspread/xpos/GetMifareCard;
.super Ljava/lang/Object;
.source "GetMifareCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/GetMifareCard$mafirCardType;
    }
.end annotation


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->c:Ljava/lang/String;

    .line 4
    const/4 v1, 0x0

    iput v1, p0, Lcom/dspread/xpos/GetMifareCard;->d:I

    .line 5
    iput-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->e:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->f:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->g:Ljava/util/ArrayList;

    .line 9
    iput-object p1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 306
    iget-object p1, p0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "FF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "0F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "0E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "07"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x7

    goto :goto_2

    :sswitch_5
    const-string v0, "06"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    goto :goto_2

    :sswitch_6
    const-string v0, "05"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x5

    goto :goto_2

    :sswitch_7
    const-string v0, "04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x4

    goto :goto_2

    :sswitch_8
    const-string v0, "03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x3

    goto :goto_2

    :sswitch_9
    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x2

    goto :goto_2

    :sswitch_a
    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 p1, 0x1

    goto :goto_2

    :sswitch_b
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    const/4 p1, -0x1

    :goto_2
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_3

    .line 341
    :pswitch_0
    const-string p1, "NFC_ERR_WRITE_FAIL"

    goto :goto_3

    .line 342
    :pswitch_1
    const-string p1, "NFC_ERR_READ_FAIL"

    goto :goto_3

    .line 343
    :pswitch_2
    const-string p1, "NFC_ERR_BLOCK_ADDR"

    goto :goto_3

    .line 344
    :pswitch_3
    const-string p1, "NFC_ERR_ERROR"

    goto :goto_3

    .line 345
    :pswitch_4
    const-string p1, "NFC_MIFARE_ERROR_END"

    goto :goto_3

    .line 346
    :pswitch_5
    const-string p1, "NFC_MIFARE_OPERATION_ERROR"

    goto :goto_3

    .line 347
    :pswitch_6
    const-string p1, "NFC_MIFARE_POLL_ERROR"

    goto :goto_3

    .line 348
    :pswitch_7
    const-string p1, "NFC_MIFARE_NACK_ERROR"

    goto :goto_3

    .line 349
    :pswitch_8
    const-string p1, "NFC_MIFARE_CRC_ERROR"

    goto :goto_3

    .line 350
    :pswitch_9
    const-string p1, "NFC_MIFARE_TIMEOUT_ERROR"

    goto :goto_3

    .line 351
    :pswitch_a
    const-string p1, "NFC_MIFARE_PARAM_ERROR"

    goto :goto_3

    .line 352
    :pswitch_b
    const-string p1, "SUCCESS"

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_b
        0x601 -> :sswitch_a
        0x602 -> :sswitch_9
        0x603 -> :sswitch_8
        0x604 -> :sswitch_7
        0x605 -> :sswitch_6
        0x606 -> :sswitch_5
        0x607 -> :sswitch_4
        0x615 -> :sswitch_3
        0x616 -> :sswitch_2
        0x61f -> :sswitch_1
        0x8c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private a(Lcom/dspread/xpos/j;Ljava/lang/String;)V
    .locals 2

    .line 291
    const-string v0, "11"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "10"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/j;->a(I)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    goto :goto_1

    .line 298
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 300
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p2, v1

    .line 301
    invoke-virtual {p1, p2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 305
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "statusCode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Lcom/dspread/xpos/j;
    .locals 8

    .line 59
    iget-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->D0()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    .line 61
    iget-object p1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-object v2

    .line 64
    :cond_0
    const-string v1, "02"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "0"

    const-string v4, "da:"

    const-string v5, "F"

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0xc

    if-le v1, v7, :cond_1

    .line 66
    iget-object p1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-object v2

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v1, v7

    if-eqz v1, :cond_2

    :goto_0
    rsub-int/lit8 v2, v1, 0xc

    if-ge v6, v2, :cond_2

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 78
    :cond_2
    iget v1, p0, Lcom/dspread/xpos/GetMifareCard;->d:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_3

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/dspread/xpos/GetMifareCard;->d:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 81
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/dspread/xpos/GetMifareCard;->d:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 83
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pa2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 84
    :cond_4
    const-string v1, "03"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pa3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 87
    :cond_5
    const-string v1, "04"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 88
    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 89
    nop

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "04 data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Lcom/dspread/xpos/Util;->isInteger(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->z0()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "04 data1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/GetMifareCard;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 96
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "04 data2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    rem-int/2addr v1, v2

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_7

    if-eqz v1, :cond_7

    :goto_2
    rsub-int/lit8 v3, v1, 0x20

    if-ge v6, v3, :cond_7

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 104
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    .line 106
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pa4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 108
    :cond_8
    const-string v1, "05"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "05 data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_7

    .line 111
    :cond_9
    const-string v1, "07"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_7

    .line 113
    :cond_a
    const-string v1, "08"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->D0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_7

    .line 115
    :cond_b
    const-string v1, "0B"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v7, 0x8

    if-eqz v1, :cond_d

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_c

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v1, v7

    :goto_4
    rsub-int/lit8 v2, v1, 0x8

    if-ge v6, v2, :cond_c

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 123
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_7

    .line 124
    :cond_d
    const-string v1, "0D"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_e

    .line 126
    iget-object p1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-object v2

    .line 130
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_f

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v1, v7

    :goto_5
    rsub-int/lit8 v2, v1, 0x8

    if-ge v6, v2, :cond_f

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 138
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    .line 139
    :cond_10
    const-string v0, "0F"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 141
    iget-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->G0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_11

    :goto_6
    rsub-int/lit8 v2, v1, 0x8

    if-ge v6, v2, :cond_12

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_11
    sub-int/2addr v1, v7

    if-lez v1, :cond_12

    .line 148
    iget-object p1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-object v2

    .line 151
    :cond_12
    invoke-static {v0}, Lcom/dspread/xpos/Util;->getReverseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->D0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 154
    :cond_13
    :goto_7
    iget-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->L(I)V

    .line 155
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x17

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 156
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 157
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 17

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p3}, Lcom/dspread/xpos/GetMifareCard;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commandCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, v2, v1}, Lcom/dspread/xpos/GetMifareCard;->a(Lcom/dspread/xpos/j;Ljava/lang/String;)V

    :cond_1
    nop

    .line 15
    const-string v4, "11"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "data"

    const-string v6, ":"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_5

    .line 16
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v4

    if-nez v4, :cond_4

    .line 17
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    div-int/2addr v10, v7

    .line 19
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 21
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v13, v3

    move-object v14, v8

    :goto_0
    if-ge v13, v10, :cond_3

    .line 23
    invoke-virtual {v2, v13, v9}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    .line 25
    invoke-virtual {v2, v13, v9}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v13, v9

    .line 27
    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v13, v10, :cond_2

    .line 29
    iput-object v7, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 30
    invoke-direct {v0, v7}, Lcom/dspread/xpos/GetMifareCard;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v7, 0x2

    goto :goto_0

    .line 27
    :cond_2
    const/4 v7, 0x2

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v11, v5, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v7, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v14, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v11}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_1

    .line 36
    :cond_4
    iget-object v4, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v4, v8, v8}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 39
    :cond_5
    move-object v14, v8

    move v13, v9

    :goto_1
    const-string v4, "10"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v7, 0x10

    if-eqz v4, :cond_9

    .line 40
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v4

    if-nez v4, :cond_8

    .line 41
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    div-int/2addr v10, v11

    .line 43
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 46
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v13, v3

    :goto_2
    if-ge v13, v10, :cond_7

    .line 48
    invoke-virtual {v2, v13, v9}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    .line 50
    invoke-virtual {v2, v13, v9}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v13, v9

    .line 52
    invoke-virtual {v2, v13, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v7

    if-ne v13, v10, :cond_6

    .line 57
    iput-object v3, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 58
    invoke-direct {v0, v3}, Lcom/dspread/xpos/GetMifareCard;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x0

    const/4 v9, 0x1

    goto :goto_2

    .line 54
    :cond_6
    const/4 v3, 0x0

    const/4 v9, 0x1

    goto :goto_2

    .line 62
    :cond_7
    invoke-virtual {v11, v5, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v3, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v14, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lcom/dspread/xpos/QPOSService;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_3

    .line 65
    :cond_8
    iget-object v3, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v8, v8}, Lcom/dspread/xpos/QPOSService;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 68
    :cond_9
    :goto_3
    const-string v3, "01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    const-string v5, "00"

    const-string v6, "0"

    if-eqz v3, :cond_f

    .line 69
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_e

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    .line 71
    invoke-virtual {v2, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dspread/xpos/GetMifareCard;->c:Ljava/lang/String;

    .line 72
    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v1, v3

    .line 74
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status+:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/dspread/xpos/GetMifareCard;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "atqa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "sak:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/4 v7, 0x1

    add-int/2addr v1, v7

    add-int/lit8 v7, v1, 0x1

    .line 77
    invoke-virtual {v2, v1}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    iput v1, v0, Lcom/dspread/xpos/GetMifareCard;->d:I

    .line 78
    invoke-virtual {v2, v7, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->e:Ljava/lang/String;

    .line 79
    iget v1, v0, Lcom/dspread/xpos/GetMifareCard;->d:I

    add-int/2addr v7, v1

    add-int/lit8 v1, v7, 0x1

    .line 80
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 81
    if-eqz v7, :cond_a

    .line 83
    invoke-virtual {v2, v1, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 81
    :cond_a
    move-object v1, v4

    .line 85
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cardlen:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v8, v0, Lcom/dspread/xpos/GetMifareCard;->d:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " cad:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v0, Lcom/dspread/xpos/GetMifareCard;->e:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 87
    iget-object v8, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v8, "status"

    if-eqz v5, :cond_b

    .line 88
    const-string/jumbo v5, "poll card success!"

    invoke-virtual {v2, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 90
    :cond_b
    const-string/jumbo v5, "poll card fail!"

    invoke-virtual {v2, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_5
    iget-object v5, v0, Lcom/dspread/xpos/GetMifareCard;->c:Ljava/lang/String;

    const-string v8, "cardType"

    invoke-virtual {v2, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v5, "ATQA"

    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v5, "SAK"

    invoke-virtual {v2, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/dspread/xpos/GetMifareCard;->d:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "cardUidLen"

    invoke-virtual {v2, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v3, v0, Lcom/dspread/xpos/GetMifareCard;->e:Ljava/lang/String;

    const-string v5, "cardUid"

    invoke-virtual {v2, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cardAts"

    const-string v5, "cardAtsLen"

    if-eqz v7, :cond_c

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    if-nez v7, :cond_d

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_d
    :goto_6
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->q(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 112
    :cond_e
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->q(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 114
    :cond_f
    const-string v3, "0E"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 115
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_11

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 118
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->f(Z)V

    goto/16 :goto_7

    .line 120
    :cond_10
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->f(Z)V

    goto/16 :goto_7

    .line 123
    :cond_11
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->f(Z)V

    goto/16 :goto_7

    .line 125
    :cond_12
    const-string v3, "02"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 126
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_14

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 128
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 129
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->K(Z)V

    goto/16 :goto_7

    .line 131
    :cond_13
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->K(Z)V

    goto/16 :goto_7

    .line 134
    :cond_14
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->K(Z)V

    goto/16 :goto_7

    .line 136
    :cond_15
    const-string v3, "03"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v9, "cardData"

    if-eqz v3, :cond_18

    .line 138
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_17

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v3, 0x1

    .line 142
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    const/4 v6, 0x2

    add-int/2addr v3, v6

    .line 143
    invoke-virtual {v2, v3, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dspread/xpos/GetMifareCard;->f:Ljava/lang/String;

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cardDa:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/dspread/xpos/GetMifareCard;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 146
    const-string v3, "addr"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cardDataLen"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->f:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->m(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 151
    :cond_16
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->m(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 154
    :cond_17
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->m(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 156
    :cond_18
    const-string v3, "04"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 157
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_1a

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 159
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 160
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->N(Z)V

    goto/16 :goto_7

    .line 162
    :cond_19
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->N(Z)V

    goto/16 :goto_7

    .line 165
    :cond_1a
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->N(Z)V

    goto/16 :goto_7

    .line 167
    :cond_1b
    const-string v3, "05"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v10, "blockAddr"

    if-eqz v3, :cond_1e

    .line 168
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_1d

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 172
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "05 cmd2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    add-int/2addr v3, v1

    .line 176
    invoke-virtual {v2, v3, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "05 block:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 179
    const-string v3, "Cmd"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v2, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->g(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 183
    :cond_1c
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->g(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 186
    :cond_1d
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->g(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 188
    :cond_1e
    const-string v3, "06"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 189
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_20

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 191
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 v1, v3, 0x1

    .line 192
    invoke-virtual {v2, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 193
    invoke-virtual {v2, v1, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "versionLen"

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v3, "cardVersion"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 199
    :cond_1f
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 202
    :cond_20
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 204
    :cond_21
    const-string v3, "07"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v11, "dataLen"

    if-eqz v3, :cond_24

    .line 205
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_23

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 207
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v1

    add-int/lit8 v1, v3, 0x1

    .line 210
    invoke-virtual {v2, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 211
    invoke-virtual {v2, v1, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 213
    invoke-virtual {v2, v10, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v2, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->c(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 218
    :cond_22
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->c(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 221
    :cond_23
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->c(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 223
    :cond_24
    const-string v3, "08"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 224
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_26

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    add-int/lit8 v1, v3, 0x1

    .line 227
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    .line 228
    invoke-virtual {v2, v1, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v6, 0x1

    .line 229
    invoke-virtual {v2, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 230
    invoke-virtual {v2, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    .line 231
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 232
    const-string/jumbo v7, "startAddr"

    invoke-virtual {v5, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v3, "endAddr"

    invoke-virtual {v5, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v5, v9, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v5}, Lcom/dspread/xpos/QPOSService;->b(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 238
    :cond_25
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->b(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 241
    :cond_26
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->b(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 243
    :cond_27
    const-string v3, "0B"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 244
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_29

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 246
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v2, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->Z(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 250
    :cond_28
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->Z(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 253
    :cond_29
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->Z(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 255
    :cond_2a
    const-string v3, "0D"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 256
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_2c

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 258
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    add-int/lit8 v1, v3, 0x1

    .line 259
    invoke-virtual {v2, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 260
    invoke-virtual {v2, v1, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string/jumbo v3, "pack"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->s(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 266
    :cond_2b
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->s(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 269
    :cond_2c
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->s(Ljava/util/Hashtable;)V

    goto/16 :goto_7

    .line 271
    :cond_2d
    const-string v3, "0F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 272
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->f()B

    move-result v1

    if-nez v1, :cond_2f

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v13}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->b:Ljava/lang/String;

    .line 274
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x4

    .line 275
    invoke-virtual {v2, v3, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 277
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0f=========responseLen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    iget-object v3, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\ndata:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/dspread/xpos/QPOSService;->X(Ljava/lang/String;)V

    goto :goto_7

    .line 287
    :cond_2e
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->X(Ljava/lang/String;)V

    goto :goto_7

    .line 290
    :cond_2f
    iget-object v1, v0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v8}, Lcom/dspread/xpos/QPOSService;->X(Ljava/lang/String;)V

    :cond_30
    :goto_7
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "0"

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ge v2, v4, :cond_0

    move v2, v5

    :goto_0
    rsub-int/lit8 v6, v1, 0x8

    if-ge v2, v6, :cond_0

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "valueO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    not-int p1, p1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    move v2, v5

    :goto_1
    rsub-int/lit8 v6, v1, 0x8

    if-ge v2, v6, :cond_1

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "valueS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    not-int v1, v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addr2:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    and-int/lit16 v1, v1, 0xff

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_2

    move v6, v5

    :goto_2
    rsub-int/lit8 v7, v1, 0x2

    if-ge v6, v7, :cond_2

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 43
    :cond_2
    nop

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/dspread/xpos/GetMifareCard;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->p0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0}, Lcom/dspread/xpos/Util;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/dspread/xpos/Util;->getReverseValue([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p1}, Lcom/dspread/xpos/Util;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/dspread/xpos/Util;->getReverseValue([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    move v3, v5

    .line 49
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move v3, v5

    .line 52
    :goto_4
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 55
    :goto_5
    array-length p1, v0

    if-ge v5, p1, :cond_5

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v2, v0, v5

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
