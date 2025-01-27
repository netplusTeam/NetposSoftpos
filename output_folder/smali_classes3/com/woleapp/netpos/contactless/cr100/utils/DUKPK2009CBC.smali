.class public final Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;
.super Ljava/lang/Object;
.source "DUKPK2009CBC.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;,
        Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;,
        Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002&\'B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008H\u0002J\u001c\u0010\u000b\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u0002J6\u0010\r\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015JB\u0010\r\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008J\u001a\u0010\u0018\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008J\u001a\u0010\u0019\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008J\u001a\u0010\u001a\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u001d\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0008J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00082\u0008\u0010 \u001a\u0004\u0018\u00010\u0005J\u001c\u0010!\u001a\u0004\u0018\u00010\u00082\u0008\u0010\"\u001a\u0004\u0018\u00010\u00082\u0008\u0010#\u001a\u0004\u0018\u00010\u0008J\u001c\u0010$\u001a\u0004\u0018\u00010\u00082\u0008\u0010\"\u001a\u0004\u0018\u00010\u00082\u0008\u0010#\u001a\u0004\u0018\u00010\u0008J\u001a\u0010%\u001a\u0004\u0018\u00010\u00082\u0006\u0010\"\u001a\u00020\u00082\u0008\u0010#\u001a\u0004\u0018\u00010\u0008\u00a8\u0006("
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;",
        "",
        "()V",
        "extractTrack2AndPanValues",
        "Lkotlin/Pair;",
        "",
        "input",
        "generateIPEK",
        "",
        "ksn",
        "bdk",
        "getDUKPTKey",
        "ipek",
        "getData",
        "ksnV",
        "datastrV",
        "key",
        "Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;",
        "mode",
        "Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;",
        "context",
        "Landroid/content/Context;",
        "clearIpek",
        "getDataKey",
        "getDataKeyVariant",
        "getMacKeyVariant",
        "getPinKeyVariant",
        "nRKGP",
        "",
        "parseByte2HexStr",
        "buf",
        "parseHexStr2Byte",
        "hexStr",
        "triDesDecryptionCBC",
        "byteKey",
        "dec",
        "triDesDecryptionECB",
        "triDesEncryption",
        "Enum_key",
        "Enum_mode",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final generateIPEK([B[B)[B
    .locals 8
    .param p1, "ksn"    # [B
    .param p2, "bdk"    # [B

    const/4 v0, 0x0

    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "temp":[B
    const/4 v2, 0x0

    .local v2, "temp2":[B
    const/4 v3, 0x0

    .line 84
    .local v3, "keyTemp":[B
    const/16 v4, 0x10

    new-array v0, v4, [B

    .line 85
    const/16 v5, 0x8

    new-array v1, v5, [B

    .line 86
    new-array v3, v4, [B

    .line 88
    const/4 v6, 0x0

    invoke-static {p2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-static {p1, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    const/4 v4, 0x7

    aget-byte v7, v1, v4

    and-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    .line 91
    invoke-virtual {p0, v3, v1}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->triDesEncryption([B[B)[B

    move-result-object v2

    .line 92
    invoke-static {v2, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    aget-byte v4, v3, v6

    xor-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    .line 94
    const/4 v4, 0x1

    aget-byte v7, v3, v4

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    .line 95
    const/4 v4, 0x2

    aget-byte v7, v3, v4

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    .line 96
    const/4 v4, 0x3

    aget-byte v7, v3, v4

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    .line 97
    aget-byte v4, v3, v5

    xor-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 98
    const/16 v4, 0x9

    aget-byte v7, v3, v4

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    .line 99
    const/16 v4, 0xa

    aget-byte v7, v3, v4

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    .line 100
    const/16 v4, 0xb

    aget-byte v7, v3, v4

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    .line 101
    invoke-virtual {p0, v3, v1}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->triDesEncryption([B[B)[B

    move-result-object v2

    .line 102
    invoke-static {v2, v6, v0, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    return-object v0
.end method

.method private final getDUKPTKey([B[B)[B
    .locals 11
    .param p1, "ksn"    # [B
    .param p2, "ipek"    # [B

    const/4 v0, 0x0

    .local v0, "key":[B
    const/4 v1, 0x0

    .local v1, "cnt":[B
    const/4 v2, 0x0

    .local v2, "temp":[B
    const/4 v3, 0x0

    .line 111
    .local v3, "shift":I
    const/16 v4, 0x10

    new-array v0, v4, [B

    .line 112
    const/4 v5, 0x0

    invoke-static {p2, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 114
    const/4 v6, 0x3

    new-array v1, v6, [B

    .line 115
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x7

    aget-byte v7, p1, v6

    and-int/lit8 v7, v7, 0x1f

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    .line 116
    aget-byte v4, p1, v4

    const/4 v7, 0x1

    aput-byte v4, v1, v7

    .line 117
    const/16 v4, 0x9

    aget-byte v4, p1, v4

    const/4 v8, 0x2

    aput-byte v4, v1, v8

    .line 118
    const/4 v4, 0x6

    invoke-static {p1, v8, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    const/4 v9, 0x5

    aget-byte v10, v2, v9

    and-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 120
    const/16 v3, 0x10

    .line 121
    :goto_0
    if-lez v3, :cond_1

    .line 122
    aget-byte v10, v1, v5

    and-int/2addr v10, v3

    if-lez v10, :cond_0

    .line 123
    aget-byte v10, v2, v9

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 124
    invoke-direct {p0, v0, v2}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->nRKGP([B[B)V

    .line 126
    :cond_0
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/16 v3, 0x80

    .line 129
    :goto_1
    if-lez v3, :cond_3

    .line 130
    aget-byte v5, v1, v7

    and-int/2addr v5, v3

    if-lez v5, :cond_2

    .line 131
    aget-byte v5, v2, v4

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 132
    invoke-direct {p0, v0, v2}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->nRKGP([B[B)V

    .line 134
    :cond_2
    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    :cond_3
    const/16 v3, 0x80

    .line 137
    :goto_2
    if-lez v3, :cond_5

    .line 138
    aget-byte v4, v1, v8

    and-int/2addr v4, v3

    if-lez v4, :cond_4

    .line 139
    aget-byte v4, v2, v6

    or-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    .line 140
    invoke-direct {p0, v0, v2}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->nRKGP([B[B)V

    .line 142
    :cond_4
    shr-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    :cond_5
    return-object v0
.end method

.method private final getData(Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 19
    .param p1, "ksnV"    # Ljava/lang/String;
    .param p2, "datastrV"    # Ljava/lang/String;
    .param p3, "key"    # Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;
    .param p4, "mode"    # Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;
    .param p5, "clearIpek"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .line 34
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x0

    .line 35
    .local v4, "ipek":[B
    invoke-virtual/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v5

    .line 36
    .local v5, "byte_ksn":[B
    if-eqz v3, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, v3}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v6

    move-object/from16 v7, p6

    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    invoke-static/range {p6 .. p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v6, "netpos_light_bdk_key.txt.enc"

    move-object/from16 v7, p6

    invoke-static {v7, v6}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->decryptOpenSslFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    .line 39
    .local v6, "cr100BdkValue":[B
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v8}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v8

    .line 40
    .local v8, "byteBdk":[B
    invoke-direct {v0, v5, v8}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->generateIPEK([B[B)[B

    move-result-object v6

    .line 36
    .end local v6    # "cr100BdkValue":[B
    .end local v8    # "byteBdk":[B
    :goto_1
    move-object v4, v6

    .line 45
    invoke-virtual {v0, v4}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v6

    .line 44
    nop

    .line 46
    .local v6, "ipekStr":Ljava/lang/String;
    invoke-virtual {v0, v5, v4}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getDataKey([B[B)[B

    move-result-object v8

    .line 47
    .local v8, "dataKey":[B
    invoke-virtual {v0, v8}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, "dataKeyStr":Ljava/lang/String;
    invoke-virtual {v0, v5, v4}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getDataKeyVariant([B[B)[B

    move-result-object v10

    .line 49
    .local v10, "dataKeyVariant":[B
    invoke-virtual {v0, v10}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v11

    .line 51
    .local v11, "dataKeyStrVariant":Ljava/lang/String;
    invoke-virtual {v0, v5, v4}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getPinKeyVariant([B[B)[B

    move-result-object v12

    .line 52
    .local v12, "pinKey":[B
    invoke-virtual {v0, v12}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v13

    .line 53
    .local v13, "pinKeyStr":Ljava/lang/String;
    invoke-virtual {v0, v5, v4}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getMacKeyVariant([B[B)[B

    move-result-object v14

    .line 54
    .local v14, "macKey":[B
    invoke-virtual {v0, v14}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v15

    .line 55
    .local v15, "macKeyStr":Ljava/lang/String;
    const/16 v16, 0x0

    .line 56
    .local v16, "keySel":Ljava/lang/String;
    if-nez p3, :cond_2

    const/16 v17, -0x1

    goto :goto_2

    :cond_2
    sget-object v17, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p3 .. p3}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->ordinal()I

    move-result v18

    aget v17, v17, v18

    :goto_2
    packed-switch v17, :pswitch_data_0

    move-object/from16 v3, v16

    goto :goto_3

    .line 60
    :pswitch_0
    move-object/from16 v16, v11

    move-object/from16 v3, v16

    goto :goto_3

    .line 59
    :pswitch_1
    move-object/from16 v16, v9

    move-object/from16 v3, v16

    goto :goto_3

    .line 58
    :pswitch_2
    move-object/from16 v16, v13

    move-object/from16 v3, v16

    goto :goto_3

    .line 57
    :pswitch_3
    move-object/from16 v16, v15

    move-object/from16 v3, v16

    .line 63
    .end local v16    # "keySel":Ljava/lang/String;
    .local v3, "keySel":Ljava/lang/String;
    :goto_3
    const/16 v16, 0x0

    .line 64
    .local v16, "buf":[B
    move-object/from16 v17, v4

    .end local v4    # "ipek":[B
    .local v17, "ipek":[B
    sget-object v4, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;->CBC:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;

    if-ne v2, v4, :cond_3

    .line 65
    nop

    .line 66
    invoke-virtual {v0, v3}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v4

    .line 67
    move-object/from16 v18, v5

    .end local v5    # "byte_ksn":[B
    .local v18, "byte_ksn":[B
    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v5

    .line 65
    invoke-virtual {v0, v4, v5}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->triDesDecryptionCBC([B[B)[B

    move-result-object v16

    move-object/from16 v4, v16

    goto :goto_4

    .line 69
    .end local v18    # "byte_ksn":[B
    .restart local v5    # "byte_ksn":[B
    :cond_3
    move-object/from16 v18, v5

    .end local v5    # "byte_ksn":[B
    .restart local v18    # "byte_ksn":[B
    sget-object v4, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;->ECB:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;

    if-ne v2, v4, :cond_4

    .line 70
    nop

    .line 71
    invoke-virtual {v0, v3}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v4

    .line 72
    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v5

    .line 70
    invoke-virtual {v0, v4, v5}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->triDesDecryptionECB([B[B)[B

    move-result-object v16

    move-object/from16 v4, v16

    goto :goto_4

    .line 69
    :cond_4
    move-object/from16 v4, v16

    .line 76
    .end local v16    # "buf":[B
    .local v4, "buf":[B
    :goto_4
    invoke-virtual {v0, v4}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final nRKGP([B[B)V
    .locals 9
    .param p1, "key"    # [B
    .param p2, "ksn"    # [B

    const/4 v0, 0x0

    .local v0, "temp":[B
    const/4 v1, 0x0

    .local v1, "key_l":[B
    const/4 v2, 0x0

    .local v2, "key_r":[B
    const/4 v3, 0x0

    .local v3, "key_temp":[B
    const/4 v4, 0x0

    .line 158
    .local v4, "i":I
    const/16 v5, 0x8

    new-array v0, v5, [B

    .line 159
    new-array v1, v5, [B

    .line 160
    new-array v2, v5, [B

    .line 161
    new-array v3, v5, [B

    .line 163
    const/4 v6, 0x0

    invoke-static {p1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    const/4 v4, 0x0

    .line 165
    :goto_0
    if-ge v4, v5, :cond_0

    .line 166
    aget-byte v7, p2, v4

    add-int/lit8 v8, v4, 0x8

    aget-byte v8, p1, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->triDesEncryption([B[B)[B

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v7

    .line 171
    const/4 v4, 0x0

    .line 172
    :goto_1
    if-ge v4, v5, :cond_1

    .line 173
    aget-byte v7, v2, v4

    add-int/lit8 v8, v4, 0x8

    aget-byte v8, p1, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 176
    :cond_1
    aget-byte v7, v3, v6

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 177
    const/4 v7, 0x1

    aget-byte v8, v3, v7

    xor-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 178
    const/4 v7, 0x2

    aget-byte v8, v3, v7

    xor-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 179
    const/4 v7, 0x3

    aget-byte v8, v3, v7

    xor-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 180
    aget-byte v7, p1, v5

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    .line 181
    const/16 v7, 0x9

    aget-byte v8, p1, v7

    xor-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 182
    const/16 v7, 0xa

    aget-byte v8, p1, v7

    xor-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 183
    const/16 v7, 0xb

    aget-byte v8, p1, v7

    xor-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 184
    const/4 v4, 0x0

    .line 185
    :goto_2
    if-ge v4, v5, :cond_2

    .line 186
    aget-byte v7, p2, v4

    add-int/lit8 v8, v4, 0x8

    aget-byte v8, p1, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 190
    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->triDesEncryption([B[B)[B

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v7

    .line 191
    const/4 v4, 0x0

    .line 192
    :goto_3
    if-ge v4, v5, :cond_3

    .line 193
    aget-byte v7, v1, v4

    add-int/lit8 v8, v4, 0x8

    aget-byte v8, p1, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 197
    :cond_3
    invoke-static {v2, v6, p1, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    return-void
.end method


# virtual methods
.method public final extractTrack2AndPanValues(Ljava/lang/String;)Lkotlin/Pair;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    const/4 v0, -0x1

    .line 368
    .local v0, "indexOfD":I
    const/4 v1, -0x1

    .line 371
    .local v1, "indexOfF":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-ge v2, v3, :cond_3

    .line 372
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x44

    if-ne v5, v6, :cond_0

    if-ne v0, v4, :cond_0

    .line 373
    move v0, v2

    .line 375
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_1

    if-ne v1, v4, :cond_1

    .line 376
    move v1, v2

    .line 379
    :cond_1
    if-eq v0, v4, :cond_2

    if-eq v1, v4, :cond_2

    .line 380
    goto :goto_1

    .line 371
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v2    # "i":I
    :cond_3
    :goto_1
    if-eq v0, v4, :cond_4

    if-eq v1, v4, :cond_4

    .line 388
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .local v3, "valueBeforeD":Ljava/lang/String;
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .local v2, "valueBeforeF":Ljava/lang/String;
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 385
    .end local v2    # "valueBeforeF":Ljava/lang/String;
    .end local v3    # "valueBeforeD":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String must contain both \'D\' and \'F\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getData(Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "ksnV"    # Ljava/lang/String;
    .param p2, "datastrV"    # Ljava/lang/String;
    .param p3, "key"    # Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;
    .param p4, "mode"    # Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;
    .param p5, "context"    # Landroid/content/Context;

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getData(Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDataKey([B[B)[B
    .locals 2
    .param p1, "ksn"    # [B
    .param p2, "ipek"    # [B

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getDataKeyVariant([B[B)[B

    move-result-object v0

    .line 227
    .local v0, "temp1":[B
    invoke-virtual {p0, v0, v0}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->triDesEncryption([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public final getDataKeyVariant([B[B)[B
    .locals 3
    .param p1, "ksn"    # [B
    .param p2, "ipek"    # [B

    const/4 v0, 0x0

    .line 202
    .local v0, "key":[B
    invoke-direct {p0, p1, p2}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getDUKPTKey([B[B)[B

    move-result-object v0

    .line 203
    const/4 v1, 0x5

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 204
    const/16 v1, 0xd

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 205
    return-object v0
.end method

.method public final getMacKeyVariant([B[B)[B
    .locals 3
    .param p1, "ksn"    # [B
    .param p2, "ipek"    # [B

    const/4 v0, 0x0

    .line 219
    .local v0, "key":[B
    invoke-direct {p0, p1, p2}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getDUKPTKey([B[B)[B

    move-result-object v0

    .line 220
    const/4 v1, 0x6

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    const/16 v1, 0xe

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 222
    return-object v0
.end method

.method public final getPinKeyVariant([B[B)[B
    .locals 3
    .param p1, "ksn"    # [B
    .param p2, "ipek"    # [B

    const/4 v0, 0x0

    .line 211
    .local v0, "key":[B
    invoke-direct {p0, p1, p2}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getDUKPTKey([B[B)[B

    move-result-object v0

    .line 212
    const/4 v1, 0x7

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    const/16 v1, 0xf

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 214
    return-object v0
.end method

.method public final parseByte2HexStr([B)Ljava/lang/String;
    .locals 6
    .param p1, "buf"    # [B

    .line 355
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 356
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 357
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    :cond_0
    const-string v4, "hex"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "getDefault()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    .end local v3    # "hex":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 9
    .param p1, "hexStr"    # Ljava/lang/String;

    .line 337
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 340
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 341
    .local v0, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    :goto_0
    if-ge v2, v3, :cond_1

    .line 342
    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 343
    .local v4, "high":I
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 343
    nop

    .line 346
    .local v5, "low":I
    mul-int/lit8 v6, v4, 0x10

    add-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 341
    .end local v4    # "high":I
    .end local v5    # "low":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public final triDesDecryptionCBC([B[B)[B
    .locals 9
    .param p1, "byteKey"    # [B
    .param p2, "dec"    # [B

    .line 267
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 268
    .local v0, "en_key":[B
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, p1

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_0

    .line 269
    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    invoke-static {p1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 271
    :cond_0
    array-length v1, p1

    if-ne v1, v4, :cond_1

    .line 272
    invoke-static {p1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    invoke-static {p1, v3, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    invoke-static {p1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 276
    :cond_1
    move-object v0, p1

    .line 278
    :goto_0
    nop

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "deskey":Ljava/security/Key;
    :try_start_0
    new-array v2, v4, [B

    .line 281
    .local v2, "keyiv":[B
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 283
    .local v3, "spec":Ljavax/crypto/spec/DESedeKeySpec;
    const-string v4, "desede"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 282
    nop

    .line 284
    .local v4, "keyfactory":Ljavax/crypto/SecretKeyFactory;
    move-object v5, v3

    check-cast v5, Ljava/security/spec/KeySpec;

    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    check-cast v5, Ljava/security/Key;

    move-object v1, v5

    .line 286
    const-string v5, "desede/CBC/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 285
    nop

    .line 287
    .local v5, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 288
    .local v6, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x2

    move-object v8, v6

    check-cast v8, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v5, v7, v1, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 289
    invoke-virtual {v5, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 290
    .end local v1    # "deskey":Ljava/security/Key;
    .end local v2    # "keyiv":[B
    .end local v3    # "spec":Ljavax/crypto/spec/DESedeKeySpec;
    .end local v4    # "keyfactory":Ljavax/crypto/SecretKeyFactory;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "ips":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final triDesDecryptionECB([B[B)[B
    .locals 6
    .param p1, "byteKey"    # [B
    .param p2, "dec"    # [B

    .line 302
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 303
    .local v0, "en_key":[B
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, p1

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 304
    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 306
    :cond_0
    array-length v1, p1

    if-ne v1, v3, :cond_1

    .line 307
    invoke-static {p1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-static {p1, v4, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 311
    :cond_1
    move-object v0, p1

    .line 313
    :goto_0
    const/4 v1, 0x0

    .line 314
    .local v1, "key":Ljavax/crypto/SecretKey;
    nop

    .line 315
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "DESede"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v3, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 314
    move-object v1, v3

    .line 320
    nop

    .line 322
    :try_start_1
    const-string v3, "DESede/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 321
    nop

    .line 323
    .local v3, "dcipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    move-object v5, v1

    check-cast v5, Ljava/security/Key;

    invoke-virtual {v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 326
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 327
    .end local v3    # "dcipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v3

    .line 328
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    .end local v3    # "e":Ljava/lang/Exception;
    return-object v2

    .line 316
    :catch_1
    move-exception v3

    .line 317
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    return-object v2
.end method

.method public final triDesEncryption([B[B)[B
    .locals 5
    .param p1, "byteKey"    # [B
    .param p2, "dec"    # [B

    const-string v0, "byteKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    nop

    .line 235
    const/16 v0, 0x18

    :try_start_0
    new-array v0, v0, [B

    .line 236
    .local v0, "en_key":[B
    array-length v1, p1

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 237
    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 239
    :cond_0
    array-length v1, p1

    if-ne v1, v3, :cond_1

    .line 240
    invoke-static {p1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    invoke-static {p1, v4, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 244
    :cond_1
    move-object v0, p1

    .line 247
    :goto_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DESede"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 246
    nop

    .line 249
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "DESede/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 248
    nop

    .line 250
    .local v2, "ecipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    move-object v4, v1

    check-cast v4, Ljava/security/Key;

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 256
    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 257
    .end local v0    # "en_key":[B
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "ecipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
