.class public Lcom/dspread/xpos/t;
.super Ljava/lang/Object;
.source "DoTrade.java"


# static fields
.field protected static i:I = 0x1e


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;

.field private b:Lcom/dspread/xpos/Service;

.field private c:Lcom/dspread/xpos/s;

.field protected d:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

.field private final e:[B

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    iput-object v0, p0, Lcom/dspread/xpos/t;->d:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    .line 4
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dspread/xpos/t;->e:[B

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/t;->f:I

    .line 1300
    iput v0, p0, Lcom/dspread/xpos/t;->g:I

    .line 1301
    iput v0, p0, Lcom/dspread/xpos/t;->h:I

    .line 1302
    iput-object p1, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    .line 1303
    new-instance v0, Lcom/dspread/xpos/s;

    invoke-direct {v0, p1}, Lcom/dspread/xpos/s;-><init>(Lcom/dspread/xpos/QPOSService;)V

    iput-object v0, p0, Lcom/dspread/xpos/t;->c:Lcom/dspread/xpos/s;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>(Lcom/dspread/xpos/Service;)V
    .locals 1

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1305
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    iput-object v0, p0, Lcom/dspread/xpos/t;->d:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    .line 1307
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dspread/xpos/t;->e:[B

    .line 1360
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/t;->f:I

    .line 2603
    iput v0, p0, Lcom/dspread/xpos/t;->g:I

    .line 2604
    iput v0, p0, Lcom/dspread/xpos/t;->h:I

    .line 2605
    iput-object p1, p0, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private a(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;
    .locals 4

    .line 549
    new-instance v0, Lcom/dspread/xpos/i;

    const/4 v1, 0x1

    new-array v1, v1, [B

    int-to-byte p2, p2

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    const/16 p2, 0x16

    const/16 v2, 0x31

    const/16 v3, 0x3c

    invoke-direct {v0, p2, v2, v3, v1}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 550
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 551
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 31

    .line 1205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    const/4 v12, 0x0

    new-array v13, v12, [B

    .line 1206
    new-array v14, v12, [B

    .line 1207
    new-array v15, v12, [B

    .line 1208
    move-object/from16 v16, v13

    new-array v13, v12, [B

    .line 1209
    move-object/from16 v17, v13

    new-array v13, v12, [B

    .line 1210
    move-object/from16 v18, v13

    new-array v13, v12, [B

    const-string v12, ""

    if-eqz v4, :cond_1

    .line 1213
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1215
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1216
    move-object/from16 v19, v13

    array-length v13, v4

    move/from16 v30, v13

    move-object v13, v4

    move/from16 v4, v30

    goto :goto_1

    .line 1213
    :cond_0
    move-object/from16 v19, v13

    goto :goto_0

    .line 1210
    :cond_1
    move-object/from16 v19, v13

    .line 1216
    :goto_0
    move-object/from16 v13, v16

    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 1220
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1221
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 1222
    array-length v2, v14

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 1225
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v16, v15

    goto :goto_4

    .line 1226
    :cond_4
    :goto_3
    new-instance v5, Ljava/text/SimpleDateFormat;

    move-object/from16 v16, v15

    const-string/jumbo v15, "yyyyMMddHHmmss"

    invoke-direct {v5, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_5

    .line 1230
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1231
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 1232
    array-length v5, v15

    goto :goto_5

    :cond_5
    move-object/from16 v15, v16

    const/4 v5, 0x0

    :goto_5
    if-eqz v6, :cond_6

    .line 1236
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 1237
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 1238
    array-length v1, v6

    goto :goto_6

    :cond_6
    move-object/from16 v6, v17

    const/4 v1, 0x0

    :goto_6
    if-eqz v7, :cond_7

    .line 1242
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 1243
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1244
    array-length v3, v7

    goto :goto_7

    :cond_7
    move-object/from16 v7, v18

    const/4 v3, 0x0

    :goto_7
    if-eqz v11, :cond_8

    .line 1249
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 1250
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 1251
    array-length v10, v11

    goto :goto_8

    :cond_8
    move-object/from16 v11, v19

    const/4 v10, 0x0

    :goto_8
    add-int/lit8 v16, v2, 0x1

    add-int/lit8 v17, v16, 0x1

    move-object/from16 v18, v11

    add-int/lit8 v11, v17, 0x1

    add-int v19, v11, v4

    add-int/lit8 v20, v19, 0x1

    move-object/from16 v21, v12

    add-int/lit8 v12, v20, 0x1

    add-int v22, v12, v5

    add-int/lit8 v9, v22, 0x1

    add-int v23, v9, v1

    move-object/from16 p2, v7

    add-int/lit8 v7, v23, 0x1

    add-int v24, v7, v3

    add-int/lit8 v25, v24, 0x1

    add-int/lit8 v26, v25, 0x1

    add-int/lit8 v27, v26, 0x1

    add-int/lit8 v28, v27, 0x1

    add-int/lit8 v29, v28, 0x2

    move/from16 p4, v7

    const/4 v7, 0x1

    add-int/lit8 v29, v29, 0x1

    add-int v29, v29, v10

    const/16 v7, 0x8

    move/from16 p6, v10

    add-int/lit8 v10, v29, 0x8

    .line 1257
    new-array v7, v10, [B

    move/from16 p12, v10

    int-to-byte v10, v2

    .line 1259
    move/from16 v29, v3

    const/4 v3, 0x0

    aput-byte v10, v7, v3

    .line 1260
    const/4 v10, 0x1

    invoke-static {v14, v3, v7, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1264
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->ONLY_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const/4 v3, 0x3

    if-ne v8, v2, :cond_9

    .line 1265
    aput-byte v10, v7, v16

    goto :goto_9

    .line 1266
    :cond_9
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->ONLY_SWIPE_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    if-ne v8, v2, :cond_a

    .line 1267
    const/4 v2, 0x2

    aput-byte v2, v7, v16

    goto :goto_9

    .line 1268
    :cond_a
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    if-ne v8, v2, :cond_b

    .line 1269
    aput-byte v3, v7, v16

    goto :goto_9

    .line 1270
    :cond_b
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    if-ne v8, v2, :cond_c

    const/4 v2, 0x4

    .line 1271
    aput-byte v2, v7, v16

    goto :goto_9

    .line 1272
    :cond_c
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    if-ne v8, v2, :cond_d

    const/4 v2, 0x5

    .line 1273
    aput-byte v2, v7, v16

    goto :goto_9

    .line 1274
    :cond_d
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    if-ne v8, v2, :cond_e

    const/4 v2, 0x6

    .line 1275
    aput-byte v2, v7, v16

    goto :goto_9

    .line 1276
    :cond_e
    sget-object v2, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->ONLY_TAP_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    if-ne v8, v2, :cond_f

    const/4 v2, 0x7

    .line 1277
    aput-byte v2, v7, v16

    goto :goto_9

    :cond_f
    nop

    .line 1279
    aput-byte v3, v7, v16

    :goto_9
    int-to-byte v2, v4

    .line 1283
    aput-byte v2, v7, v17

    .line 1284
    const/4 v2, 0x0

    invoke-static {v13, v2, v7, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1287
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->w0()Lcom/dspread/xpos/QPOSService$DoTradeMode;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/QPOSService$DoTradeMode;->CHECK_CARD_NO_IPNUT_PIN:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    if-ne v2, v4, :cond_10

    .line 1288
    const/4 v2, 0x1

    aput-byte v2, v7, v19

    const/4 v2, 0x0

    goto :goto_a

    .line 1289
    :cond_10
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->w0()Lcom/dspread/xpos/QPOSService$DoTradeMode;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/QPOSService$DoTradeMode;->IS_DEBIT_OR_CREDIT:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    if-ne v2, v4, :cond_11

    .line 1290
    aput-byte v3, v7, v19

    const/4 v2, 0x0

    goto :goto_a

    :cond_11
    nop

    .line 1292
    const/4 v2, 0x0

    aput-byte v2, v7, v19

    :goto_a
    int-to-byte v4, v5

    .line 1295
    aput-byte v4, v7, v20

    .line 1296
    invoke-static {v15, v2, v7, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v4, v1

    .line 1299
    aput-byte v4, v7, v22

    .line 1300
    invoke-static {v6, v2, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v1, v29

    int-to-byte v4, v1

    .line 1303
    aput-byte v4, v7, v23

    .line 1304
    move-object/from16 v5, p2

    move/from16 v4, p4

    invoke-static {v5, v2, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v1, p8

    int-to-byte v1, v1

    .line 1307
    aput-byte v1, v7, v24

    .line 1310
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->q1()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1311
    const/4 v1, 0x1

    aput-byte v1, v7, v25

    const/4 v1, 0x0

    goto :goto_b

    :cond_12
    nop

    .line 1314
    const/4 v1, 0x0

    aput-byte v1, v7, v25

    .line 1316
    :goto_b
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->setPosInputAmountFlag(Z)V

    .line 1318
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->o1()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1319
    const/4 v2, 0x1

    aput-byte v2, v7, v26

    goto :goto_c

    :cond_13
    const/4 v2, 0x1

    .line 1321
    aput-byte v1, v7, v26

    .line 1323
    :goto_c
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->setPosDisplayAmountFlag(Z)V

    move-object/from16 v1, p10

    if-eqz v1, :cond_14

    .line 1326
    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_d

    .line 1323
    :cond_14
    move-object/from16 v2, v21

    .line 1327
    :goto_d
    const-string v1, "01"

    :cond_15
    nop

    .line 1329
    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    aput-byte v1, v7, v27

    move-object/from16 v1, p11

    if-eqz v1, :cond_16

    .line 1331
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1332
    :cond_16
    const-string v1, "0156"

    .line 1334
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_18

    .line 1335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_18
    add-int/lit8 v2, v28, 0x1

    .line 1337
    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    aput-byte v3, v7, v28

    add-int/lit8 v3, v2, 0x1

    .line 1338
    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    aput-byte v1, v7, v2

    add-int/lit8 v1, v3, 0x1

    move/from16 v10, p6

    int-to-byte v2, v10

    .line 1340
    aput-byte v2, v7, v3

    .line 1341
    move-object/from16 v11, v18

    const/4 v2, 0x0

    invoke-static {v11, v2, v7, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v10

    const/16 v3, 0x8

    add-int/lit8 v10, p12, -0x8

    .line 1344
    invoke-static {v7, v10}, Lcom/dspread/xpos/i0;->a([BI)[B

    move-result-object v4

    .line 1345
    invoke-static {v4, v2, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1347
    new-instance v1, Lcom/dspread/xpos/i;

    const/16 v2, 0x16

    const/16 v3, 0x20

    move/from16 v4, p3

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 1348
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1353
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->J1()V

    .line 1354
    invoke-virtual {v2, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 42

    .line 826
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    const/4 v13, 0x0

    new-array v14, v13, [B

    .line 827
    new-array v15, v13, [B

    .line 828
    move-object/from16 v16, v14

    new-array v14, v13, [B

    .line 829
    move-object/from16 v17, v14

    new-array v14, v13, [B

    .line 830
    move-object/from16 v18, v14

    new-array v14, v13, [B

    .line 831
    move-object/from16 v19, v14

    new-array v14, v13, [B

    .line 832
    move-object/from16 v20, v14

    new-array v14, v13, [B

    .line 833
    move-object/from16 v21, v14

    new-array v14, v13, [B

    .line 834
    move-object/from16 v22, v14

    new-array v14, v13, [B

    .line 836
    move-object/from16 v23, v14

    new-array v14, v13, [B

    .line 838
    move-object/from16 v24, v14

    new-array v14, v13, [B

    const-string v13, ""

    if-eqz v4, :cond_1

    .line 840
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 842
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 843
    move-object/from16 v25, v14

    array-length v14, v4

    move/from16 v41, v14

    move-object v14, v4

    move/from16 v4, v41

    goto :goto_1

    .line 840
    :cond_0
    move-object/from16 v25, v14

    goto :goto_0

    .line 838
    :cond_1
    move-object/from16 v25, v14

    .line 843
    :goto_0
    move-object/from16 v14, v16

    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 847
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 848
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 849
    array-length v2, v15

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v5, :cond_3

    .line 852
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 853
    :cond_3
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :cond_4
    if-eqz v5, :cond_5

    .line 857
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 858
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 859
    array-length v5, v1

    goto :goto_3

    :cond_5
    move-object/from16 v1, v17

    const/4 v5, 0x0

    :goto_3
    if-eqz v6, :cond_6

    .line 863
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 864
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 865
    array-length v3, v6

    goto :goto_4

    :cond_6
    move-object/from16 v6, v18

    const/4 v3, 0x0

    :goto_4
    if-eqz v7, :cond_7

    .line 869
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 870
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 871
    array-length v10, v7

    goto :goto_5

    :cond_7
    move-object/from16 v7, v19

    const/4 v10, 0x0

    :goto_5
    if-eqz v11, :cond_9

    .line 876
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 877
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 878
    move-object/from16 v16, v7

    array-length v7, v11

    goto :goto_7

    .line 876
    :cond_8
    move-object/from16 v16, v7

    goto :goto_6

    .line 871
    :cond_9
    move-object/from16 v16, v7

    .line 878
    :goto_6
    move-object/from16 v11, v20

    const/4 v7, 0x0

    .line 882
    :goto_7
    nop

    .line 883
    move-object/from16 v17, v11

    iget-object v11, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v11, :cond_a

    .line 884
    invoke-virtual {v11}, Lcom/dspread/xpos/QPOSService;->getFormatId()Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    .line 883
    :cond_a
    move-object v11, v13

    .line 884
    :goto_8
    if-eqz v11, :cond_c

    .line 886
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 887
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 888
    move-object/from16 v18, v6

    array-length v6, v11

    goto :goto_a

    .line 886
    :cond_b
    move-object/from16 v18, v6

    goto :goto_9

    .line 884
    :cond_c
    move-object/from16 v18, v6

    .line 888
    :goto_9
    move-object/from16 v11, v21

    const/4 v6, 0x0

    .line 892
    :goto_a
    nop

    .line 893
    move-object/from16 v19, v11

    iget-object v11, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v11, :cond_d

    .line 894
    invoke-virtual {v11}, Lcom/dspread/xpos/QPOSService;->o0()Ljava/lang/String;

    move-result-object v11

    goto :goto_b

    .line 893
    :cond_d
    move-object v11, v13

    .line 894
    :goto_b
    if-eqz v11, :cond_f

    .line 896
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 897
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 898
    move-object/from16 v20, v1

    array-length v1, v11

    goto :goto_d

    .line 896
    :cond_e
    move-object/from16 v20, v1

    goto :goto_c

    .line 894
    :cond_f
    move-object/from16 v20, v1

    .line 898
    :goto_c
    move-object/from16 v11, v22

    const/4 v1, 0x0

    .line 902
    :goto_d
    nop

    .line 903
    move-object/from16 v21, v11

    iget-object v11, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v11, :cond_10

    .line 904
    invoke-virtual {v11}, Lcom/dspread/xpos/QPOSService;->n0()Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    .line 903
    :cond_10
    move-object v11, v13

    .line 904
    :goto_e
    if-eqz v11, :cond_12

    .line 907
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 908
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 909
    move-object/from16 v22, v14

    array-length v14, v11

    move/from16 v41, v14

    move-object v14, v11

    move/from16 v11, v41

    goto :goto_10

    .line 907
    :cond_11
    move-object/from16 v22, v14

    goto :goto_f

    .line 904
    :cond_12
    move-object/from16 v22, v14

    .line 909
    :goto_f
    move-object/from16 v14, v23

    const/4 v11, 0x0

    .line 914
    :goto_10
    move-object/from16 v23, v14

    iget-object v14, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v14, :cond_13

    .line 915
    invoke-virtual {v14}, Lcom/dspread/xpos/QPOSService;->getIsSaveLog()Z

    move-result v14

    goto :goto_11

    .line 914
    :cond_13
    const/4 v14, 0x0

    .line 915
    :goto_11
    const-string v26, "01"

    if-nez v14, :cond_14

    .line 919
    move-object/from16 v14, v26

    goto :goto_12

    .line 921
    :cond_14
    const-string v14, "00"

    .line 924
    :goto_12
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 925
    array-length v8, v14

    .line 929
    move-object/from16 p2, v14

    iget-object v14, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/16 v27, 0x0

    if-eqz v14, :cond_15

    .line 930
    invoke-virtual {v14}, Lcom/dspread/xpos/QPOSService;->A0()Ljava/lang/String;

    move-result-object v14

    goto :goto_13

    .line 929
    :cond_15
    move-object/from16 v14, v27

    .line 930
    :goto_13
    if-eqz v14, :cond_17

    .line 932
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_16

    .line 933
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 934
    move-object/from16 v28, v15

    array-length v15, v14

    goto :goto_15

    .line 932
    :cond_16
    move-object/from16 v28, v15

    goto :goto_14

    .line 930
    :cond_17
    move-object/from16 v28, v15

    .line 940
    :goto_14
    move-object/from16 v14, v24

    const/4 v15, 0x0

    :goto_15
    nop

    .line 944
    move-object/from16 v24, v14

    iget-object v14, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v14, :cond_19

    .line 945
    invoke-virtual {v14}, Lcom/dspread/xpos/QPOSService;->I0()Z

    move-result v14

    if-nez v14, :cond_18

    move-object/from16 v14, v25

    goto :goto_16

    .line 949
    :cond_18
    const-string v14, "313431323137"

    invoke-static {v14}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 951
    :goto_16
    array-length v9, v14

    .line 952
    move/from16 v25, v9

    iget-object v9, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v9}, Lcom/dspread/xpos/QPOSService;->B0()Z

    move-result v9

    move/from16 v41, v25

    move-object/from16 v25, v14

    move/from16 v14, v41

    goto :goto_17

    .line 944
    :cond_19
    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 952
    :goto_17
    if-eqz v9, :cond_1a

    .line 956
    const-string v9, "FF01"

    invoke-static {v9}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    goto :goto_18

    .line 958
    :cond_1a
    const-string v9, "FF00"

    invoke-static {v9}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 960
    :goto_18
    array-length v0, v9

    add-int/lit8 v29, v2, 0x1

    add-int/lit8 v30, v29, 0x1

    move-object/from16 p4, v9

    add-int/lit8 v9, v30, 0x1

    add-int v31, v9, v4

    add-int/lit8 v32, v31, 0x1

    add-int/lit8 v33, v32, 0x1

    add-int v33, v33, v5

    move/from16 p5, v5

    const/4 v5, 0x1

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v3

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v10

    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 p6, v10

    const/4 v10, 0x2

    add-int/lit8 v33, v33, 0x2

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v7

    const/16 v10, 0x8

    add-int/lit8 v33, v33, 0x8

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v6

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v1

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v11

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v8

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v15

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v14

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v0

    const/16 v34, 0x2

    add-int/lit8 v33, v33, 0x2

    const-string v10, "04"

    const-string v34, "000000"

    if-eqz v12, :cond_1e

    .line 967
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_1d

    move-object/from16 v5, p10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1c

    move/from16 v36, v8

    move v8, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v12}, Lcom/dspread/xpos/QPOSService;->isSupportCashBack()Z

    move-result v12

    if-eqz v12, :cond_1b

    goto :goto_19

    :cond_1b
    move-object/from16 v37, v10

    goto :goto_1a

    :cond_1c
    move/from16 v36, v8

    move v8, v0

    move-object/from16 v0, p0

    .line 968
    :goto_19
    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 969
    move-object/from16 v37, v10

    array-length v10, v12

    add-int/lit8 v34, v10, 0x1

    add-int v33, v33, v34

    move-object/from16 v34, p13

    move/from16 v41, v33

    move/from16 v33, v8

    move/from16 v8, v41

    goto :goto_1b

    .line 967
    :cond_1d
    move-object/from16 v5, p10

    move/from16 v36, v8

    move-object/from16 v37, v10

    move v8, v0

    move-object/from16 v0, p0

    goto :goto_1a

    .line 960
    :cond_1e
    move-object/from16 v5, p10

    move/from16 v36, v8

    move-object/from16 v37, v10

    move v8, v0

    move-object/from16 v0, p0

    .line 972
    :goto_1a
    nop

    .line 973
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 974
    array-length v10, v12

    add-int/lit8 v38, v10, 0x1

    add-int v33, v33, v38

    move/from16 v41, v33

    move/from16 v33, v8

    move/from16 v8, v41

    .line 978
    :goto_1b
    move-object/from16 v38, v12

    new-array v12, v8, [B

    move/from16 p13, v8

    int-to-byte v8, v2

    .line 980
    move/from16 v39, v10

    const/4 v10, 0x0

    aput-byte v8, v12, v10

    .line 981
    move-object/from16 v8, v28

    move/from16 v28, v14

    const/4 v14, 0x1

    invoke-static {v8, v10, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 985
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v10, 0x3

    move-object/from16 v8, p9

    move/from16 v40, v36

    if-ne v8, v2, :cond_1f

    .line 986
    aput-byte v14, v12, v29

    goto/16 :goto_1e

    .line 987
    :cond_1f
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_SWIPE_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_20

    .line 988
    const/4 v2, 0x2

    aput-byte v2, v12, v29

    goto/16 :goto_1e

    .line 989
    :cond_20
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_21

    .line 990
    aput-byte v10, v12, v29

    goto/16 :goto_1e

    .line 991
    :cond_21
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-eq v8, v2, :cond_2e

    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE_NEW:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_22

    goto/16 :goto_1d

    .line 994
    :cond_22
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_23

    const/4 v2, 0x5

    .line 995
    aput-byte v2, v12, v29

    goto/16 :goto_1e

    .line 996
    :cond_23
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-eq v8, v2, :cond_2d

    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_24

    goto :goto_1c

    .line 998
    :cond_24
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_TAP_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_25

    .line 999
    const/4 v2, 0x7

    aput-byte v2, v12, v29

    goto :goto_1e

    .line 1000
    :cond_25
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_TAP_CARD_QF:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_26

    const/16 v2, 0xe

    .line 1001
    aput-byte v2, v12, v29

    goto :goto_1e

    .line 1002
    :cond_26
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_NOTUP:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_27

    .line 1003
    const/16 v2, 0x8

    aput-byte v2, v12, v29

    goto :goto_1e

    .line 1004
    :cond_27
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_NOTUP_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_28

    const/16 v2, 0x9

    .line 1005
    aput-byte v2, v12, v29

    goto :goto_1e

    .line 1006
    :cond_28
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_29

    const/16 v2, 0xb

    .line 1007
    aput-byte v2, v12, v29

    goto :goto_1e

    .line 1008
    :cond_29
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->TAP_INSERT_CARD_NOTUP:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_2a

    const/16 v2, 0xa

    .line 1009
    aput-byte v2, v12, v29

    goto :goto_1e

    .line 1010
    :cond_2a
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_DOWN:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_2b

    const/16 v2, 0xc

    .line 1011
    aput-byte v2, v12, v29

    goto :goto_1e

    .line 1012
    :cond_2b
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_NOTUP_DELAY:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_2c

    const/16 v2, 0xd

    .line 1013
    aput-byte v2, v12, v29

    goto :goto_1e

    .line 1015
    :cond_2c
    const-string/jumbo v2, "test trade mode"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 1016
    aput-byte v10, v12, v29

    goto :goto_1e

    :cond_2d
    :goto_1c
    nop

    .line 1017
    const/4 v2, 0x6

    aput-byte v2, v12, v29

    goto :goto_1e

    :cond_2e
    :goto_1d
    const/4 v2, 0x4

    .line 1018
    aput-byte v2, v12, v29

    :goto_1e
    int-to-byte v2, v4

    .line 1044
    aput-byte v2, v12, v30

    .line 1045
    move-object/from16 v2, v22

    const/4 v8, 0x0

    invoke-static {v2, v8, v12, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1048
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_31

    .line 1049
    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->w0()Lcom/dspread/xpos/QPOSService$DoTradeMode;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/QPOSService$DoTradeMode;->CHECK_CARD_NO_IPNUT_PIN:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    if-ne v2, v4, :cond_2f

    .line 1050
    const/4 v2, 0x1

    aput-byte v2, v12, v31

    move/from16 v31, v32

    const/4 v2, 0x0

    goto :goto_1f

    .line 1051
    :cond_2f
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->w0()Lcom/dspread/xpos/QPOSService$DoTradeMode;

    move-result-object v2

    sget-object v4, Lcom/dspread/xpos/QPOSService$DoTradeMode;->IS_DEBIT_OR_CREDIT:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    if-ne v2, v4, :cond_30

    .line 1052
    aput-byte v10, v12, v31

    move/from16 v31, v32

    const/4 v2, 0x0

    goto :goto_1f

    :cond_30
    nop

    .line 1054
    const/4 v2, 0x0

    aput-byte v2, v12, v31

    move/from16 v31, v32

    goto :goto_1f

    .line 1048
    :cond_31
    const/4 v2, 0x0

    .line 1054
    :goto_1f
    add-int/lit8 v4, v31, 0x1

    move/from16 v8, p5

    int-to-byte v9, v8

    .line 1058
    aput-byte v9, v12, v31

    .line 1059
    move-object/from16 v9, v20

    invoke-static {v9, v2, v12, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v8

    add-int/lit8 v8, v4, 0x1

    int-to-byte v9, v3

    .line 1062
    aput-byte v9, v12, v4

    .line 1063
    move-object/from16 v4, v18

    invoke-static {v4, v2, v12, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v3

    add-int/lit8 v3, v8, 0x1

    move/from16 v4, p6

    int-to-byte v9, v4

    .line 1066
    aput-byte v9, v12, v8

    .line 1067
    move-object/from16 v8, v16

    invoke-static {v8, v2, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    move/from16 v4, p8

    int-to-byte v4, v4

    .line 1070
    aput-byte v4, v12, v3

    .line 1073
    iget-object v3, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v3, :cond_35

    .line 1074
    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->q1()Z

    move-result v3

    if-eqz v3, :cond_32

    add-int/lit8 v3, v2, 0x1

    .line 1075
    const/4 v4, 0x1

    aput-byte v4, v12, v2

    .line 1076
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/dspread/xpos/QPOSService;->setPosInputAmountFlag(Z)V

    move v2, v3

    goto :goto_20

    .line 1077
    :cond_32
    iget-object v3, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->k1()Z

    move-result v3

    if-eqz v3, :cond_33

    add-int/lit8 v3, v2, 0x1

    .line 1078
    const/4 v4, 0x2

    aput-byte v4, v12, v2

    .line 1079
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/dspread/xpos/QPOSService;->setForceCVMRequired(Z)V

    move v2, v3

    goto :goto_20

    .line 1080
    :cond_33
    iget-object v3, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->j1()Z

    move-result v3

    if-eqz v3, :cond_34

    add-int/lit8 v3, v2, 0x1

    .line 1081
    aput-byte v10, v12, v2

    .line 1082
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/dspread/xpos/QPOSService;->setForceCVMNotRequired(Z)V

    move v2, v3

    goto :goto_20

    :cond_34
    const/4 v4, 0x0

    add-int/lit8 v3, v2, 0x1

    .line 1084
    aput-byte v4, v12, v2

    move v2, v3

    :cond_35
    :goto_20
    if-eqz v5, :cond_36

    .line 1096
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1097
    :cond_36
    move-object/from16 v5, v26

    :cond_37
    nop

    .line 1099
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/dspread/xpos/Util;->ByteToBit(B)[B

    move-result-object v4

    .line 1100
    iget-object v3, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const-string v8, "FF"

    if-eqz v3, :cond_3b

    .line 1101
    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->o1()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1102
    const/4 v3, 0x7

    const/4 v9, 0x1

    aput-byte v9, v4, v3

    const/4 v14, 0x0

    goto :goto_21

    :cond_38
    const/4 v3, 0x7

    const/4 v9, 0x1

    .line 1104
    const/4 v14, 0x0

    aput-byte v14, v4, v3

    .line 1106
    :goto_21
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1107
    const/4 v3, 0x6

    aput-byte v9, v4, v3

    goto :goto_22

    :cond_39
    const/4 v3, 0x6

    .line 1109
    aput-byte v14, v4, v3

    .line 1111
    :goto_22
    nop

    .line 1112
    array-length v3, v4

    move-object v14, v13

    const/4 v9, 0x0

    :goto_23
    if-ge v9, v3, :cond_3a

    aget-byte v10, v4, v9

    .line 1113
    move/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    const/4 v10, 0x3

    goto :goto_23

    .line 1115
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "posDisplayFlagStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    .line 1116
    const/4 v4, 0x2

    invoke-static {v14, v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v9

    aput-byte v9, v12, v2

    .line 1122
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/dspread/xpos/QPOSService;->setPosDisplayAmountFlag(Z)V

    move v2, v3

    .line 1126
    :cond_3b
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    add-int/lit8 v3, v2, 0x1

    .line 1127
    iget-object v4, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v4, v4, Lcom/dspread/xpos/QPOSService;->O1:Ljava/lang/String;

    invoke-static {v4}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v8, 0x0

    aget-byte v4, v4, v8

    aput-byte v4, v12, v2

    goto :goto_24

    :cond_3c
    const/4 v8, 0x0

    add-int/lit8 v3, v2, 0x1

    .line 1129
    invoke-static {v5}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aget-byte v4, v4, v8

    aput-byte v4, v12, v2

    :goto_24
    move-object/from16 v2, p11

    if-eqz v2, :cond_3d

    .line 1133
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1134
    :cond_3d
    const-string v2, "0156"

    .line 1136
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_3f

    .line 1137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3f
    add-int/lit8 v4, v3, 0x1

    .line 1139
    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    aput-byte v8, v12, v3

    add-int/lit8 v3, v4, 0x1

    .line 1140
    invoke-static {v2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v8, 0x1

    aget-byte v2, v2, v8

    aput-byte v2, v12, v4

    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v7

    .line 1142
    aput-byte v4, v12, v3

    .line 1143
    move-object/from16 v3, v17

    const/4 v4, 0x0

    invoke-static {v3, v4, v12, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    add-int/lit8 v3, v2, 0x1

    int-to-byte v7, v6

    .line 1146
    aput-byte v7, v12, v2

    .line 1147
    move-object/from16 v2, v19

    array-length v7, v2

    invoke-static {v2, v4, v12, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v6

    add-int/lit8 v2, v3, 0x1

    int-to-byte v6, v1

    .line 1150
    aput-byte v6, v12, v3

    .line 1151
    move-object/from16 v3, v21

    array-length v6, v3

    invoke-static {v3, v4, v12, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1

    int-to-byte v3, v11

    .line 1154
    aput-byte v3, v12, v2

    .line 1155
    move-object/from16 v2, v23

    array-length v3, v2

    invoke-static {v2, v4, v12, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v11

    add-int/lit8 v2, v1, 0x1

    move/from16 v3, v40

    int-to-byte v6, v3

    .line 1158
    aput-byte v6, v12, v1

    .line 1159
    move-object/from16 v1, p2

    array-length v6, v1

    invoke-static {v1, v4, v12, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    int-to-byte v3, v15

    .line 1162
    aput-byte v3, v12, v2

    .line 1163
    move-object/from16 v14, v24

    array-length v2, v14

    invoke-static {v14, v4, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v15

    add-int/lit8 v2, v1, 0x1

    move/from16 v3, v28

    int-to-byte v6, v3

    .line 1166
    aput-byte v6, v12, v1

    .line 1167
    move-object/from16 v14, v25

    array-length v1, v14

    invoke-static {v14, v4, v12, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    move/from16 v10, v39

    int-to-byte v3, v10

    .line 1171
    aput-byte v3, v12, v2

    .line 1172
    move-object/from16 v2, v38

    array-length v3, v2

    invoke-static {v2, v4, v12, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v10

    add-int/lit8 v2, v1, 0x1

    move/from16 v3, v33

    int-to-byte v6, v3

    .line 1175
    aput-byte v6, v12, v1

    .line 1176
    move-object/from16 v9, p4

    array-length v1, v9

    invoke-static {v9, v4, v12, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    .line 1180
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    iget v1, v1, Lcom/dspread/xpos/QPOSService;->M2:I

    invoke-static {v1}, Lcom/dspread/xpos/Util;->intToByteArray(I)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v4, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    const/16 v1, 0x8

    add-int/lit8 v8, p13, -0x8

    .line 1184
    invoke-static {v12, v8}, Lcom/dspread/xpos/i0;->a([BI)[B

    move-result-object v3

    .line 1185
    invoke-static {v3, v4, v12, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amountDescribeLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/16 v1, 0x20

    if-lez v10, :cond_43

    .line 1188
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_42

    move-object/from16 v2, v37

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->isSupportCashBack()Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_25

    :cond_40
    move/from16 v4, p3

    goto :goto_26

    .line 1189
    :cond_41
    :goto_25
    new-instance v2, Lcom/dspread/xpos/i;

    const/16 v3, 0x15

    move/from16 v4, p3

    invoke-direct {v2, v3, v1, v4, v12}, Lcom/dspread/xpos/i;-><init>(III[B)V

    goto :goto_27

    .line 1188
    :cond_42
    move/from16 v4, p3

    goto :goto_26

    .line 1187
    :cond_43
    move/from16 v4, p3

    .line 1191
    :goto_26
    new-instance v2, Lcom/dspread/xpos/i;

    const/16 v3, 0x16

    invoke-direct {v2, v3, v1, v4, v12}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 1194
    :goto_27
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 1195
    const-string/jumbo v2, "set1620ExcuStu 111"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1196
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_44

    .line 1197
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/QPOSService;->O(Z)V

    .line 1199
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->J1()V

    .line 1200
    const-string/jumbo v2, "playSound"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1201
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/QPOSService;->L(I)V

    .line 1202
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v27

    .line 1203
    const-string/jumbo v1, "set1620ExcuStu 222"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 1204
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->O(Z)V

    :cond_44
    return-object v27
.end method

.method private a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 10

    .line 552
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 553
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v1, 0x0

    aget-byte p2, p2, v1

    aput-byte p2, v0, v1

    .line 554
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v2, 0x32

    const/16 v3, 0x16

    const/4 v4, 0x2

    const/16 v5, 0x3c

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    .line 555
    aput-byte v1, v0, v6

    .line 556
    new-array p2, v4, [B

    .line 557
    invoke-static {v0, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    new-instance p3, Lcom/dspread/xpos/i;

    invoke-direct {p3, v3, v2, v5, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 559
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 560
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    goto/16 :goto_3

    .line 562
    :cond_0
    const-string p2, "//"

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 563
    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move p3, v1

    move v2, v6

    .line 565
    :goto_0
    array-length v7, p2

    sub-int/2addr v7, v6

    if-ge p3, v7, :cond_3

    if-eqz p3, :cond_2

    .line 566
    array-length v7, p2

    sub-int/2addr v7, v4

    if-ne p3, v7, :cond_1

    goto :goto_1

    .line 569
    :cond_1
    aget-object v7, p2, p3

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    goto :goto_2

    .line 570
    :cond_2
    :goto_1
    aget-object v7, p2, p3

    invoke-static {v7}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    :goto_2
    add-int/lit8 v8, v2, 0x1

    .line 574
    array-length v9, v7

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 575
    array-length v2, v7

    invoke-static {v7, v1, v0, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    array-length v2, v7

    add-int/2addr v2, v8

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    .line 578
    array-length v4, p2

    sub-int/2addr v4, v6

    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p2

    aput-byte p2, v0, v2

    .line 579
    new-array p2, p3, [B

    .line 580
    invoke-static {v0, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0x33

    invoke-direct {p3, v3, v0, v5, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 582
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 583
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    goto :goto_3

    .line 585
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 586
    array-length p3, p2

    int-to-byte p3, p3

    aput-byte p3, v0, v6

    .line 587
    array-length p3, p2

    invoke-static {p2, v1, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    array-length p2, p2

    add-int/2addr p2, v4

    .line 589
    new-array p3, p2, [B

    .line 590
    invoke-static {v0, v1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    new-instance p2, Lcom/dspread/xpos/i;

    invoke-direct {p2, v3, v2, v5, p3}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 592
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 593
    invoke-virtual {p1, v5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V
    .locals 31

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCheckCardResult====="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 619
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 638
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    .line 641
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    if-gez v6, :cond_0

    .line 642
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    :goto_0
    nop

    .line 646
    const/4 v7, 0x3

    invoke-virtual {v2, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x1

    .line 648
    invoke-virtual {v2, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 649
    invoke-virtual {v2, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v7, v6

    add-int/lit8 v6, v7, 0x1

    .line 651
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 652
    invoke-virtual {v2, v6, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x1

    .line 654
    invoke-virtual {v2, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 655
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v6

    add-int/lit8 v6, v7, 0x1

    .line 657
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 658
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x1

    .line 660
    invoke-virtual {v2, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 661
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v6

    add-int/lit8 v6, v7, 0x1

    .line 664
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 665
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x1

    .line 667
    invoke-virtual {v2, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 668
    new-instance v15, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v6

    add-int/lit8 v5, v7, 0x1

    .line 671
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 672
    invoke-virtual {v2, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x1

    .line 674
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 675
    invoke-virtual {v2, v6, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, 0x1

    .line 678
    invoke-virtual {v2, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 679
    invoke-virtual {v2, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    move-object/from16 v17, v1

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v5, v6

    .line 682
    nop

    .line 683
    const-string v6, ""

    if-ge v5, v4, :cond_1

    move-object/from16 v16, v1

    add-int/lit8 v1, v5, 0x1

    .line 685
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 686
    invoke-virtual {v2, v1, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v18

    add-int/2addr v5, v1

    move-object/from16 v1, v18

    goto :goto_1

    .line 683
    :cond_1
    move-object/from16 v16, v1

    move-object v1, v6

    .line 686
    :goto_1
    if-ge v5, v4, :cond_2

    move-object/from16 v18, v1

    add-int/lit8 v1, v5, 0x1

    .line 691
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 692
    invoke-virtual {v2, v1, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v19

    add-int/2addr v5, v1

    move-object/from16 v1, v19

    goto :goto_2

    .line 686
    :cond_2
    move-object/from16 v18, v1

    move-object v1, v6

    .line 696
    :goto_2
    if-ge v5, v4, :cond_3

    move-object/from16 v19, v1

    add-int/lit8 v1, v5, 0x1

    .line 698
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 699
    move-object/from16 v20, v7

    new-instance v7, Ljava/lang/String;

    move-object/from16 v21, v8

    invoke-virtual {v2, v1, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v1

    goto :goto_3

    .line 696
    :cond_3
    move-object/from16 v19, v1

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object v7, v6

    .line 703
    :goto_3
    nop

    .line 704
    nop

    .line 705
    const/4 v8, 0x1

    if-ge v5, v4, :cond_4

    .line 707
    new-array v1, v8, [B

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    const/16 v22, 0x0

    aput-byte v5, v1, v22

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v1

    .line 708
    move-object/from16 v23, v7

    const/4 v5, 0x1

    new-array v7, v5, [B

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v2, v8}, Lcom/dspread/xpos/j;->a(I)B

    move-result v8

    aput-byte v8, v7, v22

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v7

    .line 709
    move-object/from16 v24, v14

    const/4 v8, 0x1

    new-array v14, v8, [B

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    aput-byte v5, v14, v22

    invoke-static {v14}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v5

    .line 711
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 713
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v30, v7

    move-object v7, v5

    move v5, v8

    move-object/from16 v8, v30

    goto :goto_4

    .line 705
    :cond_4
    move-object/from16 v23, v7

    move-object/from16 v24, v14

    move-object v1, v6

    move-object v7, v1

    move-object v8, v7

    .line 717
    :goto_4
    if-ge v5, v4, :cond_5

    add-int/lit8 v14, v5, 0x1

    .line 719
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 720
    invoke-virtual {v2, v14, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v25

    add-int/2addr v5, v14

    move-object/from16 v14, v25

    goto :goto_5

    .line 717
    :cond_5
    move-object v14, v6

    .line 723
    :goto_5
    move-object/from16 v25, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v6

    const-string/jumbo v6, "test=="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v14, 0x1

    invoke-virtual {v2, v5, v14}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " index:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " countLen:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 724
    if-ge v5, v4, :cond_8

    .line 726
    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v27, v7

    const-string v7, "C9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 728
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    if-lez v6, :cond_6

    .line 730
    invoke-virtual {v2, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v5, v6

    goto :goto_6

    :cond_6
    const/4 v6, 0x1

    add-int/2addr v5, v6

    move-object/from16 v7, v26

    goto :goto_6

    .line 726
    :cond_7
    move-object/from16 v7, v26

    .line 736
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v5

    const-string v5, "newPinBlock=="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    move/from16 v5, v28

    goto :goto_7

    .line 724
    :cond_8
    move-object/from16 v27, v7

    move-object/from16 v7, v26

    .line 738
    :goto_7
    if-ge v5, v4, :cond_a

    .line 740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v8

    const-string v8, "index:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    add-int/lit8 v6, v5, 0x1

    .line 741
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 742
    invoke-virtual {v2, v6, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v6, v5

    .line 744
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v1

    const-string v1, "hashPan=="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    if-lez v5, :cond_9

    if-ge v6, v4, :cond_9

    .line 746
    iget v5, v0, Lcom/dspread/xpos/t;->f:I

    sub-int v14, v4, v6

    invoke-virtual {v2, v6, v14}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v5, v0}, Lcom/dspread/xpos/Util;->a(I[B)Ljava/util/Hashtable;

    move-result-object v0

    add-int/2addr v6, v14

    .line 748
    const-string/jumbo v5, "posID"

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v6

    goto :goto_8

    .line 750
    :cond_9
    move v5, v6

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_9

    .line 738
    :cond_a
    move-object/from16 v29, v1

    move-object/from16 v28, v8

    move-object/from16 v8, v26

    .line 750
    :goto_9
    if-ge v5, v4, :cond_b

    add-int/lit8 v0, v5, 0x1

    .line 754
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    .line 755
    invoke-virtual {v2, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v1

    .line 757
    const-string/jumbo v1, "track1Tag"

    invoke-virtual {v3, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v0

    :cond_b
    if-ge v5, v4, :cond_c

    add-int/lit8 v0, v5, 0x1

    .line 761
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    .line 762
    invoke-virtual {v2, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v1

    .line 764
    const-string/jumbo v1, "track2Tag"

    invoke-virtual {v3, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v0

    :cond_c
    if-ge v5, v4, :cond_d

    add-int/lit8 v0, v5, 0x1

    .line 768
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    .line 769
    invoke-virtual {v2, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v1

    .line 771
    const-string/jumbo v1, "track3Tag"

    invoke-virtual {v3, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v0

    :cond_d
    if-ge v5, v4, :cond_e

    add-int/lit8 v0, v5, 0x1

    .line 775
    invoke-virtual {v2, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v1

    .line 776
    invoke-virtual {v2, v0, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 778
    const-string/jumbo v1, "pinBlockTag"

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    const-string v1, "formatID"

    invoke-virtual {v3, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string v1, "maskedPAN"

    invoke-virtual {v3, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string v1, "expiryDate"

    invoke-virtual {v3, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string v1, "cardholderName"

    invoke-virtual {v3, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v1, "newPin"

    invoke-virtual {v3, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string/jumbo v1, "serviceCode"

    move-object/from16 v2, v24

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string/jumbo v1, "track1Length"

    move-object/from16 v6, v29

    invoke-virtual {v3, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string/jumbo v1, "track2Length"

    move-object/from16 v6, v28

    invoke-virtual {v3, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string/jumbo v1, "track3Length"

    move-object/from16 v5, v27

    invoke-virtual {v3, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encTracks"

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v0, "encTrack1"

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v0, "encTrack2"

    invoke-virtual {v3, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v0, "encTrack3"

    invoke-virtual {v3, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string/jumbo v0, "partialTrack"

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string/jumbo v0, "pinBlock"

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string/jumbo v0, "pinKsn"

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string/jumbo v0, "trackksn"

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string/jumbo v0, "trackRandomNumber"

    move-object/from16 v6, v18

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string/jumbo v0, "pinRandomNumber"

    move-object/from16 v6, v19

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string/jumbo v0, "psamNo"

    move-object/from16 v6, v23

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v0, "encPAN"

    move-object/from16 v6, v25

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v0, "hashPan"

    invoke-virtual {v3, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->isReturnCardInfoFlag()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->i1()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 810
    const-string/jumbo v1, "tttt "

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 811
    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_ONLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    move-object/from16 v2, p1

    if-eq v2, v1, :cond_f

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_OFFLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    if-eq v2, v1, :cond_f

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_DECLINED:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    if-ne v2, v1, :cond_11

    .line 812
    :cond_f
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const-string v4, "845A"

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5, v4}, Lcom/dspread/xpos/QPOSService;->getICCTag(IILjava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 813
    const-string/jumbo v4, "tlv"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/dspread/xpos/utils/h;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 814
    const-string v4, "84"

    invoke-static {v1, v4}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v4

    iget-object v4, v4, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    .line 815
    const-string v5, "5A"

    invoke-static {v1, v5}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v1

    iget-object v1, v1, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    .line 816
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 817
    const-string v6, "AID"

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v4, "CardNo"

    invoke-virtual {v5, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v5}, Lcom/dspread/xpos/QPOSService;->e(Ljava/util/Hashtable;)V

    goto :goto_a

    .line 809
    :cond_10
    move-object/from16 v2, p1

    .line 823
    :cond_11
    :goto_a
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/dspread/xpos/QPOSService;->V(Z)V

    .line 824
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v1, :cond_12

    .line 825
    invoke-virtual {v1, v2, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    :cond_12
    return-void
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;
    .locals 8

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>random: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 365
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 366
    new-array p2, v2, [B

    .line 367
    new-array v3, v2, [B

    const-string v4, ""

    if-eqz p3, :cond_0

    .line 368
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 369
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 372
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    .line 374
    array-length p4, p1

    add-int/2addr p4, v0

    array-length v5, p2

    add-int/2addr p4, v5

    array-length v5, p3

    add-int/2addr p4, v5

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "r leng: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 377
    iget-object v5, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v5}, Lcom/dspread/xpos/QPOSService;->getFormatId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 378
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 379
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 380
    array-length v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const/16 v5, 0x8

    add-int/2addr p4, v5

    add-int/lit8 p4, p4, 0x3

    add-int/2addr p4, v0

    add-int/2addr p4, v4

    .line 383
    new-array v6, p4, [B

    .line 386
    invoke-static {v1, v2, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    array-length v1, p1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 391
    array-length v1, p1

    const/4 v7, 0x2

    invoke-static {p1, v2, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    array-length p1, p1

    add-int/2addr p1, v7

    .line 394
    array-length v1, p2

    int-to-byte v1, v1

    aput-byte v1, v6, p1

    add-int/2addr p1, v0

    .line 396
    array-length v1, p2

    invoke-static {p2, v2, v6, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    array-length p2, p2

    add-int/2addr p1, p2

    .line 399
    array-length p2, p3

    int-to-byte p2, p2

    aput-byte p2, v6, p1

    add-int/2addr p1, v0

    .line 401
    array-length p2, p3

    invoke-static {p3, v2, v6, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    array-length p2, p3

    add-int/2addr p1, p2

    int-to-byte p2, v4

    .line 404
    aput-byte p2, v6, p1

    add-int/2addr p1, v0

    .line 406
    array-length p2, v3

    invoke-static {v3, v2, v6, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    array-length p2, v3

    add-int/2addr p1, p2

    .line 410
    const-string/jumbo p2, "x \u4e4b\u524d"

    invoke-static {p2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    sub-int/2addr p4, v5

    .line 411
    invoke-static {v6, p4}, Lcom/dspread/xpos/i0;->a([BI)[B

    move-result-object p2

    .line 412
    const-string/jumbo p3, "x \u4e4b\u540e"

    invoke-static {p3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 414
    invoke-static {p2, v2, v6, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    new-instance p1, Lcom/dspread/xpos/i;

    const/16 p2, 0x10

    invoke-direct {p1, p2, p2, p5, v6}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 419
    invoke-virtual {p6, p1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 420
    iget-object p1, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->J1()V

    .line 422
    invoke-virtual {p6, p5}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;
    .locals 16

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>random: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 299
    const/4 v5, 0x1

    new-array v7, v5, [B

    move/from16 v8, p1

    int-to-byte v8, v8

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    .line 300
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 301
    new-array v8, v9, [B

    .line 302
    new-array v10, v9, [B

    const-string v11, ""

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 304
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 307
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 309
    array-length v12, v6

    add-int/2addr v12, v5

    array-length v13, v8

    add-int/2addr v12, v13

    array-length v13, v1

    add-int/2addr v12, v13

    .line 310
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "r leng: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 312
    iget-object v13, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v13}, Lcom/dspread/xpos/QPOSService;->getFormatId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 313
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 314
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 315
    array-length v13, v10

    goto :goto_0

    :cond_1
    move v13, v9

    :goto_0
    const/16 v14, 0x8

    add-int/2addr v12, v14

    add-int/lit8 v12, v12, 0x3

    add-int/2addr v12, v5

    add-int/2addr v12, v5

    add-int/2addr v12, v13

    .line 318
    new-array v15, v12, [B

    .line 321
    invoke-static {v7, v9, v15, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    array-length v7, v6

    int-to-byte v7, v7

    aput-byte v7, v15, v5

    .line 326
    array-length v7, v6

    const/4 v14, 0x2

    invoke-static {v6, v9, v15, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    array-length v6, v6

    add-int/2addr v6, v14

    .line 329
    array-length v7, v8

    int-to-byte v7, v7

    aput-byte v7, v15, v6

    add-int/2addr v6, v5

    .line 331
    array-length v7, v8

    invoke-static {v8, v9, v15, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    array-length v7, v8

    add-int/2addr v6, v7

    .line 334
    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v15, v6

    add-int/2addr v6, v5

    .line 336
    array-length v7, v1

    invoke-static {v1, v9, v15, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    array-length v1, v1

    add-int/2addr v6, v1

    int-to-byte v1, v13

    .line 339
    aput-byte v1, v15, v6

    add-int/2addr v6, v5

    .line 341
    array-length v1, v10

    invoke-static {v10, v9, v15, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    array-length v1, v10

    add-int/2addr v6, v1

    if-eqz v3, :cond_3

    .line 344
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    goto :goto_2

    .line 345
    :cond_3
    :goto_1
    const-string v1, "01"

    :goto_2
    add-int/lit8 v3, v6, 0x1

    .line 347
    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    aget-byte v1, v1, v9

    aput-byte v1, v15, v6

    .line 350
    const-string/jumbo v1, "x \u4e4b\u524d"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/16 v1, 0x8

    sub-int/2addr v12, v1

    .line 351
    invoke-static {v15, v12}, Lcom/dspread/xpos/i0;->a([BI)[B

    move-result-object v5

    .line 352
    const-string/jumbo v6, "x \u4e4b\u540e"

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 354
    invoke-static {v5, v9, v15, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    new-instance v1, Lcom/dspread/xpos/i;

    const/16 v3, 0x10

    invoke-direct {v1, v3, v3, v2, v15}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 359
    invoke-virtual {v4, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 360
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->J1()V

    .line 362
    invoke-virtual {v4, v2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    return-object v1
.end method

.method private b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    .line 564
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x16

    const/16 v2, 0x41

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 565
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 566
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;)Lcom/dspread/xpos/j;
    .locals 27

    .line 423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    const/4 v9, 0x0

    new-array v10, v9, [B

    .line 424
    new-array v11, v9, [B

    .line 425
    new-array v12, v9, [B

    .line 426
    new-array v13, v9, [B

    .line 427
    new-array v14, v9, [B

    .line 428
    new-array v15, v9, [B

    const-string v9, ""

    if-eqz v4, :cond_0

    .line 430
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 432
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 433
    array-length v4, v10

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 437
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 438
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 439
    array-length v2, v11

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 443
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 444
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 445
    array-length v5, v12

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 449
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 450
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 451
    array-length v6, v13

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 455
    :goto_3
    move-object/from16 v16, v14

    iget-object v14, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v14}, Lcom/dspread/xpos/QPOSService;->getFormatId()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 456
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 457
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 458
    array-length v14, v15

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    if-eqz v7, :cond_5

    .line 461
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 462
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 463
    array-length v9, v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, v16

    const/4 v9, 0x0

    :goto_5
    add-int/lit8 v16, v2, 0x1

    add-int/lit8 v17, v16, 0x1

    add-int/lit8 v1, v17, 0x1

    add-int v18, v1, v4

    add-int/lit8 v19, v18, 0x1

    add-int/lit8 v3, v19, 0x1

    add-int v20, v3, v5

    move-object/from16 p2, v15

    add-int/lit8 v15, v20, 0x1

    add-int v21, v15, v6

    move-object/from16 p4, v7

    add-int/lit8 v7, v21, 0x1

    add-int v22, v7, v9

    add-int/lit8 v23, v22, 0x1

    add-int/lit8 v24, v23, 0x1

    add-int/lit8 v25, v24, 0x1

    add-int/lit8 v26, v25, 0x2

    move/from16 p5, v7

    const/4 v7, 0x1

    add-int/lit8 v26, v26, 0x1

    add-int v7, v26, v14

    .line 466
    new-array v7, v7, [B

    move/from16 v26, v14

    int-to-byte v14, v2

    .line 468
    move/from16 p7, v9

    const/4 v9, 0x0

    aput-byte v14, v7, v9

    .line 469
    const/4 v14, 0x1

    invoke-static {v11, v9, v7, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v9, 0x3

    if-ne v8, v2, :cond_6

    .line 474
    aput-byte v14, v7, v16

    goto :goto_6

    .line 475
    :cond_6
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_SWIPE_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_7

    .line 476
    const/4 v2, 0x2

    aput-byte v2, v7, v16

    goto :goto_6

    .line 477
    :cond_7
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_8

    .line 478
    aput-byte v9, v7, v16

    goto :goto_6

    .line 479
    :cond_8
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_9

    const/4 v2, 0x4

    .line 480
    aput-byte v2, v7, v16

    goto :goto_6

    .line 481
    :cond_9
    sget-object v2, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_TAP_CARD_QF:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    if-ne v8, v2, :cond_a

    const/16 v2, 0xe

    .line 482
    aput-byte v2, v7, v16

    goto :goto_6

    :cond_a
    nop

    .line 484
    aput-byte v9, v7, v16

    :goto_6
    int-to-byte v2, v4

    .line 488
    aput-byte v2, v7, v17

    .line 489
    const/4 v2, 0x0

    invoke-static {v10, v2, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->w0()Lcom/dspread/xpos/QPOSService$DoTradeMode;

    move-result-object v1

    sget-object v2, Lcom/dspread/xpos/QPOSService$DoTradeMode;->CHECK_CARD_NO_IPNUT_PIN:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    if-ne v1, v2, :cond_b

    .line 493
    const/4 v1, 0x1

    aput-byte v1, v7, v18

    const/4 v1, 0x0

    goto :goto_7

    .line 494
    :cond_b
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->w0()Lcom/dspread/xpos/QPOSService$DoTradeMode;

    move-result-object v1

    sget-object v2, Lcom/dspread/xpos/QPOSService$DoTradeMode;->IS_DEBIT_OR_CREDIT:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    if-ne v1, v2, :cond_c

    .line 495
    aput-byte v9, v7, v18

    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    nop

    .line 497
    const/4 v1, 0x0

    aput-byte v1, v7, v18

    :goto_7
    int-to-byte v2, v5

    .line 500
    aput-byte v2, v7, v19

    .line 501
    invoke-static {v12, v1, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v2, v6

    .line 504
    aput-byte v2, v7, v20

    .line 505
    invoke-static {v13, v1, v7, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v9, p7

    int-to-byte v2, v9

    .line 508
    aput-byte v2, v7, v21

    .line 509
    move-object/from16 v3, p4

    move/from16 v2, p5

    invoke-static {v3, v1, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v1, p8

    int-to-byte v1, v1

    .line 512
    aput-byte v1, v7, v22

    .line 515
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->q1()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 516
    const/4 v1, 0x1

    aput-byte v1, v7, v23

    const/4 v1, 0x0

    goto :goto_8

    :cond_d
    nop

    .line 519
    const/4 v1, 0x0

    aput-byte v1, v7, v23

    .line 521
    :goto_8
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/QPOSService;->setPosInputAmountFlag(Z)V

    .line 523
    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->o1()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 524
    const/4 v2, 0x1

    aput-byte v2, v7, v24

    goto :goto_9

    :cond_e
    const/4 v2, 0x1

    .line 526
    aput-byte v1, v7, v24

    .line 528
    :goto_9
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->setPosDisplayAmountFlag(Z)V

    add-int/lit8 v1, v25, 0x1

    move/from16 v14, v26

    int-to-byte v2, v14

    .line 530
    aput-byte v2, v7, v25

    .line 531
    move-object/from16 v15, p2

    array-length v2, v15

    const/4 v3, 0x0

    invoke-static {v15, v3, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    new-instance v1, Lcom/dspread/xpos/i;

    const/16 v2, 0x16

    const/16 v3, 0x20

    move/from16 v4, p3

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 533
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 535
    invoke-virtual {v2, v4}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v1

    return-object v1
.end method

.method private b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/j;)Ljava/util/Hashtable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Lcom/dspread/xpos/j;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, p2, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v3

    const-string/jumbo v4, "result"

    if-eqz v3, :cond_d

    .line 11
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v5, 0x42

    if-ne v3, v5, :cond_0

    .line 12
    iget-object p2, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 13
    iget-object v3, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, p2, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v5, 0x41

    if-ne v3, v5, :cond_1

    .line 21
    iget-object p2, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 22
    iget-object v3, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, p2, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 29
    :cond_1
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    const-string/jumbo v5, "uc.result() error = "

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_c

    .line 30
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    invoke-virtual {p2, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "poll card result:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2, v6, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    aget-byte v3, v3, v6

    const-string v8, "DoTradeResult"

    if-ne v3, v7, :cond_2

    .line 33
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {v0, v8, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    nop

    .line 38
    invoke-virtual {p2, v7, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    aget-byte v1, v1, v6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 39
    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->BAD_SWIPE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-direct {p0, v1, p2}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    .line 40
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v1, 0x22

    const/16 v3, 0x1e

    invoke-direct {p2, v1, v6, v6, v3}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 41
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 42
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 43
    iget-object v1, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1, p2, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 45
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 48
    :cond_3
    iget-object v1, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 53
    :cond_4
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_b

    .line 54
    invoke-virtual {p2, v6, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    aget-byte p1, p1, v6

    if-ne p1, v7, :cond_5

    .line 55
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {v0, v8, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_5
    nop

    .line 60
    invoke-virtual {p2, v7, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    aget-byte p1, p1, v6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 61
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    .line 62
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 65
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uc.getBytes(1, 1)[0] error = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, v7, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->e()I

    move-result p1

    if-nez p1, :cond_7

    .line 73
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    return-object p1

    :cond_7
    nop

    .line 76
    invoke-virtual {p2, v7, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    aget-byte p1, p1, v6

    iput p1, p0, Lcom/dspread/xpos/t;->f:I

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>encryMode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/dspread/xpos/t;->f:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 78
    iget p1, p0, Lcom/dspread/xpos/t;->f:I

    const/16 v1, 0x11

    if-eq p1, v1, :cond_a

    const/16 v1, 0x17

    if-eq p1, v1, :cond_a

    if-ne p1, v7, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x20

    if-ne p1, v1, :cond_9

    .line 81
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/t;->c(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    goto :goto_1

    .line 90
    :cond_9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/t;->e(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)Ljava/util/Hashtable;

    move-result-object p1

    return-object p1

    .line 92
    :cond_a
    :goto_0
    sget-object p1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/t;->d(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    .line 106
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 110
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v1, v7, [B

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    aput-byte p2, v1, v6

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    .line 112
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 116
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v1, v7, [B

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p2

    aput-byte p2, v1, v6

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object p2, Lcom/dspread/xpos/QPOSService$Error;->TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    .line 120
    :cond_d
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 4

    .line 82
    const-string v0, ""

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 88
    :cond_0
    const/4 p2, 0x0

    move-object v3, v0

    move v0, p2

    move-object p2, v3

    :goto_0
    invoke-static {v0}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "00"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 91
    new-instance p3, Lcom/dspread/xpos/i;

    const/16 v0, 0x10

    const/16 v1, 0x70

    const/16 v2, 0x3c

    invoke-direct {p3, v0, v1, v2, p2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 92
    invoke-virtual {p1, p3}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 93
    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V
    .locals 17

    .line 1
    move-object/from16 v0, p2

    const-string v1, "doCheckCardResult_hh"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v2

    .line 9
    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    add-int/lit8 v5, v4, -0x4

    .line 10
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v4, v7

    add-int/lit8 v7, v4, -0x4

    .line 13
    const/4 v8, 0x4

    invoke-virtual {v0, v7, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    .line 16
    const/16 v8, 0xa

    invoke-virtual {v0, v4, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v4, v8

    .line 20
    const/16 v8, 0x8

    invoke-virtual {v0, v4, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v4, v8

    .line 24
    invoke-virtual {v0, v4, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v11

    invoke-static {v11}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v4, v8

    .line 27
    new-array v3, v3, [B

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    aput-byte v4, v3, v6

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 28
    invoke-virtual {v0, v8, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v8, v3

    add-int/lit8 v3, v8, 0x1

    .line 31
    invoke-virtual {v0, v8}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 32
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 35
    invoke-virtual {v0, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 36
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 39
    invoke-virtual {v0, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 40
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x1

    .line 43
    invoke-virtual {v0, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 44
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    .line 47
    invoke-virtual {v0, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 48
    new-instance v15, Ljava/lang/String;

    move-object/from16 v16, v7

    invoke-virtual {v0, v3, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v3, v6

    .line 51
    nop

    .line 52
    nop

    .line 53
    const-string v6, ""

    if-ge v3, v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 55
    invoke-virtual {v0, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    add-int/lit8 v7, v2, 0x1

    .line 56
    invoke-virtual {v0, v2}, Lcom/dspread/xpos/j;->a(I)B

    move-result v2

    .line 57
    invoke-virtual {v0, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v0

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object v6, v3

    goto :goto_0

    .line 53
    :cond_0
    move-object v0, v6

    move-object v2, v0

    .line 65
    :goto_0
    const-string v3, "formatID"

    invoke-virtual {v1, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v3, "maskedPAN"

    invoke-virtual {v1, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v3, "expiryDate"

    invoke-virtual {v1, v3, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v3, "cardholderName"

    invoke-virtual {v1, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v3, "serviceCode"

    invoke-virtual {v1, v3, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v3, "trackblock"

    invoke-virtual {v1, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v3, "psamId"

    invoke-virtual {v1, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v3, "posId"

    invoke-virtual {v1, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v3, "pinblock"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v3, "macblock"

    invoke-virtual {v1, v3, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v3, "track1Length"

    invoke-virtual {v1, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v3, "track2Length"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v2, "track3Length"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "trackRandomNumber"

    move-object/from16 v2, v16

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method private d(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    const/16 v5, 0x8

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    .line 8
    array-length v7, v4

    invoke-static {v4, v7}, Lcom/dspread/xpos/i0;->a([BI)[B

    move-result-object v4

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v1, v7, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "my mac:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v8, v6

    .line 13
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_1

    .line 14
    aget-byte v9, v7, v8

    aget-byte v10, v4, v8

    if-eq v9, v10, :cond_0

    .line 15
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->MAC_ERROR:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    return-void

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 21
    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v8

    aput-byte v8, v4, v6

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    .line 22
    invoke-virtual {v1, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x3

    .line 26
    const/16 v7, 0xc

    invoke-virtual {v1, v4, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v4, v7

    .line 30
    invoke-virtual {v1, v4, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v5

    .line 34
    const/16 v9, 0xa

    invoke-virtual {v1, v4, v9}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v4, v9

    .line 38
    invoke-virtual {v1, v4, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v4, v5

    add-int/lit8 v11, v4, 0x1

    .line 41
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 42
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v1, v11, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v11, v4

    add-int/lit8 v4, v11, 0x1

    .line 45
    invoke-virtual {v1, v11}, Lcom/dspread/xpos/j;->a(I)B

    move-result v11

    .line 46
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v1, v4, v11}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v11

    add-int/lit8 v11, v4, 0x1

    .line 49
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 50
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v1, v11, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v11, v4

    add-int/lit8 v4, v11, 0x1

    .line 53
    invoke-virtual {v1, v11}, Lcom/dspread/xpos/j;->a(I)B

    move-result v11

    .line 54
    new-instance v15, Ljava/lang/String;

    invoke-virtual {v1, v4, v11}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v11

    add-int/lit8 v5, v4, 0x1

    .line 57
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 58
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v4

    .line 61
    nop

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countLen: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", index: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/16 v0, 0x8

    sub-int/2addr v3, v0

    if-ge v5, v3, :cond_2

    add-int/lit8 v0, v5, 0x1

    .line 64
    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    .line 65
    invoke-virtual {v1, v0, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_2
    const-string v0, ""

    .line 74
    :goto_1
    const-string v1, "formatID"

    invoke-virtual {v2, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "maskedPAN"

    invoke-virtual {v2, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "expiryDate"

    invoke-virtual {v2, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "cardholderName"

    invoke-virtual {v2, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v1, "serviceCode"

    invoke-virtual {v2, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v1, "trackblock"

    invoke-virtual {v2, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v1, "psamId"

    invoke-virtual {v2, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "posId"

    invoke-virtual {v2, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "pinblock"

    invoke-virtual {v2, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "macblock"

    invoke-virtual {v2, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "activateCode"

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method private e(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)Ljava/util/Hashtable;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/QPOSService$DoTradeResult;",
            "Lcom/dspread/xpos/j;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "code"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    .line 10
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 11
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x1

    .line 14
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 15
    invoke-virtual {v0, v6, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, 0x1

    .line 18
    invoke-virtual {v0, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 19
    invoke-virtual {v0, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x1

    .line 22
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 23
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, 0x1

    .line 26
    invoke-virtual {v0, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 27
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x1

    .line 30
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 31
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, 0x1

    .line 34
    invoke-virtual {v0, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 35
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x1

    .line 38
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 39
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, 0x1

    .line 42
    invoke-virtual {v0, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 43
    invoke-virtual {v0, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v15

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x1

    .line 46
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 47
    invoke-virtual {v0, v6, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, 0x1

    .line 50
    invoke-virtual {v0, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 51
    invoke-virtual {v0, v5, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    move-object/from16 v18, v1

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v5, v6

    .line 54
    nop

    .line 55
    const-string v6, ""

    if-ge v5, v4, :cond_0

    move-object/from16 v16, v3

    add-int/lit8 v3, v5, 0x1

    .line 57
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 58
    invoke-virtual {v0, v3, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v19

    add-int/2addr v5, v3

    move-object/from16 v3, v19

    goto :goto_0

    .line 55
    :cond_0
    move-object/from16 v16, v3

    move-object v3, v6

    .line 58
    :goto_0
    if-ge v5, v4, :cond_1

    move-object/from16 v19, v3

    add-int/lit8 v3, v5, 0x1

    .line 63
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 64
    invoke-virtual {v0, v3, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v20

    add-int/2addr v5, v3

    move-object/from16 v3, v20

    goto :goto_1

    .line 58
    :cond_1
    move-object/from16 v19, v3

    move-object v3, v6

    .line 68
    :goto_1
    if-ge v5, v4, :cond_2

    move-object/from16 v20, v3

    add-int/lit8 v3, v5, 0x1

    .line 70
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 71
    move-object/from16 v21, v1

    new-instance v1, Ljava/lang/String;

    move-object/from16 v22, v15

    invoke-virtual {v0, v3, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-direct {v1, v15}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v3

    goto :goto_2

    .line 68
    :cond_2
    move-object/from16 v21, v1

    move-object/from16 v20, v3

    move-object/from16 v22, v15

    move-object v1, v6

    .line 75
    :goto_2
    nop

    .line 76
    nop

    .line 77
    if-ge v5, v4, :cond_3

    add-int/lit8 v3, v5, 0x1

    .line 79
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    add-int/lit8 v15, v3, 0x1

    .line 80
    invoke-virtual {v0, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    add-int/lit8 v23, v15, 0x1

    .line 81
    invoke-virtual {v0, v15}, Lcom/dspread/xpos/j;->a(I)B

    move-result v15

    .line 83
    move-object/from16 v24, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    move/from16 v5, v23

    goto :goto_3

    .line 77
    :cond_3
    move-object/from16 v24, v1

    move-object v1, v6

    move-object v3, v1

    move-object v15, v3

    .line 88
    :goto_3
    if-ge v5, v4, :cond_4

    add-int/lit8 v4, v5, 0x1

    .line 90
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    .line 91
    invoke-virtual {v0, v4, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 88
    :cond_4
    move-object v4, v6

    .line 94
    :goto_4
    nop

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v5

    move-object/from16 v23, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 97
    const-string v4, "C908"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 98
    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x4

    add-int/lit8 v4, v4, 0x14

    .line 99
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 103
    :cond_5
    move-object v0, v6

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    const-string v5, "formatID"

    invoke-virtual {v2, v5, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v5, "maskedPAN"

    invoke-virtual {v2, v5, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v5, "expiryDate"

    invoke-virtual {v2, v5, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v5, "cardholderName"

    invoke-virtual {v2, v5, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v5, "serviceCode"

    invoke-virtual {v2, v5, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v5, "track1Length"

    invoke-virtual {v2, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v1, "track2Length"

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v1, "track3Length"

    invoke-virtual {v2, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "encTracks"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "encTrack1"

    invoke-virtual {v2, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "encTrack2"

    invoke-virtual {v2, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "encTrack3"

    invoke-virtual {v2, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v1, "partialTrack"

    invoke-virtual {v2, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v1, "pinBlock"

    move-object/from16 v3, v22

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v1, "pinKsn"

    move-object/from16 v3, v21

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v1, "trackksn"

    move-object/from16 v3, v16

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v1, "trackRandomNumber"

    move-object/from16 v6, v19

    invoke-virtual {v2, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v1, "pinRandomNumber"

    move-object/from16 v6, v20

    invoke-virtual {v2, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v1, "psamNo"

    move-object/from16 v6, v24

    invoke-virtual {v2, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "encPAN"

    move-object/from16 v4, v23

    invoke-virtual {v2, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "newPin"

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SWIPE_CARD_OK:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 128
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v1, "result"

    move-object/from16 v3, v18

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-object/from16 v1, v17

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "DoTradeResult"

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "content"

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method


# virtual methods
.method protected a()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/t;->d:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    return-object v0
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;
    .locals 7

    .line 594
    const-string v0, "EMVChangePin begin =  "

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 599
    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 600
    new-array v2, v2, [B

    .line 601
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 603
    invoke-static {v0}, Lcom/dspread/xpos/Util;->intToByte(I)[B

    move-result-object v3

    .line 605
    const/4 v4, 0x1

    aget-byte v5, v3, v4

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 606
    aget-byte v5, v3, v6

    aput-byte v5, v3, v4

    .line 607
    aput-byte v6, v3, v6

    :cond_0
    nop

    .line 609
    const/4 v4, 0x2

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    invoke-static {p2, v6, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    aput-byte v4, v2, v1

    .line 614
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

    .line 615
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x16

    const/16 v1, 0xf1

    const/16 v3, 0x3c

    invoke-direct {p2, v0, v1, v3, v2}, Lcom/dspread/xpos/i;-><init>(III[B)V

    .line 616
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 617
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;)Ljava/util/Hashtable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/Vpos;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/dspread/xpos/QPOSService$CardTradeMode;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-direct/range {p0 .. p9}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/j;)Ljava/util/Hashtable;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/t;->d:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/Vpos;)Z
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p6}, Lcom/dspread/xpos/t;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p6, p1}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/j;)Z

    move-result p1

    return p1
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dspread/xpos/Vpos;)Z
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p7}, Lcom/dspread/xpos/t;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p7, p1}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/j;)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/j;)Z
    .locals 17

    .line 10
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    goto :goto_0

    .line 13
    :cond_0
    iget-object v3, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_48

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v5, 0x42

    if-ne v3, v5, :cond_2

    .line 18
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 20
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/Service;->b(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 23
    iget-object v3, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_2

    return v4

    .line 30
    :cond_2
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v5, 0x52

    if-ne v3, v5, :cond_4

    .line 31
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 33
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    goto :goto_2

    .line 35
    :cond_3
    iget-object v0, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/Service;->b(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 36
    iget-object v3, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_4

    return v4

    .line 44
    :cond_4
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v5, 0x6b

    if-ne v3, v5, :cond_6

    .line 45
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v0, :cond_5

    .line 46
    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 47
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    goto :goto_3

    .line 49
    :cond_5
    iget-object v0, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/Service;->b(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 50
    iget-object v3, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    :goto_3
    if-nez v3, :cond_4

    return v4

    .line 56
    :cond_6
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v6, 0x65

    if-ne v3, v6, :cond_8

    .line 57
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v0, :cond_7

    .line 58
    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 59
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    goto :goto_4

    .line 61
    :cond_7
    iget-object v0, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/Service;->b(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 62
    iget-object v3, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    :goto_4
    if-nez v3, :cond_6

    return v4

    .line 69
    :cond_8
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v3, v6, :cond_10

    .line 71
    const-string/jumbo v3, "select emv app"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1620:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v6

    invoke-virtual {v0, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v6

    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alllen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v9, v4

    move v8, v7

    :goto_5
    if-ge v8, v6, :cond_9

    add-int/2addr v9, v4

    add-int/2addr v9, v4

    add-int/lit8 v10, v9, 0x1

    .line 84
    invoke-virtual {v0, v9}, Lcom/dspread/xpos/j;->a(I)B

    move-result v9

    .line 85
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v0, v10, v9}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v9, v10

    .line 87
    invoke-virtual {v3, v8, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 90
    :cond_9
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 91
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v3}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/ArrayList;)V

    .line 94
    invoke-virtual {v2, v7}, Lcom/dspread/xpos/Vpos;->i(Z)V

    move v3, v7

    .line 95
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/t;->a()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v6, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const/16 v8, 0x802

    if-ne v0, v6, :cond_c

    if-le v3, v8, :cond_b

    .line 98
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v7}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    goto :goto_7

    .line 102
    :cond_b
    :try_start_0
    sget v0, Lcom/dspread/xpos/t;->i:I

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    .line 107
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/dspread/xpos/Vpos;->v()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------isNeedQuitCommand--------"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/dspread/xpos/Vpos;->v()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return v4

    .line 113
    :cond_c
    :goto_7
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v0

    if-nez v0, :cond_e

    if-le v3, v8, :cond_d

    .line 115
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->APP_SELECT_TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    :cond_d
    return v4

    .line 119
    :cond_e
    const-string v0, "------22--------"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select emv app getEmvTradeState()= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/t;->a()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v6}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 133
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v0

    if-nez v0, :cond_f

    return v4

    .line 136
    :cond_f
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->L0()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;I)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 137
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    if-nez v3, :cond_8

    return v4

    .line 143
    :cond_10
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v8, 0x41

    if-ne v3, v8, :cond_12

    .line 144
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v0, :cond_11

    .line 145
    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 146
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    goto :goto_8

    .line 148
    :cond_11
    iget-object v0, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/Service;->b(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 149
    iget-object v3, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    :goto_8
    if-nez v3, :cond_12

    return v4

    .line 158
    :cond_12
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v8, 0x66

    const/16 v9, 0x22

    const/16 v10, 0x1e

    const/4 v11, 0x3

    if-ne v3, v8, :cond_16

    .line 159
    invoke-virtual {v0, v4, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    aget-byte v3, v3, v7

    const/16 v8, 0x15e

    if-ne v3, v6, :cond_15

    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    aget-byte v3, v3, v7

    if-ge v3, v11, :cond_15

    .line 160
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v8}, Lcom/dspread/xpos/QPOSService;->L(I)V

    .line 161
    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->BAD_SWIPE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-direct {v1, v3, v0}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    .line 162
    new-instance v0, Lcom/dspread/xpos/i;

    invoke-direct {v0, v9, v7, v7, v10}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 163
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 164
    invoke-virtual {v2, v10}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 165
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v3, :cond_13

    .line 166
    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    goto :goto_9

    .line 168
    :cond_13
    iget-object v3, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    :goto_9
    if-nez v3, :cond_14

    return v4

    .line 174
    :cond_14
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v3

    if-nez v3, :cond_12

    return v7

    :cond_15
    nop

    .line 177
    invoke-virtual {v0, v4, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    aget-byte v3, v3, v7

    if-ne v3, v11, :cond_12

    .line 178
    iget-object v2, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v2, v8}, Lcom/dspread/xpos/QPOSService;->L(I)V

    .line 179
    sget-object v2, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    return v4

    .line 186
    :cond_16
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    const/16 v8, 0xa

    const-string v12, ""

    if-ne v3, v8, :cond_1b

    .line 187
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v7}, Lcom/dspread/xpos/QPOSService;->S(Z)V

    .line 188
    const-string v0, "<<<<<<<<<<<<excute start: doEmvApp"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 191
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->H1()V

    .line 192
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/t;->a()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v3, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v0, v3, :cond_17

    .line 194
    :try_start_1
    sget v0, Lcom/dspread/xpos/t;->i:I

    int-to-long v13, v0

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_a

    .line 199
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set emv pin getEmvTradeState()= "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/t;->a()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 201
    nop

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/t;->a()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v8, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->CANCEL:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const-string v13, "00"

    if-ne v0, v8, :cond_18

    .line 203
    goto :goto_b

    .line 204
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/dspread/xpos/t;->a()Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sget-object v8, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->SET:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    if-ne v0, v8, :cond_19

    .line 205
    const-string v13, "01"

    .line 207
    :cond_19
    :goto_b
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/DoEmvApp$EmvTradeState;)V

    .line 211
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->J0()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->i0()V

    if-eqz v0, :cond_1a

    .line 213
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 214
    const-string v3, "EMPTYPIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 215
    nop

    .line 216
    const-string v13, "FF"

    move-object v0, v12

    .line 219
    :cond_1a
    invoke-direct {v1, v2, v13, v0}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 220
    const-string v3, ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>set emv pin end"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 221
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 224
    const-string v0, ">>>>>>>>>set emv pin failed"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v4

    .line 228
    :cond_1b
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/16 v8, 0x96

    invoke-virtual {v3, v8}, Lcom/dspread/xpos/QPOSService;->L(I)V

    .line 229
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v7}, Lcom/dspread/xpos/QPOSService;->S(Z)V

    .line 230
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    const/16 v8, 0x31

    const-wide/16 v13, 0x64

    if-ne v3, v8, :cond_22

    .line 231
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v4}, Lcom/dspread/xpos/QPOSService;->S(Z)V

    .line 232
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v4}, Lcom/dspread/xpos/QPOSService;->U(Z)V

    .line 235
    invoke-virtual {v0, v7, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    .line 236
    invoke-virtual {v0, v6, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v3, v6

    add-int/lit8 v9, v3, 0x1

    .line 238
    invoke-virtual {v0, v3}, Lcom/dspread/xpos/j;->a(I)B

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_c

    :cond_1c
    add-int/lit8 v3, v9, 0x1

    .line 243
    invoke-virtual {v0, v9}, Lcom/dspread/xpos/j;->a(I)B

    move v9, v3

    .line 245
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "publick ="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, v9, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    add-int/2addr v9, v6

    .line 248
    invoke-virtual {v0, v9, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v9, v3

    .line 250
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    if-ge v9, v3, :cond_1d

    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->i1()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 251
    invoke-virtual {v0, v9, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    add-int/2addr v9, v6

    .line 253
    invoke-virtual {v0, v9, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/dspread/xpos/utils/h;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 255
    const-string v3, "84"

    invoke-static {v0, v3}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v3

    iget-object v3, v3, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    .line 256
    const-string v9, "5A"

    invoke-static {v0, v9}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v0

    iget-object v0, v0, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    .line 257
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 258
    const-string v11, "AID"

    invoke-virtual {v9, v11, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {v0}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CardNo"

    invoke-virtual {v9, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cardinfo = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 261
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v4}, Lcom/dspread/xpos/QPOSService;->V(Z)V

    .line 262
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v9}, Lcom/dspread/xpos/QPOSService;->e(Ljava/util/Hashtable;)V

    .line 265
    :cond_1d
    invoke-static {}, Lcom/dspread/xpos/utils/AESUtil;->generateKey()Ljava/lang/String;

    move-result-object v3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "randomR1 "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v9, 0x200

    if-ne v0, v9, :cond_1e

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 272
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_d
    invoke-static {v8, v10}, Lcom/dspread/xpos/Util;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v8

    .line 278
    :try_start_2
    invoke-static {v8, v0}, Lcom/dspread/xpos/Util;->getEnDeRSA(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    .line 282
    :goto_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encryptResult "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 283
    iget-object v8, v1, Lcom/dspread/xpos/t;->c:Lcom/dspread/xpos/s;

    invoke-virtual {v8, v2, v0}, Lcom/dspread/xpos/s;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 285
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v8

    if-nez v8, :cond_22

    .line 286
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resut  == "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 289
    :try_start_3
    invoke-static {v3, v8}, Lcom/dspread/xpos/utils/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    .line 293
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resu == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 296
    const-string/jumbo v3, "randomDataLen start"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v8, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x10

    invoke-static {v3, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v3, v6

    .line 298
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "randomDataLen "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    add-int/2addr v3, v6

    .line 299
    invoke-virtual {v8, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v3, 0x2

    .line 301
    invoke-virtual {v8, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v3, v6

    add-int/2addr v3, v11

    .line 303
    invoke-virtual {v8, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v15, v3, 0x2

    .line 305
    invoke-virtual {v8, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v3, v6

    add-int/2addr v3, v15

    .line 307
    invoke-virtual {v8, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 310
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1f

    add-int/lit8 v5, v3, 0x2

    .line 311
    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v3, v6

    add-int/2addr v3, v5

    .line 313
    invoke-virtual {v8, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 314
    iget-object v5, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v5, v3}, Lcom/dspread/xpos/QPOSService;->N(Ljava/lang/String;)V

    .line 317
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 318
    const-string v3, "RandomData"

    invoke-virtual {v0, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v3, "AESKey"

    invoke-virtual {v0, v3, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {v15}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PAN"

    invoke-virtual {v0, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v3, "isOnlinePin"

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v3, "ResetTimes"

    invoke-virtual {v0, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string/jumbo v3, "pinTryLimit"

    const-string v5, "0"

    invoke-virtual {v0, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v3, v1, Lcom/dspread/xpos/t;->c:Lcom/dspread/xpos/s;

    invoke-virtual {v3, v7}, Lcom/dspread/xpos/s;->a(Z)V

    .line 325
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->r(Ljava/util/Hashtable;)V

    .line 327
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->H1()V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCvmPin ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v5, Lcom/dspread/xpos/s;->b:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 330
    :goto_10
    sget-boolean v0, Lcom/dspread/xpos/s;->b:Z

    if-nez v0, :cond_21

    .line 331
    sget-boolean v0, Lcom/dspread/xpos/s;->b:Z

    if-eqz v0, :cond_20

    goto :goto_11

    .line 334
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v5, Lcom/dspread/xpos/s;->b:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 336
    :try_start_4
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_10

    .line 342
    :cond_21
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCvmPin 2222="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/dspread/xpos/s;->b:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/dspread/xpos/s;->c:Lcom/dspread/xpos/j;

    .line 344
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    if-nez v3, :cond_22

    return v4

    .line 352
    :cond_22
    :goto_12
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    const/16 v5, 0x33

    if-eq v3, v5, :cond_42

    .line 353
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    const/16 v8, 0x34

    if-ne v3, v8, :cond_23

    const/4 v3, 0x0

    const/16 v8, 0x6b

    const/4 v10, 0x3

    const/16 v12, 0x22

    const/16 v15, 0x1e

    goto/16 :goto_1d

    .line 391
    :cond_23
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    const-string/jumbo v5, "uc.result() error = "

    if-nez v3, :cond_40

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v8, 0x6b

    if-eq v3, v8, :cond_40

    .line 392
    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 394
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v8

    const/16 v9, 0x20

    if-nez v8, :cond_27

    .line 395
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    if-eq v2, v9, :cond_26

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_24

    goto :goto_13

    .line 398
    :cond_24
    new-array v2, v7, [B

    invoke-static {v7, v2}, Lcom/dspread/xpos/Util;->a(I[B)Ljava/util/Hashtable;

    .line 399
    iget-object v2, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_26

    .line 400
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    if-ne v0, v3, :cond_25

    .line 401
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$TransactionResult;->CANCEL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    goto :goto_13

    .line 403
    :cond_25
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$TransactionResult;->DEVICE_ERROR:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    :cond_26
    :goto_13
    return v4

    .line 408
    :cond_27
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    .line 409
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "poll card result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    aget-byte v8, v8, v7

    const/4 v10, 0x5

    const/4 v11, 0x4

    if-ne v8, v4, :cond_2b

    .line 411
    iget-object v2, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_2a

    .line 412
    invoke-virtual {v0, v4, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    aget-byte v2, v2, v7

    if-ne v2, v11, :cond_28

    .line 413
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v4}, Lcom/dspread/xpos/QPOSService;->Q(I)V

    goto :goto_14

    :cond_28
    nop

    .line 414
    invoke-virtual {v0, v4, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    aget-byte v0, v0, v7

    if-ne v0, v10, :cond_29

    .line 415
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v6}, Lcom/dspread/xpos/QPOSService;->Q(I)V

    .line 417
    :cond_29
    :goto_14
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    :cond_2a
    return v7

    :cond_2b
    nop

    .line 420
    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    aget-byte v8, v8, v7

    const/4 v12, 0x3

    if-ne v8, v12, :cond_2c

    .line 421
    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_ONLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    goto :goto_15

    :cond_2c
    nop

    .line 422
    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    aget-byte v8, v8, v7

    if-ne v8, v11, :cond_2d

    .line 423
    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_OFFLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    goto :goto_15

    :cond_2d
    nop

    .line 424
    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    aget-byte v8, v8, v7

    if-ne v8, v10, :cond_2e

    .line 425
    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_DECLINED:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    :cond_2e
    :goto_15
    nop

    .line 428
    invoke-virtual {v0, v4, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    aget-byte v8, v8, v7

    if-ne v8, v6, :cond_31

    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    aget-byte v8, v8, v7

    const/4 v12, 0x3

    if-ge v8, v12, :cond_31

    .line 429
    sget-object v8, Lcom/dspread/xpos/QPOSService$DoTradeResult;->BAD_SWIPE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-direct {v1, v8, v0}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    .line 430
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v12, 0x22

    const/16 v15, 0x1e

    invoke-direct {v0, v12, v7, v7, v15}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 431
    invoke-virtual {v2, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 432
    invoke-virtual {v2, v15}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object v0

    .line 433
    iget-object v8, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v8, :cond_2f

    .line 434
    invoke-virtual {v8, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v8

    goto :goto_16

    .line 436
    :cond_2f
    iget-object v8, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    invoke-virtual {v8, v0}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/j;)Z

    move-result v8

    :goto_16
    if-nez v8, :cond_30

    return v4

    .line 442
    :cond_30
    iget-object v8, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v8}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v8

    if-nez v8, :cond_2e

    return v7

    .line 446
    :cond_31
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v2

    if-nez v2, :cond_3d

    .line 447
    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    aget-byte v2, v2, v7

    if-ne v2, v4, :cond_35

    .line 448
    iget-object v2, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_34

    .line 449
    invoke-virtual {v0, v4, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    aget-byte v2, v2, v7

    if-ne v2, v11, :cond_32

    .line 450
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v4}, Lcom/dspread/xpos/QPOSService;->Q(I)V

    goto :goto_17

    :cond_32
    nop

    .line 451
    invoke-virtual {v0, v4, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v0

    aget-byte v0, v0, v7

    if-ne v0, v10, :cond_33

    .line 452
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v6}, Lcom/dspread/xpos/QPOSService;->Q(I)V

    .line 454
    :cond_33
    :goto_17
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v2, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    goto :goto_18

    .line 456
    :cond_34
    const/4 v3, 0x0

    iget-object v0, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    sget-object v2, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {v0, v2, v3}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    :goto_18
    return v7

    :cond_35
    nop

    .line 460
    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    aget-byte v2, v2, v7

    const/4 v5, 0x3

    if-ne v2, v5, :cond_36

    .line 461
    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_ONLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    goto :goto_19

    :cond_36
    nop

    .line 462
    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    aget-byte v2, v2, v7

    if-ne v2, v11, :cond_37

    .line 463
    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_OFFLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    goto :goto_19

    :cond_37
    nop

    .line 464
    invoke-virtual {v0, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    aget-byte v2, v2, v7

    if-ne v2, v10, :cond_38

    .line 465
    sget-object v3, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_DECLINED:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    :cond_38
    :goto_19
    nop

    .line 468
    invoke-virtual {v0, v4, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    aget-byte v2, v2, v7

    const/4 v10, 0x3

    if-ne v2, v10, :cond_39

    .line 469
    sget-object v2, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-direct {v1, v2, v0}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    return v4

    :cond_39
    nop

    .line 472
    invoke-virtual {v0, v4, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v2

    aget-byte v2, v2, v7

    iput v2, v1, Lcom/dspread/xpos/t;->f:I

    const/16 v5, 0x11

    if-eq v2, v5, :cond_3c

    const/16 v5, 0x17

    if-eq v2, v5, :cond_3c

    if-ne v2, v4, :cond_3a

    goto :goto_1a

    :cond_3a
    if-ne v2, v9, :cond_3b

    .line 476
    invoke-direct {v1, v3, v0}, Lcom/dspread/xpos/t;->c(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    goto :goto_1b

    .line 485
    :cond_3b
    invoke-direct {v1, v3, v0}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    goto :goto_1b

    .line 486
    :cond_3c
    :goto_1a
    invoke-direct {v1, v3, v0}, Lcom/dspread/xpos/t;->d(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V

    :goto_1b
    return v4

    .line 503
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v4, [B

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    aput-byte v0, v3, v7

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 504
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v0, :cond_3e

    .line 505
    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    goto :goto_1c

    .line 506
    :cond_3e
    iget-object v0, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    if-eqz v0, :cond_3f

    .line 507
    sget-object v2, Lcom/dspread/xpos/Service$Error;->TIMEOUT:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    :cond_3f
    :goto_1c
    return v4

    .line 512
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v4, [B

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v0

    aput-byte v0, v3, v7

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 513
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    if-eqz v0, :cond_41

    .line 514
    sget-object v2, Lcom/dspread/xpos/QPOSService$Error;->TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    goto/16 :goto_22

    .line 515
    :cond_41
    iget-object v0, v1, Lcom/dspread/xpos/t;->b:Lcom/dspread/xpos/Service;

    if-eqz v0, :cond_48

    .line 516
    sget-object v2, Lcom/dspread/xpos/Service$Error;->TIMEOUT:Lcom/dspread/xpos/Service$Error;

    invoke-virtual {v0, v2}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$Error;)Ljava/lang/String;

    goto/16 :goto_22

    .line 352
    :cond_42
    const/4 v3, 0x0

    const/16 v8, 0x6b

    const/4 v10, 0x3

    const/16 v12, 0x22

    const/16 v15, 0x1e

    .line 516
    :goto_1d
    nop

    .line 517
    invoke-virtual {v0, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v9

    if-eqz v9, :cond_43

    .line 520
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v9

    move v11, v6

    goto :goto_1e

    .line 517
    :cond_43
    move v11, v4

    move v9, v7

    .line 520
    :goto_1e
    add-int/lit8 v16, v11, 0x1

    .line 522
    invoke-virtual {v0, v11}, Lcom/dspread/xpos/j;->a(I)B

    move-result v11

    .line 523
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 525
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v6

    if-ne v6, v5, :cond_44

    .line 526
    iget-object v5, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v5, v4}, Lcom/dspread/xpos/QPOSService;->U(Z)V

    .line 527
    iget-object v5, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/dspread/xpos/QPOSService;->O(I)V

    goto :goto_1f

    .line 530
    :cond_44
    iget-object v5, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v5, v7}, Lcom/dspread/xpos/QPOSService;->U(Z)V

    .line 531
    iget-object v5, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v5, v9}, Lcom/dspread/xpos/QPOSService;->O(I)V

    :goto_1f
    move/from16 v5, v16

    :goto_20
    add-int v6, v11, v16

    if-ge v5, v6, :cond_45

    .line 535
    invoke-virtual {v0, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_45
    nop

    .line 537
    sput-boolean v7, Lcom/dspread/xpos/x;->n:Z

    .line 538
    sput-boolean v4, Lcom/dspread/xpos/x;->o:Z

    .line 539
    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, v3, v9}, Lcom/dspread/xpos/QPOSService;->a(Ljava/util/List;I)V

    .line 540
    :goto_21
    sget-boolean v0, Lcom/dspread/xpos/x;->n:Z

    if-nez v0, :cond_46

    iget-object v0, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->q0()Z

    move-result v0

    if-nez v0, :cond_46

    .line 542
    :try_start_5
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_21

    :catch_5
    move-exception v0

    goto :goto_21

    .line 547
    :cond_46
    sget-object v0, Lcom/dspread/xpos/x;->p:Lcom/dspread/xpos/j;

    .line 548
    iget-object v3, v1, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3, v0}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v3

    if-nez v3, :cond_47

    return v4

    :cond_47
    const/4 v6, 0x2

    goto/16 :goto_12

    :cond_48
    :goto_22
    return v4
.end method

.method protected a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    .line 3
    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/dspread/xpos/QPOSService$DoTradeResult;Lcom/dspread/xpos/j;)V
    .locals 31

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countLen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 129
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 130
    const/4 v5, 0x4

    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v5

    add-int/lit8 v7, v4, 0x1

    .line 133
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 134
    invoke-virtual {v1, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v7, v4

    add-int/lit8 v4, v7, 0x1

    .line 137
    invoke-virtual {v1, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 138
    invoke-virtual {v1, v4, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-static {v9}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v4, v7

    add-int/lit8 v7, v4, 0x1

    .line 141
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 142
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v1, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v4

    add-int/lit8 v4, v7, 0x1

    .line 145
    invoke-virtual {v1, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 146
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v7

    add-int/lit8 v7, v4, 0x1

    .line 149
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 150
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v1, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v4

    add-int/lit8 v4, v7, 0x1

    .line 153
    invoke-virtual {v1, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 154
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v7

    add-int/lit8 v7, v4, 0x1

    .line 157
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 158
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v1, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v7, v4

    add-int/lit8 v4, v7, 0x1

    .line 161
    invoke-virtual {v1, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 162
    invoke-virtual {v1, v4, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v15

    add-int/2addr v4, v7

    add-int/lit8 v7, v4, 0x1

    .line 165
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 166
    invoke-virtual {v1, v7, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v7, v4

    add-int/lit8 v4, v7, 0x1

    .line 169
    invoke-virtual {v1, v7}, Lcom/dspread/xpos/j;->a(I)B

    move-result v7

    .line 170
    invoke-virtual {v1, v4, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v16

    move-object/from16 v17, v5

    invoke-static/range {v16 .. v16}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v4, v7

    .line 173
    nop

    .line 174
    const-string v7, ""

    if-ge v4, v3, :cond_0

    move-object/from16 v16, v5

    add-int/lit8 v5, v4, 0x1

    .line 176
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 177
    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v18

    add-int/2addr v4, v5

    move-object/from16 v5, v18

    goto :goto_0

    .line 174
    :cond_0
    move-object/from16 v16, v5

    move-object v5, v7

    .line 177
    :goto_0
    if-ge v4, v3, :cond_1

    move-object/from16 v18, v5

    add-int/lit8 v5, v4, 0x1

    .line 182
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 183
    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v19

    add-int/2addr v4, v5

    move-object/from16 v5, v19

    goto :goto_1

    .line 177
    :cond_1
    move-object/from16 v18, v5

    move-object v5, v7

    .line 187
    :goto_1
    if-ge v4, v3, :cond_2

    move-object/from16 v19, v5

    add-int/lit8 v5, v4, 0x1

    .line 189
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 190
    move-object/from16 v20, v15

    new-instance v15, Ljava/lang/String;

    move-object/from16 v21, v6

    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-direct {v15, v6}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v4, v5

    goto :goto_2

    .line 187
    :cond_2
    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v20, v15

    move-object v15, v7

    .line 194
    :goto_2
    nop

    .line 195
    nop

    .line 196
    const/4 v6, 0x1

    if-ge v4, v3, :cond_3

    .line 198
    new-array v5, v6, [B

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    const/16 v22, 0x0

    aput-byte v4, v5, v22

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    .line 199
    move-object/from16 v23, v15

    const/4 v5, 0x1

    new-array v15, v5, [B

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v1, v6}, Lcom/dspread/xpos/j;->a(I)B

    move-result v6

    aput-byte v6, v15, v22

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v6

    .line 200
    move-object/from16 v24, v13

    const/4 v15, 0x1

    new-array v13, v15, [B

    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v1, v5}, Lcom/dspread/xpos/j;->a(I)B

    move-result v5

    aput-byte v5, v13, v22

    invoke-static {v13}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v5

    .line 202
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v13, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v15

    goto :goto_3

    .line 196
    :cond_3
    move-object/from16 v24, v13

    move-object/from16 v23, v15

    move-object v5, v7

    move-object v6, v5

    move-object v13, v6

    .line 208
    :goto_3
    if-ge v4, v3, :cond_4

    add-int/lit8 v15, v4, 0x1

    .line 210
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 211
    invoke-virtual {v1, v15, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v25

    add-int/2addr v4, v15

    move-object/from16 v15, v25

    goto :goto_4

    .line 208
    :cond_4
    move-object v15, v7

    .line 215
    :goto_4
    move-object/from16 v25, v15

    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v15

    move-object/from16 v26, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v15}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v15

    invoke-static {v15}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    .line 218
    if-ge v4, v3, :cond_5

    mul-int/lit8 v15, v4, 0x2

    move/from16 v27, v4

    add-int/lit8 v4, v15, 0x2

    .line 220
    move-object/from16 v28, v6

    invoke-virtual {v7, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 221
    move-object/from16 v29, v13

    const-string v13, "C0"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 222
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v7, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x4

    add-int/2addr v15, v13

    .line 223
    invoke-virtual {v7, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x10

    invoke-static {v4, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v15, v4

    .line 224
    div-int/lit8 v4, v15, 0x2

    .line 225
    const/4 v13, 0x1

    iput v13, v0, Lcom/dspread/xpos/t;->g:I

    goto :goto_5

    .line 218
    :cond_5
    move/from16 v27, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v13

    .line 225
    :cond_6
    move-object/from16 v6, v26

    move/from16 v4, v27

    :goto_5
    if-ge v4, v3, :cond_9

    mul-int/lit8 v13, v4, 0x2

    add-int/lit8 v15, v13, 0x2

    .line 230
    move/from16 v27, v4

    invoke-virtual {v7, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 231
    move-object/from16 v30, v6

    const-string v6, "C2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v4, v13, 0x4

    .line 232
    invoke-virtual {v7, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 233
    const-string v15, "81"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    add-int/lit8 v13, v13, 0x6

    .line 234
    invoke-virtual {v7, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v13, v4

    .line 235
    div-int/lit8 v13, v13, 0x2

    move v4, v13

    goto :goto_6

    .line 236
    :cond_7
    const-string v15, "82"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    add-int/lit8 v13, v13, 0x8

    .line 237
    invoke-virtual {v7, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v13, v4

    .line 238
    div-int/lit8 v13, v13, 0x2

    move v4, v13

    goto :goto_6

    .line 236
    :cond_8
    move/from16 v4, v27

    .line 240
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "c0ken2"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 241
    const/4 v6, 0x1

    iput v6, v0, Lcom/dspread/xpos/t;->h:I

    goto :goto_7

    .line 225
    :cond_9
    move/from16 v27, v4

    move-object/from16 v30, v6

    .line 245
    :cond_a
    move/from16 v4, v27

    :goto_7
    if-ge v4, v3, :cond_b

    add-int/lit8 v6, v4, 0x1

    .line 247
    invoke-virtual {v1, v4}, Lcom/dspread/xpos/j;->a(I)B

    move-result v4

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+++++ba:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, v6, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v6

    goto :goto_8

    .line 245
    :cond_b
    move-object/from16 v7, v26

    .line 249
    :goto_8
    if-ge v4, v3, :cond_c

    .line 254
    iget v6, v0, Lcom/dspread/xpos/t;->f:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v4, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v6, v3}, Lcom/dspread/xpos/Util;->a(I[B)Ljava/util/Hashtable;

    move-result-object v3

    .line 256
    const-string/jumbo v4, "posID"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_c
    nop

    .line 259
    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 260
    const-string v4, "C908"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x4

    add-int/2addr v4, v6

    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 264
    :cond_d
    move-object/from16 v3, v26

    :goto_9
    invoke-static {v7}, Lcom/dspread/xpos/Util;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "batchid====="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v7, "orderId"

    invoke-virtual {v2, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v4, "formatID"

    invoke-virtual {v2, v4, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v4, "maskedPAN"

    invoke-virtual {v2, v4, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v4, "expiryDate"

    invoke-virtual {v2, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v4, "cardholderName"

    invoke-virtual {v2, v4, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v4, "newPin"

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v3, "serviceCode"

    move-object/from16 v4, v24

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v3, "track1Length"

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v3, "track2Length"

    move-object/from16 v7, v29

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v3, "track3Length"

    move-object/from16 v5, v28

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "encTracks"

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v3, "encTrack1"

    move-object/from16 v4, v21

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v3, "encTrack2"

    invoke-virtual {v2, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v3, "encTrack3"

    invoke-virtual {v2, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v3, "partialTrack"

    move-object/from16 v4, v26

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v3, "pinBlock"

    move-object/from16 v4, v20

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v3, "pinKsn"

    move-object/from16 v4, v16

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v3, "trackksn"

    move-object/from16 v4, v17

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v3, "trackRandomNumber"

    move-object/from16 v7, v18

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v3, "pinRandomNumber"

    move-object/from16 v7, v19

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v3, "psamNo"

    move-object/from16 v15, v23

    invoke-virtual {v2, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v3, "encPAN"

    move-object/from16 v7, v25

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget v3, v0, Lcom/dspread/xpos/t;->g:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    iget v3, v0, Lcom/dspread/xpos/t;->h:I

    if-ne v3, v4, :cond_e

    .line 292
    const-string v3, "nfcLog"

    move-object/from16 v6, v30

    invoke-virtual {v2, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SWIPE_CARD_OK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/dspread/xpos/j;->e()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 297
    iget-object v1, v0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 536
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/t;->c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 537
    iget-object p3, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 542
    :cond_0
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->b()B

    move-result p3

    const/16 v0, 0x41

    if-ne p3, v0, :cond_1

    .line 543
    iget-object p2, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/Vpos;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 544
    iget-object p3, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p3, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 550
    :cond_1
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    const/4 p3, 0x0

    .line 552
    invoke-virtual {p2, p3}, Lcom/dspread/xpos/j;->a(I)B

    .line 553
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    .line 554
    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p3, v0

    add-int/lit8 v0, p3, 0x1

    .line 557
    invoke-virtual {p2, p3}, Lcom/dspread/xpos/j;->a(I)B

    move-result p3

    .line 558
    invoke-virtual {p2, v0, p3}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 561
    const-string/jumbo p3, "pinKsn"

    invoke-virtual {p1, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string/jumbo p3, "pinBlock"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object p2, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/QPOSService;->n(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p12}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/j;)Z

    move-result p1

    return p1
.end method

.method protected b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dspread/xpos/QPOSService$CardTradeMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/dspread/xpos/t;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/j;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)V
    .locals 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/t;->b(Lcom/dspread/xpos/Vpos;Ljava/lang/String;)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 95
    iget-object v0, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->b()B

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 99
    iget-object p2, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p2}, Lcom/dspread/xpos/QPOSService;->J1()V

    .line 100
    new-instance p2, Lcom/dspread/xpos/i;

    const/16 v0, 0x22

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, v2, v1}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 101
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    const/4 p2, 0x5

    .line 102
    invoke-virtual {p1, p2}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p2

    .line 103
    iget-object p1, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRequestNFCBatchData:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Lcom/dspread/xpos/j;->f()B

    move-result p1

    if-nez p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->APPROVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->c()[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->onRequestNFCBatchData(Lcom/dspread/xpos/QPOSService$TransactionResult;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/t;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v0, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {p2}, Lcom/dspread/xpos/j;->c()[B

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/dspread/xpos/QPOSService;->onRequestNFCBatchData(Lcom/dspread/xpos/QPOSService$TransactionResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
