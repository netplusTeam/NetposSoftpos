.class synthetic Lcom/dspread/xpos/QPOSService$w1;
.super Ljava/lang/Object;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    invoke-static {}, Lcom/dspread/xpos/QPOSService$PanStatus;->values()[Lcom/dspread/xpos/QPOSService$PanStatus;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/dspread/xpos/QPOSService$w1;->e:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/dspread/xpos/QPOSService$PanStatus;->DEFAULT:Lcom/dspread/xpos/QPOSService$PanStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, Lcom/dspread/xpos/QPOSService$w1;->e:[I

    sget-object v4, Lcom/dspread/xpos/QPOSService$PanStatus;->PLAINTEXT:Lcom/dspread/xpos/QPOSService$PanStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/dspread/xpos/QPOSService$w1;->e:[I

    sget-object v5, Lcom/dspread/xpos/QPOSService$PanStatus;->ENCRYPTED:Lcom/dspread/xpos/QPOSService$PanStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 2
    :goto_2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$BusinessMode;->values()[Lcom/dspread/xpos/QPOSService$BusinessMode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    :try_start_3
    sget-object v5, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_DEVICE_ECC_PUBLIC_KEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v4, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v5, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_SERVER_ECC_PUBLIC_KEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v4, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v5, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_DATA_WITH_KEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    const/4 v4, 0x4

    :try_start_6
    sget-object v5, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v6, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_IS_CARD_EXIST:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    const/4 v5, 0x5

    :try_start_7
    sget-object v6, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v7, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_TRADE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    const/4 v6, 0x6

    :try_start_8
    sget-object v7, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v8, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_Request_PIN_Start:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    const/4 v7, 0x7

    :try_start_9
    sget-object v8, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v9, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_REQUEST_CVM_PIN:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    const/16 v8, 0x8

    :try_start_a
    sget-object v9, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v10, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_PIN_MAP_Sync:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    const/16 v9, 0x9

    :try_start_b
    sget-object v10, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v11, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_Get_Pin_Input:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    const/16 v10, 0xa

    :try_start_c
    sget-object v11, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v12, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_POS_ID:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_c
    const/16 v11, 0xb

    :try_start_d
    sget-object v12, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v13, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_TEST_POS_FUNCTION:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    const/16 v12, 0xc

    :try_start_e
    sget-object v13, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v14, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_REAL_TIME_SELFDESTRUCT_STATUS:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    const/16 v13, 0xd

    :try_start_f
    sget-object v14, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v15, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_SELF_DESTRUCT_RECORDS:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    const/16 v14, 0xe

    :try_start_10
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_INIT_PKI:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    :try_start_11
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_POS_SELF_TEST:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0xf

    aput v17, v15, v16
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_MAFIRE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x10

    aput v17, v15, v16
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_SETBUZZER_TIME:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x11

    aput v17, v15, v16
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_ONSETBUZZER:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x12

    aput v17, v15, v16
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    :try_start_15
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_ONGETBUZZER:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x13

    aput v17, v15, v16
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    :goto_15
    :try_start_16
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_EmvCAPK:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x14

    aput v17, v15, v16
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    :goto_16
    :try_start_17
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_PUBLIC_RSA:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x15

    aput v17, v15, v16
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v0

    :goto_17
    :try_start_18
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_EmvAPP:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x16

    aput v17, v15, v16
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v0

    :goto_18
    :try_start_19
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_POS_INFO:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x17

    aput v17, v15, v16
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v0

    :goto_19
    :try_start_1a
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SYNC_VERSION_INFO:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x18

    aput v17, v15, v16
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v0

    :goto_1a
    :try_start_1b
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_Get_SP_LOG:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x19

    aput v17, v15, v16
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v0

    :goto_1b
    :try_start_1c
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_POS_KSN:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1a

    aput v17, v15, v16
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v0

    :goto_1c
    :try_start_1d
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_POS_CERTIFICATE_INFO:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1b

    aput v17, v15, v16
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v0

    :goto_1d
    :try_start_1e
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_D20_SLEEPTIME:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1c

    aput v17, v15, v16
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v0

    :goto_1e
    :try_start_1f
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_D20_SLEEPTIME:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1d

    aput v17, v15, v16
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v0

    :goto_1f
    :try_start_20
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_D20_STATUS:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1e

    aput v17, v15, v16
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    :goto_20
    :try_start_21
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_POS_BLU_CONFIG:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1f

    aput v17, v15, v16
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    :goto_21
    :try_start_22
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_RSA:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x20

    aput v17, v15, v16
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    :goto_22
    :try_start_23
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GENERATE_SESSIOIN_KEYS:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x21

    aput v17, v15, v16
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v0

    :goto_23
    :try_start_24
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_PIN:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x22

    aput v17, v15, v16
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v0

    :goto_24
    :try_start_25
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_EncryptData:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x23

    aput v17, v15, v16
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v0

    :goto_25
    :try_start_26
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_MPU_CARD_INFO:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x24

    aput v17, v15, v16
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v0

    :goto_26
    :try_start_27
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_FELICA_OP:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x25

    aput v17, v15, v16
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v0

    :goto_27
    :try_start_28
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_POWER_ON_ICC:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x26

    aput v17, v15, v16
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v0

    :goto_28
    :try_start_29
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_POWER_OFF_ICC:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x27

    aput v17, v15, v16
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v0

    :goto_29
    :try_start_2a
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SEND_APDU:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x28

    aput v17, v15, v16
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v0

    :goto_2a
    :try_start_2b
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_CALCULATE_RSA:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x29

    aput v17, v15, v16
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v0

    :goto_2b
    :try_start_2c
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SEND_String_APDU:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2a

    aput v17, v15, v16
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v0

    :goto_2c
    :try_start_2d
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_SLEEP_TIME:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2b

    aput v17, v15, v16
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v0

    :goto_2d
    :try_start_2e
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_FIRMWARE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2c

    aput v17, v15, v16
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v0

    :goto_2e
    :try_start_2f
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_TOKEN:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2d

    aput v17, v15, v16
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v0

    :goto_2f
    :try_start_30
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SEND_TR_31_KEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2e

    aput v17, v15, v16
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_30

    :catch_30
    move-exception v0

    :goto_30
    :try_start_31
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_TRADE_QF:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2f

    aput v17, v15, v16
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_31

    :catch_31
    move-exception v0

    :goto_31
    :try_start_32
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SIGNATURE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x30

    aput v17, v15, v16
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_32

    :catch_32
    move-exception v0

    :goto_32
    :try_start_33
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_POS_CARDNO:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x31

    aput v17, v15, v16
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_33

    :catch_33
    move-exception v0

    :goto_33
    :try_start_34
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_LCD_SHOW_CUSTOM_DIDPLAY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x32

    aput v17, v15, v16
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_34

    :catch_34
    move-exception v0

    :goto_34
    :try_start_35
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_LOGO_CUSTOM_DISPLAY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x33

    aput v17, v15, v16
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    goto :goto_35

    :catch_35
    move-exception v0

    :goto_35
    :try_start_36
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_FIRMWARE_TMK_ZZ:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x34

    aput v17, v15, v16
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    goto :goto_36

    :catch_36
    move-exception v0

    :goto_36
    :try_start_37
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_WORKKEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x35

    aput v17, v15, v16
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    goto :goto_37

    :catch_37
    move-exception v0

    :goto_37
    :try_start_38
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_FIRMWARE_TSK_ZZ:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x36

    aput v17, v15, v16
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    goto :goto_38

    :catch_38
    move-exception v0

    :goto_38
    :try_start_39
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_CALCULATE_MAC:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x37

    aput v17, v15, v16
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    goto :goto_39

    :catch_39
    move-exception v0

    :goto_39
    :try_start_3a
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DOUBLE_MAC_SHA:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x38

    aput v17, v15, v16
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    goto :goto_3a

    :catch_3a
    move-exception v0

    :goto_3a
    :try_start_3b
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_EMV_APP_CONFIG:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x39

    aput v17, v15, v16
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    goto :goto_3b

    :catch_3b
    move-exception v0

    :goto_3b
    :try_start_3c
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_EMV_CAPK_CONFIG:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3a

    aput v17, v15, v16
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    goto :goto_3c

    :catch_3c
    move-exception v0

    :goto_3c
    :try_start_3d
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_READ_EMV_APP_CONFIG:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3b

    aput v17, v15, v16
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    goto :goto_3d

    :catch_3d
    move-exception v0

    :goto_3d
    :try_start_3e
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_READ_EMV_CAPK_CONFIG:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3c

    aput v17, v15, v16
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    goto :goto_3e

    :catch_3e
    move-exception v0

    :goto_3e
    :try_start_3f
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_EMV_CONFIG:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3d

    aput v17, v15, v16
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    goto :goto_3f

    :catch_3f
    move-exception v0

    :goto_3f
    :try_start_40
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_ICC_EMV_DATA:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3e

    aput v17, v15, v16
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    goto :goto_40

    :catch_40
    move-exception v0

    :goto_40
    :try_start_41
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DOWNLOAD_RSA_PUBLICKEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3f

    aput v17, v15, v16
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    goto :goto_41

    :catch_41
    move-exception v0

    :goto_41
    :try_start_42
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_INTO_MENU:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x40

    aput v17, v15, v16
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    goto :goto_42

    :catch_42
    move-exception v0

    :goto_42
    :try_start_43
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_UPDATE_MASTER_KEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x41

    aput v17, v15, v16
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    goto :goto_43

    :catch_43
    move-exception v0

    :goto_43
    :try_start_44
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_UPDATE_MASTER_KEY_2:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x42

    aput v17, v15, v16
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    goto :goto_44

    :catch_44
    move-exception v0

    :goto_44
    :try_start_45
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_UPDATE_MASTER_KEY_3:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x43

    aput v17, v15, v16
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    goto :goto_45

    :catch_45
    move-exception v0

    :goto_45
    :try_start_46
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_UPDATE_MASTER_BY_RANDOM:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x44

    aput v17, v15, v16
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    goto :goto_46

    :catch_46
    move-exception v0

    :goto_46
    :try_start_47
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_PINKEY_TDES:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x45

    aput v17, v15, v16
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    goto :goto_47

    :catch_47
    move-exception v0

    :goto_47
    :try_start_48
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_MASTER_KEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x46

    aput v17, v15, v16
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    goto :goto_48

    :catch_48
    move-exception v0

    :goto_48
    :try_start_49
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_MASTER_KEY_BASEKLK:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x47

    aput v17, v15, v16
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    goto :goto_49

    :catch_49
    move-exception v0

    :goto_49
    :try_start_4a
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_VIPOS_BATCH_SEND_APDU:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x48

    aput v17, v15, v16
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    goto :goto_4a

    :catch_4a
    move-exception v0

    :goto_4a
    :try_start_4b
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SAVE_USER_DATA:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x49

    aput v17, v15, v16
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    goto :goto_4b

    :catch_4b
    move-exception v0

    :goto_4b
    :try_start_4c
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_READ_USER_DATA:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4a

    aput v17, v15, v16
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    goto :goto_4c

    :catch_4c
    move-exception v0

    :goto_4c
    :try_start_4d
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPGRADE_CPU:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4b

    aput v17, v15, v16
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    goto :goto_4d

    :catch_4d
    move-exception v0

    :goto_4d
    :try_start_4e
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPGRADE_CPU_MP:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4c

    aput v17, v15, v16
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    goto :goto_4e

    :catch_4e
    move-exception v0

    :goto_4e
    :try_start_4f
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_MerchantID:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4d

    aput v17, v15, v16
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    goto :goto_4f

    :catch_4f
    move-exception v0

    :goto_4f
    :try_start_50
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_TerminalID:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4e

    aput v17, v15, v16
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    goto :goto_50

    :catch_50
    move-exception v0

    :goto_50
    :try_start_51
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_TerminalMerchantID:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4f

    aput v17, v15, v16
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    goto :goto_51

    :catch_51
    move-exception v0

    :goto_51
    :try_start_52
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_VENDORID:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x50

    aput v17, v15, v16
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    goto :goto_52

    :catch_52
    move-exception v0

    :goto_52
    :try_start_53
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_Get_Input_Amount:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x51

    aput v17, v15, v16
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    goto :goto_53

    :catch_53
    move-exception v0

    :goto_53
    :try_start_54
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_SystemDateTime:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x52

    aput v17, v15, v16
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    goto :goto_54

    :catch_54
    move-exception v0

    :goto_54
    :try_start_55
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_POWER_ON_NFC:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x53

    aput v17, v15, v16
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    goto :goto_55

    :catch_55
    move-exception v0

    :goto_55
    :try_start_56
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SEND_APDU_NFC:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x54

    aput v17, v15, v16
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    goto :goto_56

    :catch_56
    move-exception v0

    :goto_56
    :try_start_57
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_POWER_OFF_NFC:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x55

    aput v17, v15, v16
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    goto :goto_57

    :catch_57
    move-exception v0

    :goto_57
    :try_start_58
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_getMagneticTrackPlaintext:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x56

    aput v17, v15, v16
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    goto :goto_58

    :catch_58
    move-exception v0

    :goto_58
    :try_start_59
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_4011:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x57

    aput v17, v15, v16
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    goto :goto_59

    :catch_59
    move-exception v0

    :goto_59
    :try_start_5a
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_CBC_MAC:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x58

    aput v17, v15, v16
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    goto :goto_5a

    :catch_5a
    move-exception v0

    :goto_5a
    :try_start_5b
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_READ_BUSINESS_CARD:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x59

    aput v17, v15, v16
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    goto :goto_5b

    :catch_5b
    move-exception v0

    :goto_5b
    :try_start_5c
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_READ_GAS_CARD:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x5a

    aput v17, v15, v16
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    goto :goto_5c

    :catch_5c
    move-exception v0

    :goto_5c
    :try_start_5d
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_WRITE_GAS_CARD:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x5b

    aput v17, v15, v16
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    goto :goto_5d

    :catch_5d
    move-exception v0

    :goto_5d
    :try_start_5e
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_WRITE_BUSINESS_CARD:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x5c

    aput v17, v15, v16
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    goto :goto_5e

    :catch_5e
    move-exception v0

    :goto_5e
    :try_start_5f
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_Confirm_Amount:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x5d

    aput v17, v15, v16
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    goto :goto_5f

    :catch_5f
    move-exception v0

    :goto_5f
    :try_start_60
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_PIN1071:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x5e

    aput v17, v15, v16
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    goto :goto_60

    :catch_60
    move-exception v0

    :goto_60
    :try_start_61
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_CUSTOM_INPUT_DISPLAY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x5f

    aput v17, v15, v16
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    goto :goto_61

    :catch_61
    move-exception v0

    :goto_61
    :try_start_62
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_TRADE_BY_GOOD:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x60

    aput v17, v15, v16
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    goto :goto_62

    :catch_62
    move-exception v0

    :goto_62
    :try_start_63
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_CHECKVALUE_KEYTYPE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x61

    aput v17, v15, v16
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    goto :goto_63

    :catch_63
    move-exception v0

    :goto_63
    :try_start_64
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_DEVICE_PUBKEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x62

    aput v17, v15, v16
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    goto :goto_64

    :catch_64
    move-exception v0

    :goto_64
    :try_start_65
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_AES_KEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x63

    aput v17, v15, v16
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    goto :goto_65

    :catch_65
    move-exception v0

    :goto_65
    :try_start_66
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_AES_KEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x64

    aput v17, v15, v16
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    goto :goto_66

    :catch_66
    move-exception v0

    :goto_66
    :try_start_67
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_MAKE_DATA_SIGNATURE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x65

    aput v17, v15, v16
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    goto :goto_67

    :catch_67
    move-exception v0

    :goto_67
    :try_start_68
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_CONVER_ENCRYPTED_BLOCK_FORMAT:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x66

    aput v17, v15, v16
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    goto :goto_68

    :catch_68
    move-exception v0

    :goto_68
    :try_start_69
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_SET_SHUTDOWN_TIME_ON_CONNECTED:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x67

    aput v17, v15, v16
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    goto :goto_69

    :catch_69
    move-exception v0

    :goto_69
    :try_start_6a
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_SHUTDOWN_TIME_ON_CONNECTED:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x68

    aput v17, v15, v16
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    goto :goto_6a

    :catch_6a
    move-exception v0

    :goto_6a
    :try_start_6b
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_KEY_TR_31:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x69

    aput v17, v15, v16
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    goto :goto_6b

    :catch_6b
    move-exception v0

    :goto_6b
    :try_start_6c
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GENERATE_TRANSPORT_KEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x6a

    aput v17, v15, v16
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    goto :goto_6c

    :catch_6c
    move-exception v0

    :goto_6c
    :try_start_6d
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_ANALYSE_DIG_ENVELOP:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x6b

    aput v17, v15, v16
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    goto :goto_6d

    :catch_6d
    move-exception v0

    :goto_6d
    :try_start_6e
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_UPDATE_WORKKEY_BY_TRANSPORTKEY:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x6c

    aput v17, v15, v16
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    goto :goto_6e

    :catch_6e
    move-exception v0

    :goto_6e
    :try_start_6f
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DISPLAY_QR_CODE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x6d

    aput v17, v15, v16
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    goto :goto_6f

    :catch_6f
    move-exception v0

    :goto_6f
    :try_start_70
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_CHECK_DEVICE_TEST_RESULT:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x6e

    aput v17, v15, v16
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    goto :goto_70

    :catch_70
    move-exception v0

    :goto_70
    :try_start_71
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_REQUEST_CSR:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x6f

    aput v17, v15, v16
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    goto :goto_71

    :catch_71
    move-exception v0

    :goto_71
    :try_start_72
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_STORE_CERTIFICATES:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x70

    aput v17, v15, v16
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    goto :goto_72

    :catch_72
    move-exception v0

    :goto_72
    :try_start_73
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_STORE_SERVER_CERTIFICATES:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x71

    aput v17, v15, v16
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    goto :goto_73

    :catch_73
    move-exception v0

    :goto_73
    :try_start_74
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_DATA_SIGNATURE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x72

    aput v17, v15, v16
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    goto :goto_74

    :catch_74
    move-exception v0

    :goto_74
    :try_start_75
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_DEVICE_SIGNING_CERT:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x73

    aput v17, v15, v16
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    goto :goto_75

    :catch_75
    move-exception v0

    :goto_75
    :try_start_76
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_SERVER_CERT:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x74

    aput v17, v15, v16
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    goto :goto_76

    :catch_76
    move-exception v0

    :goto_76
    :try_start_77
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_OPERATE_LED_BY_TYPE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x75

    aput v17, v15, v16
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    goto :goto_77

    :catch_77
    move-exception v0

    :goto_77
    :try_start_78
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_PLAY_BUZZER_BY_TYPE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x76

    aput v17, v15, v16
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_78

    goto :goto_78

    :catch_78
    move-exception v0

    :goto_78
    :try_start_79
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_SET_LED_COLOR:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x77

    aput v17, v15, v16
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_79

    goto :goto_79

    :catch_79
    move-exception v0

    :goto_79
    :try_start_7a
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_GET_LED_COLOR:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x78

    aput v17, v15, v16
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_7a

    goto :goto_7a

    :catch_7a
    move-exception v0

    :goto_7a
    :try_start_7b
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_OPERATE_ALL_CARDS_WITH_POWER_ON_OFF:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x79

    aput v17, v15, v16
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_7b

    goto :goto_7b

    :catch_7b
    move-exception v0

    :goto_7b
    :try_start_7c
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GENERATE_TRANSPORT_KEY_BY_RSA:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x7a

    aput v17, v15, v16
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_7c

    goto :goto_7c

    :catch_7c
    move-exception v0

    :goto_7c
    :try_start_7d
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->d:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_GET_DEVICE_CERT_AND_SIGNATURE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x7b

    aput v17, v15, v16
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_7d

    goto :goto_7d

    :catch_7d
    move-exception v0

    .line 3
    :goto_7d
    invoke-static {}, Lcom/dspread/xpos/QPOSService$CardsType;->values()[Lcom/dspread/xpos/QPOSService$CardsType;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    :try_start_7e
    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_NFC:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_7e

    goto :goto_7e

    :catch_7e
    move-exception v0

    :goto_7e
    :try_start_7f
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_IC:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_7f

    goto :goto_7f

    :catch_7f
    move-exception v0

    :goto_7f
    :try_start_80
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_MAG:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_80

    goto :goto_80

    :catch_80
    move-exception v0

    :goto_80
    :try_start_81
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_MIFARE:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_81

    goto :goto_81

    :catch_81
    move-exception v0

    :goto_81
    :try_start_82
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_PSAM:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_82

    goto :goto_82

    :catch_82
    move-exception v0

    :goto_82
    :try_start_83
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_SIM:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_83

    goto :goto_83

    :catch_83
    move-exception v0

    :goto_83
    :try_start_84
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_FELICA:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v7, v15, v16
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_84

    goto :goto_84

    :catch_84
    move-exception v0

    :goto_84
    :try_start_85
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_NFC_A:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v8, v15, v16
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_85

    goto :goto_85

    :catch_85
    move-exception v0

    :goto_85
    :try_start_86
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_NFC_B:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v9, v15, v16
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_86

    goto :goto_86

    :catch_86
    move-exception v0

    :goto_86
    :try_start_87
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->c:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_IC_CARD_MAG:Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v10, v15, v16
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_87

    goto :goto_87

    :catch_87
    move-exception v0

    .line 4
    :goto_87
    invoke-static {}, Lcom/dspread/xpos/QPOSService$MifareCardType;->values()[Lcom/dspread/xpos/QPOSService$MifareCardType;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/dspread/xpos/QPOSService$w1;->b:[I

    :try_start_88
    sget-object v16, Lcom/dspread/xpos/QPOSService$MifareCardType;->UlTRALIGHT:Lcom/dspread/xpos/QPOSService$MifareCardType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_88

    goto :goto_88

    :catch_88
    move-exception v0

    :goto_88
    :try_start_89
    sget-object v15, Lcom/dspread/xpos/QPOSService$w1;->b:[I

    sget-object v16, Lcom/dspread/xpos/QPOSService$MifareCardType;->CLASSIC:Lcom/dspread/xpos/QPOSService$MifareCardType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_89

    goto :goto_89

    :catch_89
    move-exception v0

    .line 5
    :goto_89
    invoke-static {}, Lcom/dspread/xpos/QPOSService$CommunicationMode;->values()[Lcom/dspread/xpos/QPOSService$CommunicationMode;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    :try_start_8a
    sget-object v16, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_8a

    goto :goto_8a

    :catch_8a
    move-exception v0

    :goto_8a
    :try_start_8b
    sget-object v2, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v15, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_SERVICE:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v1, v2, v15
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_8b

    goto :goto_8b

    :catch_8b
    move-exception v0

    :goto_8b
    :try_start_8c
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_K7:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v3, v1, v2
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_8c

    goto :goto_8c

    :catch_8c
    move-exception v0

    :goto_8c
    :try_start_8d
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_GOOD:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v4, v1, v2
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_8d

    goto :goto_8d

    :catch_8d
    move-exception v0

    :goto_8d
    :try_start_8e
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->UART_DIRECT:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v5, v1, v2
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_8e

    goto :goto_8e

    :catch_8e
    move-exception v0

    :goto_8e
    :try_start_8f
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->AUDIO:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v6, v1, v2
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_8f

    goto :goto_8f

    :catch_8f
    move-exception v0

    :goto_8f
    :try_start_90
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_VER2:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v7, v1, v2
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_90

    goto :goto_90

    :catch_90
    move-exception v0

    :goto_90
    :try_start_91
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_2Mode:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v8, v1, v2
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_91

    goto :goto_91

    :catch_91
    move-exception v0

    :goto_91
    :try_start_92
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_4Mode:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v9, v1, v2
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_92

    goto :goto_92

    :catch_92
    move-exception v0

    :goto_92
    :try_start_93
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v10, v1, v2
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_93

    goto :goto_93

    :catch_93
    move-exception v0

    :goto_93
    :try_start_94
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->BLUETOOTH_BLE:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v11, v1, v2
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_94

    goto :goto_94

    :catch_94
    move-exception v0

    :goto_94
    :try_start_95
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->USB:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v12, v1, v2
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_95

    goto :goto_95

    :catch_95
    move-exception v0

    :goto_95
    :try_start_96
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->USB_OTG_CDC_ACM:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v13, v1, v2
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_96

    goto :goto_96

    :catch_96
    move-exception v0

    :goto_96
    :try_start_97
    sget-object v1, Lcom/dspread/xpos/QPOSService$w1;->a:[I

    sget-object v2, Lcom/dspread/xpos/QPOSService$CommunicationMode;->USB_OTG:Lcom/dspread/xpos/QPOSService$CommunicationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v14, v1, v2
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_97

    goto :goto_97

    :catch_97
    move-exception v0

    :goto_97
    return-void
.end method
