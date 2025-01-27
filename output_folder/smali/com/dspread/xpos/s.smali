.class public Lcom/dspread/xpos/s;
.super Ljava/lang/Object;
.source "DoCvmPin.java"


# static fields
.field protected static volatile b:Z

.field protected static volatile c:Lcom/dspread/xpos/j;

.field protected static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/s;->a:Lcom/dspread/xpos/QPOSService;

    return-void
.end method


# virtual methods
.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 7

    .line 2
    const-string v0, "EMVChangePin begin =  "

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 8
    new-array v2, v2, [B

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 11
    invoke-static {v0}, Lcom/dspread/xpos/Util;->intToByteArray(I)[B

    move-result-object v3

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x80

    if-ne v0, v5, :cond_0

    .line 14
    const/4 v5, 0x1

    aget-byte v6, v3, v5

    if-nez v6, :cond_0

    .line 15
    aget-byte v6, v3, v4

    aput-byte v6, v3, v5

    .line 16
    aput-byte v4, v3, v4

    :cond_0
    nop

    .line 20
    const/4 v5, 0x2

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-static {p2, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    aput-byte v5, v2, v1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EMVChangePin = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 26
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x16

    const/16 v1, 0xf1

    const/16 v3, 0x3c

    invoke-direct {p2, v0, v1, v3, v2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 28
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Z)V
    .locals 8

    .line 29
    const-string v0, "EMVCvmSetPin"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/s;->c:Lcom/dspread/xpos/j;

    .line 33
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 34
    nop

    .line 35
    sget-object v1, Lcom/dspread/xpos/n;->h:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    sget-object v2, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->CANCEL:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const-string v3, "00"

    if-ne v1, v2, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object v1, Lcom/dspread/xpos/n;->h:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    sget-object v2, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->SET:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v1, v2, :cond_1

    .line 38
    const-string v3, "01"

    .line 40
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pinmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    sput-object v1, Lcom/dspread/xpos/n;->h:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    .line 43
    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x34

    const/16 v4, 0x16

    const/16 v5, 0x3c

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    .line 45
    aput-byte v2, v0, v7

    .line 46
    aput-byte v7, v0, v6

    const/4 p2, 0x3

    .line 47
    aput-byte v2, v0, p2

    .line 48
    const/4 p2, 0x4

    new-array p3, p2, [B

    .line 49
    invoke-static {v0, v2, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    new-instance p2, Lcom/dspread/xpos/i;

    invoke-direct {p2, v4, v3, v5, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 51
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 52
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    sput-object p1, Lcom/dspread/xpos/s;->c:Lcom/dspread/xpos/j;

    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 55
    array-length v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 56
    array-length v1, p2

    invoke-static {p2, v2, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    array-length p2, p2

    add-int/2addr p2, v6

    add-int/lit8 v1, p2, 0x1

    .line 58
    aput-byte v7, v0, p2

    if-eqz p3, :cond_4

    .line 61
    iget-object p2, p0, Lcom/dspread/xpos/s;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2}, Lcom/dspread/xpos/QPOSService;->getCvmKeyList()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/dspread/xpos/s;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2}, Lcom/dspread/xpos/QPOSService;->getCvmKeyList()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    add-int/lit8 p2, v1, 0x1

    .line 62
    aput-byte v6, v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 p2, v1, 0x1

    .line 64
    aput-byte v7, v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p2, v1, 0x1

    .line 67
    aput-byte v2, v0, v1

    .line 69
    :goto_1
    new-array p3, p2, [B

    .line 70
    invoke-static {v0, v2, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    new-instance p2, Lcom/dspread/xpos/i;

    invoke-direct {p2, v4, v3, v5, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 72
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 73
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    sput-object p1, Lcom/dspread/xpos/s;->c:Lcom/dspread/xpos/j;

    .line 75
    :goto_2
    iget-object p1, p0, Lcom/dspread/xpos/s;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/s;->c:Lcom/dspread/xpos/j;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 77
    invoke-virtual {p0, v7}, Lcom/dspread/xpos/s;->a(Z)V

    .line 78
    const-string p1, ">>>>>>>>>set emv pin failed"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void

    :cond_5
    nop

    .line 107
    invoke-virtual {p0, v7}, Lcom/dspread/xpos/s;->a(Z)V

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setChangePin_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean p2, Lcom/dspread/xpos/s;->b:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "---------"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/dspread/xpos/s;->c:Lcom/dspread/xpos/j;

    sget-object p3, Lcom/dspread/xpos/s;->c:Lcom/dspread/xpos/j;

    invoke-virtual {p3}, Lcom/dspread/xpos/j;->e()I

    move-result p3

    invoke-virtual {p2, v2, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/dspread/xpos/s;->b:Z

    return-void
.end method
