.class public Lcom/dspread/xpos/SaveCustomParam;
.super Ljava/lang/Object;
.source "SaveCustomParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/SaveCustomParam$operationLogo;,
        Lcom/dspread/xpos/SaveCustomParam$CustomParam;,
        Lcom/dspread/xpos/SaveCustomParam$CertificatesType;
    }
.end annotation


# static fields
.field private static final e:I = 0x80

.field private static final f:I = 0x100


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

.field private d:Lcom/dspread/xpos/QPOSService;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/SaveCustomParam;->a:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->READ:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    iput-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->c:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    .line 7
    iput-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method private a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;I)Z
    .locals 7

    .line 352
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    .line 354
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 355
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 356
    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->DEVICE_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    if-ne p2, v1, :cond_0

    .line 357
    const-string v1, "01"

    goto :goto_1

    .line 358
    :cond_0
    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERVER_SIGNING_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    if-ne p2, v1, :cond_1

    .line 359
    const-string v1, "02"

    goto :goto_1

    .line 360
    :cond_1
    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERCER_ENCRYPT_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    if-ne p2, v1, :cond_2

    .line 361
    const-string v1, "03"

    goto :goto_1

    .line 363
    :cond_2
    const-string v1, "04"

    :goto_1
    shr-int/lit8 v3, p3, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, p3, 0xff

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 373
    new-instance v3, Lcom/dspread/xpos/i;

    const/16 v4, 0x11

    const/16 v5, 0xa2

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 375
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 376
    invoke-virtual {p1, v6}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 377
    iget-object v3, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    return v4

    .line 381
    :cond_3
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    if-nez v3, :cond_4

    .line 382
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 383
    :cond_4
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    if-ne v3, v2, :cond_5

    return v4

    .line 387
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    .line 388
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    add-int/2addr p3, v1

    goto/16 :goto_0

    :cond_6
    return v2
.end method

.method private a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;ILjava/lang/String;)Z
    .locals 9

    .line 308
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 310
    invoke-static {p4}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lez v0, :cond_5

    .line 314
    sget-object v3, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->DEVICE_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    if-ne p2, v3, :cond_0

    .line 315
    const-string v3, "01"

    goto :goto_1

    .line 316
    :cond_0
    sget-object v3, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERVER_SIGNING_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    if-ne p2, v3, :cond_1

    .line 317
    const-string v3, "02"

    goto :goto_1

    .line 318
    :cond_1
    sget-object v3, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERCER_ENCRYPT_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    if-ne p2, v3, :cond_2

    .line 319
    const-string v3, "03"

    goto :goto_1

    .line 321
    :cond_2
    const-string v3, "04"

    :goto_1
    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, p3, 0xff

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    if-le v0, v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, v4, 0xff

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    new-array v5, v4, [B

    .line 341
    invoke-static {p4, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 346
    new-instance v5, Lcom/dspread/xpos/i;

    const/16 v6, 0x11

    const/16 v7, 0xa1

    const/16 v8, 0xa

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 349
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 350
    invoke-virtual {p1, v8}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v3

    .line 351
    iget-object v5, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v5, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    sub-int/2addr v0, v4

    add-int/2addr p3, v4

    add-int/2addr v2, v4

    goto/16 :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;II)Z
    .locals 4

    .line 63
    const-string/jumbo p2, "start read custom param"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "offset: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 66
    const-string p2, ""

    iput-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    :goto_0
    if-lez p5, :cond_2

    shr-int/lit8 p2, p4, 0x18

    shr-int/lit8 p3, p4, 0x10

    and-int/lit16 p3, p3, 0xff

    shr-int/lit8 v0, p4, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, p4, 0xff

    .line 74
    invoke-static {p2}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x80

    if-le p5, p3, :cond_0

    goto :goto_1

    :cond_0
    move p3, p5

    :goto_1
    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, p3, 0xff

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 91
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x16

    const/16 v2, 0xa1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 93
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 94
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 95
    iget-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sub-int/2addr p5, p3

    add-int/2addr p4, p3

    .line 103
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected a(Lcom/dspread/xpos/Vpos;)V
    .locals 5

    .line 286
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->DEVICE_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 288
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, v2}, Lcom/dspread/xpos/QPOSService;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 292
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, v2}, Lcom/dspread/xpos/QPOSService;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    sget-object v4, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->CertificatesChain:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    invoke-direct {p0, p1, v4, v1}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 299
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, v2}, Lcom/dspread/xpos/QPOSService;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 302
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v3, :cond_3

    .line 303
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, v2}, Lcom/dspread/xpos/QPOSService;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 306
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 307
    iget-object v1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0, p1}, Lcom/dspread/xpos/QPOSService;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 5

    .line 265
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0}, Lcom/dspread/xpos/SaveCustomParam;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, ""

    if-nez p2, :cond_0

    .line 267
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, v0, v0}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_0
    iget-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    .line 272
    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->DEVICE_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, v0, v0}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    sget-object v4, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->CertificatesChain:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    invoke-direct {p0, p1, v4, v2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 281
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, v0, v0}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 284
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2, v1, p1}, Lcom/dspread/xpos/QPOSService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)V
    .locals 3

    .line 218
    invoke-static {p2}, Lcom/dspread/xpos/Util;->convertAscIIStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 220
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x11

    const/16 v2, 0xa3

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 221
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 222
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 225
    :cond_0
    nop

    .line 226
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-nez p2, :cond_1

    .line 227
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 226
    :cond_1
    const-string p1, ""

    .line 229
    :goto_0
    iget-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->B(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 230
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->DEVICE_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 233
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->A(Z)V

    return-void

    .line 237
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 238
    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->CertificatesChain:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->A(Z)V

    return-void

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->A(Z)V

    return-void
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 244
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERVER_SIGNING_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->A(Z)V

    return-void

    .line 251
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 252
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERCER_ENCRYPT_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 254
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->A(Z)V

    return-void

    .line 258
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->IntToHex2(I)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 259
    sget-object p3, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->CertificatesChain:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v2, p2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 261
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->A(Z)V

    return-void

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->A(Z)V

    return-void
.end method

.method public a(Lcom/dspread/xpos/Vpos;Ljava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bean/emvCofig/inter/a;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dspread/xpos/bean/emvCofig/inter/a;

    .line 176
    instance-of v3, v2, Lcom/dspread/xpos/bean/emvCofig/a;

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    instance-of v2, v2, Lcom/dspread/xpos/bean/emvCofig/b;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "The xml file size is too large"

    const-string v2, "capkByteCount"

    const-string v3, "aidByteCount: "

    const/4 v4, 0x1

    if-ne p3, v4, :cond_4

    mul-int/lit16 p3, v0, 0x180

    mul-int/lit16 v4, v1, 0x180

    add-int v5, p3, v4

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/16 v0, 0x6000

    if-gt v5, v0, :cond_3

    goto :goto_1

    .line 189
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    mul-int/lit16 p3, v0, 0x29e

    mul-int/lit16 v4, v1, 0x120

    add-int v5, p3, v4

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const v0, 0x8000

    if-gt v5, v0, :cond_5

    .line 203
    :goto_1
    sget-object p2, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_APP:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    invoke-virtual {p0, p1, p3, p2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;ILcom/dspread/xpos/SaveCustomParam$CustomParam;)Z

    .line 204
    sget-object p2, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_CAPK:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    invoke-virtual {p0, p1, v4, p2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;ILcom/dspread/xpos/SaveCustomParam$CustomParam;)Z

    return-void

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/dspread/xpos/Vpos;ILcom/dspread/xpos/SaveCustomParam$CustomParam;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->WRITE:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;I)Z

    move-result p2

    const-string v1, "init size failed"

    if-eqz p2, :cond_1

    .line 214
    invoke-virtual {p0, p1, v0, p3}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CustomParam;II)Z
    .locals 7

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/SaveCustomParam;->a:I

    .line 11
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->READ:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    invoke-virtual {p0, p1, v0, p2, p4}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;I)Z

    move-result v1

    if-nez v1, :cond_0

    return v1

    .line 14
    :cond_0
    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_CAPK:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_APP:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v6, p4

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    iget p4, p0, Lcom/dspread/xpos/SaveCustomParam;->a:I

    move v6, p4

    .line 17
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;II)Z

    move-result p3

    if-nez p3, :cond_3

    return p3

    .line 20
    :cond_3
    invoke-virtual {p0, p1, v0, p2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;)Z

    move-result p1

    if-nez p1, :cond_4

    return p1

    .line 23
    :cond_4
    iget-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    iget-object p3, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/dspread/xpos/QPOSService;->i(ZLjava/lang/String;)V

    return p1
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CustomParam;ILjava/lang/String;)Z
    .locals 9

    .line 1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    div-int/lit8 v0, v0, 0x2

    .line 3
    sget-object v7, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->WRITE:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    invoke-virtual {p0, p1, v7, p2, v0}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;I)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    .line 6
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    return v8

    .line 9
    :cond_1
    invoke-virtual {p0, p1, v7, p2}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;)Z

    move-result p1

    if-nez p1, :cond_2

    return v8

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;)Z
    .locals 4

    .line 150
    nop

    .line 152
    iput-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->c:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    .line 153
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->READ:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    const-string v1, "00"

    const-string v2, "01"

    const-string v3, ""

    if-ne p2, v0, :cond_0

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 156
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 159
    :goto_0
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_APP:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-ne p3, v0, :cond_1

    .line 160
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 161
    :cond_1
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_CAPK:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-ne p3, v0, :cond_2

    .line 162
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 163
    :cond_2
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_CUSTOM1:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-ne p3, v0, :cond_3

    .line 164
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "02"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 165
    :cond_3
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_CUSTOM2:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-ne p3, v0, :cond_4

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "03"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 169
    :cond_4
    :goto_1
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 170
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0x16

    const/16 v1, 0x91

    const/16 v2, 0xa

    invoke-direct {p3, v0, v1, v2, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 172
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 173
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 174
    iget-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;I)Z
    .locals 4

    .line 104
    nop

    .line 106
    iput-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->c:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    .line 107
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->READ:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    const-string v1, "00"

    const-string v2, "01"

    const-string v3, ""

    if-ne p2, v0, :cond_0

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 110
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 113
    :goto_0
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_APP:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-ne p3, v0, :cond_1

    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 115
    :cond_1
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_CAPK:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-ne p3, v0, :cond_2

    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 117
    :cond_2
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_CUSTOM1:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-ne p3, v0, :cond_3

    .line 118
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "02"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 119
    :cond_3
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_CUSTOM2:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    if-ne p3, v0, :cond_4

    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "03"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    :goto_1
    shr-int/lit8 p3, p4, 0x18

    shr-int/lit8 v0, p4, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p4, p4, 0xff

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 131
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 134
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "10"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 137
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 p4, 0x16

    const/16 v0, 0x90

    const/16 v1, 0xa

    invoke-direct {p3, p4, v0, v1, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 140
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 141
    invoke-virtual {p1, v1}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_5

    return p3

    .line 146
    :cond_5
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "save custom param: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 148
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p1

    iput p1, p0, Lcom/dspread/xpos/SaveCustomParam;->a:I

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "config size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/dspread/xpos/SaveCustomParam;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$operationLogo;Lcom/dspread/xpos/SaveCustomParam$CustomParam;ILjava/lang/String;)Z
    .locals 7

    .line 24
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "offset: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 26
    invoke-static {p5}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    const/4 p5, 0x0

    move v0, p5

    :goto_0
    if-lez p2, :cond_2

    shr-int/lit8 v1, p4, 0x18

    shr-int/lit8 v2, p4, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p4, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, p4, 0xff

    .line 36
    invoke-static {v1}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    if-le p2, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, p2

    :goto_1
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v2, 0xff

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    new-array v3, v2, [B

    .line 52
    invoke-static {p3, v0, v3, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 57
    new-instance v3, Lcom/dspread/xpos/i;

    const/16 v4, 0x16

    const/16 v5, 0xa0

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 60
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 61
    invoke-virtual {p1, v6}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    .line 62
    iget-object v3, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v1

    if-nez v1, :cond_1

    return p5

    :cond_1
    sub-int/2addr p2, v2

    add-int/2addr p4, v2

    add-int/2addr v0, v2

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 6

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 28
    :cond_0
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 29
    array-length v0, p2

    const/16 v1, 0x40

    if-gt v0, v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x2

    .line 34
    new-array v2, v2, [B

    .line 35
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    .line 36
    aput-byte v5, v2, v4

    .line 37
    const/4 v4, 0x2

    invoke-static {p2, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "paras::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 39
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0xf1

    invoke-direct {p2, v1, v0, p3, v2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 40
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 41
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 43
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    if-eqz p2, :cond_3

    .line 45
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->A(Ljava/lang/String;)V

    .line 46
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    nop

    .line 49
    invoke-virtual {p1, v3, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result p2

    .line 51
    invoke-virtual {p1, v4, p2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    .line 52
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 53
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_OUT_OF_RANGE:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    .line 54
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 55
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->INPUT_INVALID:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    .line 56
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Lcom/dspread/xpos/Vpos;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERVER_SIGNING_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, v2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 7
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, v2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v4, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERCER_ENCRYPT_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    invoke-direct {p0, p1, v4, v1}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, v2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v3, :cond_3

    .line 18
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2, v2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v0, p1}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 3

    .line 57
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->DEVICE_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;I)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 59
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v1, v1}, Lcom/dspread/xpos/QPOSService;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    .line 63
    invoke-virtual {p0, p1, p2, v2}, Lcom/dspread/xpos/SaveCustomParam;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0, v1}, Lcom/dspread/xpos/QPOSService;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    .line 70
    iget-object p2, p0, Lcom/dspread/xpos/SaveCustomParam;->d:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, v0, p1}, Lcom/dspread/xpos/QPOSService;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Lcom/dspread/xpos/Vpos;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CertificatesType;->SERVER_SIGNING_CERT:Lcom/dspread/xpos/SaveCustomParam$CertificatesType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dspread/xpos/SaveCustomParam;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/SaveCustomParam$CertificatesType;I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    return-object v0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/SaveCustomParam;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
