.class Lcom/sleepycat/persist/impl/WidenerInput;
.super Lcom/sleepycat/persist/impl/AbstractInput;
.source "WidenerInput.java"


# instance fields
.field private fromFormatId:I

.field private input:Lcom/sleepycat/persist/impl/EntityInput;

.field private toFormatId:I


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/EntityInput;II)V
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "fromFormatId"    # I
    .param p3, "toFormatId"    # I

    .line 246
    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->getCatalog()Lcom/sleepycat/persist/impl/Catalog;

    move-result-object v0

    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->isRawAccess()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/impl/AbstractInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    .line 247
    iput-object p1, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    .line 248
    iput p2, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    .line 249
    iput p3, p0, Lcom/sleepycat/persist/impl/WidenerInput;->toFormatId:I

    .line 250
    return-void
.end method

.method private byteToObject(B)Ljava/lang/Object;
    .locals 2
    .param p1, "v"    # B

    .line 331
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->toFormatId:I

    packed-switch v0, :pswitch_data_0

    .line 353
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 351
    :pswitch_1
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 349
    :pswitch_2
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 346
    :pswitch_3
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 343
    :pswitch_4
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 340
    :pswitch_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 337
    :pswitch_6
    int-to-short v0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 334
    :pswitch_7
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private charToObject(C)Ljava/lang/Object;
    .locals 2
    .param p1, "v"    # C

    .line 434
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->toFormatId:I

    packed-switch v0, :pswitch_data_0

    .line 453
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 451
    :pswitch_1
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 437
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 449
    :pswitch_3
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 446
    :pswitch_4
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 443
    :pswitch_5
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 440
    :pswitch_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkToFormat(I)V
    .locals 1
    .param p1, "id"    # I

    .line 597
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->toFormatId:I

    if-ne v0, p1, :cond_0

    .line 600
    return-void

    .line 598
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private floatToObject(F)Ljava/lang/Object;
    .locals 2
    .param p1, "v"    # F

    .line 421
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->toFormatId:I

    packed-switch v0, :pswitch_data_0

    .line 429
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 427
    :pswitch_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 424
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private intToObject(I)Ljava/lang/Object;
    .locals 2
    .param p1, "v"    # I

    .line 382
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->toFormatId:I

    packed-switch v0, :pswitch_data_0

    .line 398
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 396
    :pswitch_1
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 394
    :pswitch_2
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 391
    :pswitch_3
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 388
    :pswitch_4
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 385
    :pswitch_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static isWideningSupported(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Z)Z
    .locals 4
    .param p0, "fromFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p1, "toFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "isSecKeyField"    # Z

    .line 64
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    .line 65
    .local v0, "fromFormatId":I
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v1

    .line 67
    .local v1, "toFormatId":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 241
    :pswitch_0
    return v2

    .line 234
    :pswitch_1
    packed-switch v1, :pswitch_data_1

    .line 238
    return v2

    .line 236
    :pswitch_2
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 223
    :pswitch_3
    sparse-switch v1, :sswitch_data_0

    .line 231
    return v2

    .line 229
    :sswitch_0
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 206
    :pswitch_4
    packed-switch v1, :pswitch_data_2

    .line 220
    :pswitch_5
    return v2

    .line 208
    :pswitch_6
    return v3

    .line 218
    :pswitch_7
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 199
    :pswitch_8
    packed-switch v1, :pswitch_data_3

    .line 203
    return v2

    .line 201
    :pswitch_9
    return v3

    .line 192
    :pswitch_a
    packed-switch v1, :pswitch_data_4

    .line 196
    return v2

    .line 194
    :pswitch_b
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 182
    :pswitch_c
    packed-switch v1, :pswitch_data_5

    .line 189
    return v2

    .line 187
    :pswitch_d
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 184
    :pswitch_e
    return v3

    .line 173
    :pswitch_f
    sparse-switch v1, :sswitch_data_1

    .line 179
    return v2

    .line 177
    :sswitch_1
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 160
    :pswitch_10
    packed-switch v1, :pswitch_data_6

    .line 170
    :pswitch_11
    return v2

    .line 168
    :pswitch_12
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 162
    :pswitch_13
    return v3

    .line 150
    :pswitch_14
    sparse-switch v1, :sswitch_data_2

    .line 157
    return v2

    .line 155
    :sswitch_2
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 135
    :pswitch_15
    packed-switch v1, :pswitch_data_7

    .line 147
    :pswitch_16
    return v2

    .line 145
    :pswitch_17
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 137
    :pswitch_18
    return v3

    .line 124
    :pswitch_19
    sparse-switch v1, :sswitch_data_3

    .line 132
    return v2

    .line 130
    :sswitch_3
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 107
    :pswitch_1a
    packed-switch v1, :pswitch_data_8

    .line 121
    :pswitch_1b
    return v2

    .line 119
    :pswitch_1c
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 109
    :pswitch_1d
    return v3

    .line 95
    :pswitch_1e
    sparse-switch v1, :sswitch_data_4

    .line 104
    return v2

    .line 102
    :sswitch_4
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 76
    :pswitch_1f
    packed-switch v1, :pswitch_data_9

    .line 92
    :pswitch_20
    return v2

    .line 90
    :pswitch_21
    xor-int/lit8 v2, p2, 0x1

    return v2

    .line 78
    :pswitch_22
    return v3

    .line 69
    :pswitch_23
    packed-switch v1, :pswitch_data_a

    .line 73
    return v2

    .line 71
    :pswitch_24
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_23
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1a
        :pswitch_19
        :pswitch_15
        :pswitch_14
        :pswitch_10
        :pswitch_f
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xf
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xd
        :pswitch_e
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xd -> :sswitch_1
        0xf -> :sswitch_1
        0x13 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0xb
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xb -> :sswitch_2
        0xd -> :sswitch_2
        0xf -> :sswitch_2
        0x13 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x9
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_3
        0xb -> :sswitch_3
        0xd -> :sswitch_3
        0xf -> :sswitch_3
        0x13 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x7
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x7 -> :sswitch_4
        0x9 -> :sswitch_4
        0xb -> :sswitch_4
        0xd -> :sswitch_4
        0xf -> :sswitch_4
        0x13 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x5
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_21
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x3
        :pswitch_24
    .end packed-switch
.end method

.method private longToObject(J)Ljava/lang/Object;
    .locals 2
    .param p1, "v"    # J

    .line 403
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->toFormatId:I

    packed-switch v0, :pswitch_data_0

    .line 416
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 414
    :pswitch_1
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 412
    :pswitch_2
    long-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 409
    :pswitch_3
    long-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 406
    :pswitch_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shortToObject(S)Ljava/lang/Object;
    .locals 2
    .param p1, "v"    # S

    .line 358
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->toFormatId:I

    packed-switch v0, :pswitch_data_0

    .line 377
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 375
    :pswitch_1
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 373
    :pswitch_2
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 370
    :pswitch_3
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 367
    :pswitch_4
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 364
    :pswitch_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 361
    :pswitch_6
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public readArrayLength()I
    .locals 1

    .line 261
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 560
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 561
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    sparse-switch v0, :sswitch_data_0

    .line 573
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 571
    :sswitch_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readChar()C

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 569
    :sswitch_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 567
    :sswitch_2
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readInt()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 565
    :sswitch_3
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 563
    :sswitch_4
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readByte()B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x6 -> :sswitch_3
        0x8 -> :sswitch_2
        0xa -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public readBoolean()Z
    .locals 1

    .line 462
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readByte()B
    .locals 1

    .line 466
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readChar()C
    .locals 1

    .line 458
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readEnumConstant([Ljava/lang/String;)I
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 484
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 485
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    sparse-switch v0, :sswitch_data_0

    .line 493
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 491
    :sswitch_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readChar()C

    move-result v0

    return v0

    .line 489
    :sswitch_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v0

    return v0

    .line 487
    :sswitch_2
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readByte()B

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x6 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public readKeyObject(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;
    .locals 1
    .param p1, "fromFormat"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/WidenerInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 500
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 501
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    sparse-switch v0, :sswitch_data_0

    .line 511
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 509
    :sswitch_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readChar()C

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 507
    :sswitch_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 505
    :sswitch_2
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 503
    :sswitch_3
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readByte()B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x6 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public readObject()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 285
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 326
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 323
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 324
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readStringObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 320
    :pswitch_2
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 321
    .local v0, "c":Ljava/lang/Character;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/sleepycat/persist/impl/WidenerInput;->charToObject(C)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1

    .line 318
    .end local v0    # "c":Ljava/lang/Character;
    :pswitch_3
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readChar()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->charToObject(C)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 315
    :pswitch_4
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 316
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readSortedDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 312
    :pswitch_5
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 313
    .local v0, "f":Ljava/lang/Float;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sleepycat/persist/impl/WidenerInput;->floatToObject(F)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    return-object v1

    .line 310
    .end local v0    # "f":Ljava/lang/Float;
    :pswitch_6
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readSortedFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->floatToObject(F)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 307
    :pswitch_7
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 308
    .local v0, "l":Ljava/lang/Long;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/persist/impl/WidenerInput;->longToObject(J)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    return-object v1

    .line 305
    .end local v0    # "l":Ljava/lang/Long;
    :pswitch_8
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/persist/impl/WidenerInput;->longToObject(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 302
    :pswitch_9
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 303
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sleepycat/persist/impl/WidenerInput;->intToObject(I)Ljava/lang/Object;

    move-result-object v1

    :cond_3
    return-object v1

    .line 300
    .end local v0    # "i":Ljava/lang/Integer;
    :pswitch_a
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->intToObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 297
    :pswitch_b
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 298
    .local v0, "s":Ljava/lang/Short;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-direct {p0, v1}, Lcom/sleepycat/persist/impl/WidenerInput;->shortToObject(S)Ljava/lang/Object;

    move-result-object v1

    :cond_4
    return-object v1

    .line 295
    .end local v0    # "s":Ljava/lang/Short;
    :pswitch_c
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->shortToObject(S)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 292
    :pswitch_d
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 293
    .local v0, "b":Ljava/lang/Byte;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-direct {p0, v1}, Lcom/sleepycat/persist/impl/WidenerInput;->byteToObject(B)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    return-object v1

    .line 290
    .end local v0    # "b":Ljava/lang/Byte;
    :pswitch_e
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readByte()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->byteToObject(B)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 287
    :pswitch_f
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 288
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_0
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
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 472
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 473
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    packed-switch v0, :pswitch_data_0

    .line 477
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readByte()B

    move-result v0

    int-to-short v0, v0

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public readSortedBigDecimal()Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 579
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 580
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    sparse-switch v0, :sswitch_data_0

    .line 592
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 590
    :sswitch_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readChar()C

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 588
    :sswitch_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 586
    :sswitch_2
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readInt()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 584
    :sswitch_3
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 582
    :sswitch_4
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readByte()B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x6 -> :sswitch_3
        0x8 -> :sswitch_2
        0xa -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public readSortedDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 538
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 539
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    sparse-switch v0, :sswitch_data_0

    .line 553
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 551
    :sswitch_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readChar()C

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 549
    :sswitch_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readSortedFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 547
    :sswitch_2
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readLong()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 545
    :sswitch_3
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readInt()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 543
    :sswitch_4
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 541
    :sswitch_5
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readByte()B

    move-result v0

    int-to-double v0, v0

    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x6 -> :sswitch_4
        0x8 -> :sswitch_3
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public readSortedFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 518
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/WidenerInput;->checkToFormat(I)V

    .line 519
    iget v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->fromFormatId:I

    sparse-switch v0, :sswitch_data_0

    .line 531
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 529
    :sswitch_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readChar()C

    move-result v0

    int-to-float v0, v0

    return v0

    .line 527
    :sswitch_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readLong()J

    move-result-wide v0

    long-to-float v0, v0

    return v0

    .line 525
    :sswitch_2
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readInt()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 523
    :sswitch_3
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v0

    int-to-float v0, v0

    return v0

    .line 521
    :sswitch_4
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0}, Lcom/sleepycat/persist/impl/EntityInput;->readByte()B

    move-result v0

    int-to-float v0, v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x6 -> :sswitch_3
        0x8 -> :sswitch_2
        0xa -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    .line 273
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readStringObject()Ljava/lang/Object;
    .locals 1

    .line 603
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public registerPriKeyObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0, p1}, Lcom/sleepycat/persist/impl/EntityInput;->registerPriKeyObject(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public registerPriStringKeyObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/sleepycat/persist/impl/WidenerInput;->input:Lcom/sleepycat/persist/impl/EntityInput;

    invoke-interface {v0, p1}, Lcom/sleepycat/persist/impl/EntityInput;->registerPriStringKeyObject(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public skipField(Lcom/sleepycat/persist/impl/Format;)V
    .locals 1
    .param p1, "declaredFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 269
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
