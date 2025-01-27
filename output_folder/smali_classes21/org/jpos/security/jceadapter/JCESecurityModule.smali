.class public Lorg/jpos/security/jceadapter/JCESecurityModule;
.super Lorg/jpos/security/BaseSMAdapter;
.source "JCESecurityModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jpos/security/BaseSMAdapter<",
        "Lorg/jpos/security/SecureDESKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final KEY_T_LEFT:I = 0x3

.field private static final KEY_T_MEDIUM:I = 0x4

.field private static final KEY_T_RIGHT:I = 0x5

.field private static final KEY_U_LEFT:I = 0x1

.field private static final KEY_U_RIGHT:I = 0x2

.field private static final LMK_KEY_LENGTH:S = 0x80s

.field private static final LMK_PAIRS_NO:I = 0xe

.field private static final MAX_PIN_LENGTH:S = 0xcs

.field private static final MIN_PIN_LENGTH:S = 0x4s

.field private static final PINLMKIndex:Ljava/lang/Integer;

.field private static SHA1_MESSAGE_DIGEST:Ljava/security/MessageDigest;

.field private static final SPLIT_PIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final _VARIANT_RIGHT_HALF:[B

.field private static final fPaddingBlock:[B

.field private static final schemeVariants:[I

.field private static final variants:[I

.field private static final zeroBlock:[B


# instance fields
.field protected jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

.field private keyTypeToLMKIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lmks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-string v0, "([^:;]*)([:;])?([^:;])?([^:;])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->KEY_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "[ :;,/.]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->SPLIT_PIN_PATTERN:Ljava/util/regex/Pattern;

    .line 88
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->variants:[I

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->schemeVariants:[I

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->SHA1_MESSAGE_DIGEST:Ljava/security/MessageDigest;

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->_VARIANT_RIGHT_HALF:[B

    .line 130
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->SHA1_MESSAGE_DIGEST:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 2016
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->PINLMKIndex:Ljava/lang/Integer;

    .line 2034
    const-string v0, "FFFFFFFFFFFFFFFF"

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->fPaddingBlock:[B

    .line 2039
    const-string v0, "0000000000000000"

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->zeroBlock:[B

    return-void

    :array_0
    .array-data 4
        0x0
        0xa6
        0x5a
        0x6a
        0xde
        0x2b
        0x50
        0x74
        0x9c
        0xfa
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xa6
        0x5a
        0x6a
        0xde
        0x2b
    .end array-data

    :array_2
    .array-data 1
        -0x40t
        -0x40t
        -0x40t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lorg/jpos/security/BaseSMAdapter;-><init>()V

    .line 2012
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->lmks:Ljava/util/Map;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "lmkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lorg/jpos/security/BaseSMAdapter;-><init>()V

    .line 2012
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->lmks:Ljava/util/Map;

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->init(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "lmkFile"    # Ljava/lang/String;
    .param p2, "jceProviderClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lorg/jpos/security/BaseSMAdapter;-><init>()V

    .line 2012
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->lmks:Ljava/util/Map;

    .line 153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->init(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/jpos/core/Configuration;Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 1
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .param p2, "logger"    # Lorg/jpos/util/Logger;
    .param p3, "realm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lorg/jpos/security/BaseSMAdapter;-><init>()V

    .line 2012
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->lmks:Ljava/util/Map;

    .line 159
    invoke-virtual {p0, p2, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 161
    return-void
.end method

.method private and([B[B)[B
    .locals 1
    .param p1, "b"    # [B
    .param p2, "mask"    # [B

    .line 2144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->and([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method private and([B[BI)[B
    .locals 5
    .param p1, "b"    # [B
    .param p2, "mask"    # [B
    .param p3, "offset"    # I

    .line 2131
    array-length v0, p1

    sub-int/2addr v0, p3

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2132
    .local v0, "len":I
    array-length v1, p1

    new-array v1, v1, [B

    .line 2133
    .local v1, "d":[B
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2135
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2137
    aget-byte v3, p1, p3

    aget-byte v4, p2, v2

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, p3

    .line 2135
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2139
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private applySchemeVariant([BI)[B
    .locals 3
    .param p1, "lmkdata"    # [B
    .param p2, "variant"    # I

    .line 1883
    array-length v0, p1

    new-array v0, v0, [B

    .line 1884
    .local v0, "vardata":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1886
    const/16 v1, 0x8

    aget-byte v2, v0, v1

    xor-int/2addr v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1887
    return-object v0
.end method

.method private applyVariant([BI)[B
    .locals 3
    .param p1, "lmkdata"    # [B
    .param p2, "variant"    # I

    .line 1891
    array-length v0, p1

    new-array v0, v0, [B

    .line 1892
    .local v0, "vardata":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1894
    aget-byte v1, v0, v2

    xor-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1895
    return-object v0
.end method

.method private calculateDerivedKeySDES(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;)[B
    .locals 10
    .param p1, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p2, "bdk"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2267
    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 2269
    .local v1, "_1FFFFF":[B
    new-array v2, v0, [B

    fill-array-data v2, :array_1

    .line 2271
    .local v2, "_100000":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    .line 2274
    .local v0, "_E00000":[B
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateInitialKey(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;Z)[B

    move-result-object v3

    .line 2275
    .local v3, "curkey":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2276
    invoke-virtual {p1}, Lorg/jpos/security/KeySerialNumber;->getBaseKeyID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jpos/security/KeySerialNumber;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jpos/security/KeySerialNumber;->getTransactionCounter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2275
    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v4

    .line 2278
    .local v4, "smidr":[B
    invoke-virtual {p1}, Lorg/jpos/security/KeySerialNumber;->getTransactionCounter()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v5

    .line 2279
    .local v5, "reg3":[B
    invoke-direct {p0, v5, v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->and([B[B)[B

    move-result-object v5

    .line 2280
    move-object v6, v2

    .line 2283
    .local v6, "shiftr":[B
    const/4 v7, 0x5

    invoke-direct {p0, v4, v0, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->and([B[BI)[B

    move-result-object v4

    .line 2286
    :goto_0
    invoke-direct {p0, v6, v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->and([B[B)[B

    move-result-object v8

    .line 2287
    .local v8, "temp":[B
    invoke-direct {p0, v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->notZero([B)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2289
    invoke-direct {p0, v4, v6, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->or([B[BI)V

    .line 2290
    invoke-static {v4, v3}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v9

    .line 2291
    .local v9, "tksnr":[B
    invoke-direct {p0, v9, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v9

    .line 2292
    invoke-static {v9, v3}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v3

    .line 2294
    .end local v9    # "tksnr":[B
    :cond_0
    invoke-direct {p0, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->shr([B)V

    .line 2296
    invoke-direct {p0, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->notZero([B)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2297
    const/4 v7, 0x7

    aget-byte v9, v3, v7

    xor-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    .line 2298
    return-object v3

    .line 2296
    :cond_1
    goto :goto_0

    :array_0
    .array-data 1
        0x1ft
        -0x1t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x20t
        0x0t
        0x0t
    .end array-data
.end method

.method private calculateDerivedKeyTDES(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;Z)[B
    .locals 19
    .param p1, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p2, "bdk"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "dataEncryption"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2303
    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 2305
    .local v2, "_1FFFFF":[B
    new-array v3, v1, [B

    fill-array-data v3, :array_1

    .line 2307
    .local v3, "_100000":[B
    new-array v1, v1, [B

    fill-array-data v1, :array_2

    .line 2310
    .local v1, "_E00000":[B
    const/4 v4, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct {v0, v5, v6, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateInitialKey(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;Z)[B

    move-result-object v4

    .line 2312
    .local v4, "curkey":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/KeySerialNumber;->getBaseKeyID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/KeySerialNumber;->getDeviceID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/KeySerialNumber;->getTransactionCounter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2313
    .local v7, "sn":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x10

    if-le v8, v9, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2314
    :cond_0
    invoke-static {v7}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v8

    .line 2315
    .local v8, "smidr":[B
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/KeySerialNumber;->getTransactionCounter()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v9

    .line 2316
    .local v9, "reg3":[B
    invoke-direct {v0, v9, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->and([B[B)[B

    move-result-object v9

    .line 2317
    move-object v10, v3

    .line 2322
    .local v10, "shiftr":[B
    const/16 v11, 0x8

    new-array v12, v11, [B

    .line 2323
    .local v12, "curkeyL":[B
    new-array v13, v11, [B

    .line 2324
    .local v13, "curkeyR":[B
    const/4 v14, 0x5

    invoke-direct {v0, v8, v1, v14}, Lorg/jpos/security/jceadapter/JCESecurityModule;->and([B[BI)[B

    move-result-object v8

    .line 2327
    :goto_0
    invoke-direct {v0, v10, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->and([B[B)[B

    move-result-object v15

    .line 2328
    .local v15, "temp":[B
    invoke-direct {v0, v15}, Lorg/jpos/security/jceadapter/JCESecurityModule;->notZero([B)Z

    move-result v16

    const/4 v14, 0x0

    if-eqz v16, :cond_1

    .line 2330
    invoke-static {v4, v14, v12, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2331
    invoke-static {v4, v11, v13, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2333
    const/4 v11, 0x5

    invoke-direct {v0, v8, v10, v11}, Lorg/jpos/security/jceadapter/JCESecurityModule;->or([B[BI)V

    .line 2336
    invoke-static {v8, v13}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v11

    .line 2337
    .local v11, "tksnr":[B
    invoke-direct {v0, v11, v12}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v11

    .line 2338
    invoke-static {v11, v13}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v11

    .line 2340
    sget-object v14, Lorg/jpos/security/jceadapter/JCESecurityModule;->_VARIANT_RIGHT_HALF:[B

    invoke-static {v12, v14}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v12

    .line 2341
    invoke-static {v13, v14}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v13

    .line 2343
    invoke-static {v8, v13}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v14

    .line 2344
    .local v14, "r8b":[B
    invoke-direct {v0, v14, v12}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v14

    .line 2345
    invoke-static {v14, v13}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v14

    .line 2347
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    .end local v1    # "_E00000":[B
    .end local v2    # "_1FFFFF":[B
    .local v17, "_E00000":[B
    .local v18, "_1FFFFF":[B
    invoke-static {v14, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2348
    invoke-static {v11, v1, v4, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 2328
    .end local v11    # "tksnr":[B
    .end local v14    # "r8b":[B
    .end local v17    # "_E00000":[B
    .end local v18    # "_1FFFFF":[B
    .restart local v1    # "_E00000":[B
    .restart local v2    # "_1FFFFF":[B
    :cond_1
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 2350
    .end local v1    # "_E00000":[B
    .end local v2    # "_1FFFFF":[B
    .restart local v17    # "_E00000":[B
    .restart local v18    # "_1FFFFF":[B
    :goto_1
    invoke-direct {v0, v10}, Lorg/jpos/security/jceadapter/JCESecurityModule;->shr([B)V

    .line 2352
    invoke-direct {v0, v10}, Lorg/jpos/security/jceadapter/JCESecurityModule;->notZero([B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2354
    if-eqz p3, :cond_2

    .line 2355
    const/4 v1, 0x5

    aget-byte v2, v4, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 2356
    const/16 v1, 0xd

    aget-byte v2, v4, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 2357
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v4, v1, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2358
    invoke-static {v4, v2, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2359
    invoke-direct {v0, v12, v12}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v1

    .line 2360
    .local v1, "L":[B
    invoke-direct {v0, v1, v13}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decrypt64([B[B)[B

    move-result-object v1

    .line 2361
    invoke-direct {v0, v1, v12}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v1

    .line 2363
    invoke-direct {v0, v13, v12}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v2

    .line 2364
    .local v2, "R":[B
    invoke-direct {v0, v2, v13}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decrypt64([B[B)[B

    move-result-object v2

    .line 2365
    invoke-direct {v0, v2, v12}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v2

    .line 2366
    const/4 v11, 0x0

    const/16 v14, 0x8

    invoke-static {v1, v11, v4, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2367
    invoke-static {v2, v11, v4, v14, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2368
    .end local v1    # "L":[B
    .end local v2    # "R":[B
    goto :goto_2

    .line 2369
    :cond_2
    const/4 v1, 0x7

    aget-byte v2, v4, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 2370
    const/16 v1, 0xf

    aget-byte v2, v4, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 2372
    :goto_2
    return-object v4

    .line 2352
    :cond_3
    const/4 v1, 0x5

    const/16 v14, 0x8

    move v11, v14

    move-object/from16 v2, v18

    move v14, v1

    move-object/from16 v1, v17

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x1ft
        -0x1t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x20t
        0x0t
        0x0t
    .end array-data
.end method

.method private calculateIVCVC3(Ljava/security/Key;[B)[B
    .locals 4
    .param p1, "mkcvc3"    # Ljava/security/Key;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 546
    invoke-direct {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->paddingISO9797Method2([B)[B

    move-result-object v0

    .line 547
    .local v0, "paddedData":[B
    invoke-direct {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateMACISO9797Alg3(Ljava/security/Key;[B)[B

    move-result-object v1

    .line 548
    .local v1, "mac":[B
    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private calculateInitialKey(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;Z)[B
    .locals 12
    .param p1, "sn"    # Lorg/jpos/security/KeySerialNumber;
    .param p2, "bdk"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "tdes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2163
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 2164
    .local v1, "kl":[B
    new-array v2, v0, [B

    .line 2165
    .local v2, "kr":[B
    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    .line 2167
    .local v3, "kk":[B
    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2168
    invoke-static {v3, v0, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2172
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2173
    invoke-virtual {p1}, Lorg/jpos/security/KeySerialNumber;->getBaseKeyID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/jpos/security/KeySerialNumber;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/jpos/security/KeySerialNumber;->getTransactionCounter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x14

    const/16 v7, 0x46

    .line 2172
    invoke-static {v5, v6, v7}, Lorg/jpos/iso/ISOUtil;->padleft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2180
    .local v5, "paddedKsn":Ljava/lang/String;
    nop

    .line 2182
    const/16 v6, 0x10

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v7

    .line 2183
    .local v7, "ksn":[B
    const/4 v8, 0x7

    aget-byte v9, v7, v8

    and-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 2185
    invoke-direct {p0, v7, v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v8

    .line 2186
    .local v8, "data":[B
    invoke-direct {p0, v8, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decrypt64([B[B)[B

    move-result-object v8

    .line 2187
    invoke-direct {p0, v8, v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v8

    .line 2190
    if-eqz p3, :cond_0

    .line 2192
    sget-object v9, Lorg/jpos/security/jceadapter/JCESecurityModule;->_VARIANT_RIGHT_HALF:[B

    invoke-static {v1, v9}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v10

    .line 2193
    .local v10, "kl2":[B
    invoke-static {v2, v9}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v9

    .line 2194
    .local v9, "kr2":[B
    invoke-direct {p0, v7, v10}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v11

    .line 2195
    .local v11, "data2":[B
    invoke-direct {p0, v11, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decrypt64([B[B)[B

    move-result-object v11

    .line 2196
    invoke-direct {p0, v11, v10}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object v11

    .line 2198
    new-array v6, v6, [B

    .line 2199
    .local v6, "d":[B
    invoke-static {v8, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2200
    invoke-static {v11, v4, v6, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2201
    move-object v8, v6

    .line 2203
    .end local v6    # "d":[B
    .end local v9    # "kr2":[B
    .end local v10    # "kl2":[B
    .end local v11    # "data2":[B
    :cond_0
    return-object v8

    .line 2177
    .end local v5    # "paddedKsn":Ljava/lang/String;
    .end local v7    # "ksn":[B
    .end local v8    # "data":[B
    :catch_0
    move-exception v0

    .line 2179
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private calculateMACISO9797Alg3(Ljava/security/Key;[B)[B
    .locals 8
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "d"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    .line 575
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 574
    const/16 v4, 0x40

    invoke-virtual {v0, v4, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v0

    .line 576
    .local v0, "kl":Ljava/security/Key;
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    .line 577
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 576
    invoke-virtual {v1, v4, v5}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v1

    .line 578
    .local v1, "kr":Ljava/security/Key;
    array-length v4, p2

    rem-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 580
    array-length v4, p2

    array-length v5, p2

    rem-int/2addr v5, v3

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    new-array v4, v4, [B

    .line 581
    .local v4, "t":[B
    array-length v5, p2

    invoke-static {p2, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    move-object p2, v4

    .line 585
    .end local v4    # "t":[B
    :cond_0
    const-string v4, "0000000000000000"

    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v4

    .line 586
    .local v4, "y_i":[B
    new-array v3, v3, [B

    .line 587
    .local v3, "yi":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_1

    .line 588
    array-length v6, v3

    invoke-static {p2, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    iget-object v6, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-static {v3, v4}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v4

    .line 587
    add-int/lit8 v5, v5, 0x8

    goto :goto_0

    .line 591
    .end local v5    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v2, v4, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v2

    .line 592
    .end local v4    # "y_i":[B
    .local v2, "y_i":[B
    iget-object v4, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v4, v2, v0}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v2

    .line 593
    return-object v2
.end method

.method private constraintARPCM(Lorg/jpos/security/SKDMethod;Lorg/jpos/security/ARPCMethod;)V
    .locals 3
    .param p1, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p2, "arpcMethod"    # Lorg/jpos/security/ARPCMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 935
    sget-object v0, Lorg/jpos/security/ARPCMethod;->METHOD_2:Lorg/jpos/security/ARPCMethod;

    if-eq p2, v0, :cond_0

    .line 938
    return-void

    .line 936
    :cond_0
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARPC generation method 2 is not used in practice with scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constraintMKDM(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;)V
    .locals 3
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 929
    sget-object v0, Lorg/jpos/security/MKDMethod;->OPTION_B:Lorg/jpos/security/MKDMethod;

    if-eq p1, v0, :cond_0

    .line 932
    return-void

    .line 930
    :cond_0
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Master Key Derivation Option B is not used in practice with scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decimalizeVisa([B)Ljava/lang/String;
    .locals 10
    .param p0, "b"    # [B

    .line 351
    invoke-static {p0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 352
    .local v0, "bec":[C
    array-length v1, v0

    new-array v1, v1, [C

    .line 353
    .local v1, "bhc":[C
    const/4 v2, 0x0

    .line 355
    .local v2, "k":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x41

    if-ge v5, v3, :cond_1

    aget-char v7, v0, v5

    .line 356
    .local v7, "c":C
    if-ge v7, v6, :cond_0

    .line 357
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aput-char v7, v1, v2

    move v2, v6

    .line 355
    .end local v6    # "k":I
    .end local v7    # "c":C
    .restart local v2    # "k":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 359
    :cond_1
    const/16 v3, 0x11

    .line 360
    .local v3, "adjust":C
    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-char v7, v0, v4

    .line 361
    .restart local v7    # "c":C
    if-lt v7, v6, :cond_2

    .line 362
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "k":I
    .local v8, "k":I
    sub-int v9, v7, v3

    int-to-char v9, v9

    aput-char v9, v1, v2

    move v2, v8

    .line 360
    .end local v7    # "c":C
    .end local v8    # "k":I
    .restart local v2    # "k":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 363
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method private decrypt64([B[B)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 2059
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    array-length v1, p2

    shl-int/lit8 v1, v1, 0x3

    int-to-short v1, v1

    .line 2061
    invoke-virtual {v0, v1, p2}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v1

    .line 2059
    invoke-virtual {v0, p1, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method private deriveCommonSK_AC(Ljava/security/Key;[B)Ljava/security/Key;
    .locals 4
    .param p1, "mkac"    # Ljava/security/Key;
    .param p2, "atc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 901
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 902
    .local v0, "r":[B
    array-length v1, p2

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p2, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 904
    invoke-direct {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveCommonSK_SM(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v1

    return-object v1
.end method

.method private deriveCommonSK_SM(Ljava/security/Key;[B)Ljava/security/Key;
    .locals 7
    .param p1, "mksm"    # Ljava/security/Key;
    .param p2, "rand"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 877
    const/16 v0, 0x8

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 878
    .local v1, "rl":[B
    const/16 v2, -0x10

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 879
    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v2, v1, p1}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v2

    .line 880
    .local v2, "skl":[B
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 881
    .local v0, "rr":[B
    const/16 v4, 0xf

    aput-byte v4, v0, v3

    .line 882
    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v3, v0, p1}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v3

    .line 883
    .local v3, "skr":[B
    invoke-static {v2}, Lorg/jpos/security/Util;->adjustDESParity([B)V

    .line 884
    invoke-static {v3}, Lorg/jpos/security/Util;->adjustDESParity([B)V

    .line 885
    iget-object v4, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v6, v5}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v4

    return-object v4
.end method

.method private deriveSK_MK(Ljava/security/Key;[B[B)Ljava/security/Key;
    .locals 4
    .param p1, "mkac"    # Ljava/security/Key;
    .param p2, "atc"    # [B
    .param p3, "upn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 921
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 922
    .local v0, "r":[B
    array-length v1, p2

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p2, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 923
    array-length v1, p3

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    invoke-static {p3, v1, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    invoke-direct {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveCommonSK_SM(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v1

    return-object v1
.end method

.method private deriveSK_VISA(Ljava/security/Key;[B)Ljava/security/Key;
    .locals 6
    .param p1, "mkac"    # Ljava/security/Key;
    .param p2, "atc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 849
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 850
    .local v1, "skl":[B
    array-length v2, p2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/4 v4, 0x6

    invoke-static {p2, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v1

    .line 853
    new-array v2, v0, [B

    .line 854
    .local v2, "skr":[B
    array-length v5, p2

    sub-int/2addr v5, v3

    invoke-static {p2, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    const-string v3, "000000000000FFFF"

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v2

    .line 856
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 857
    .end local v2    # "skr":[B
    .local v0, "skr":[B
    invoke-static {v1}, Lorg/jpos/security/Util;->adjustDESParity([B)V

    .line 858
    invoke-static {v0}, Lorg/jpos/security/Util;->adjustDESParity([B)V

    .line 859
    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-static {v1, v0}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v4, v3}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v2

    return-object v2
.end method

.method private encrypt64([B[B)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 2050
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    array-length v1, p2

    shl-int/lit8 v1, v1, 0x3

    int-to-short v1, v1

    .line 2052
    invoke-virtual {v0, v1, p2}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v1

    .line 2050
    invoke-virtual {v0, p1, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method private static formatPANPSN(Ljava/lang/String;Ljava/lang/String;Lorg/jpos/security/MKDMethod;)[B
    .locals 2
    .param p0, "pan"    # Ljava/lang/String;
    .param p1, "psn"    # Ljava/lang/String;
    .param p2, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 606
    sget-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$MKDMethod:[I

    invoke-virtual {p2}, Lorg/jpos/security/MKDMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 615
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Unsupported ICC Master Key derivation method"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 612
    invoke-static {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSNOptionA(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 613
    :cond_0
    invoke-static {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSNOptionB(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 608
    :pswitch_1
    invoke-static {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSNOptionA(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static formatPANPSNOptionA(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "pan"    # Ljava/lang/String;
    .param p1, "psn"    # Ljava/lang/String;

    .line 673
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 675
    :try_start_0
    invoke-static {p0, v1}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 676
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 677
    :cond_0
    :goto_1
    invoke-static {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->preparePANPSN(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 678
    .local v0, "b":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x8

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method private static formatPANPSNOptionB(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "pan"    # Ljava/lang/String;
    .param p1, "psn"    # Ljava/lang/String;

    .line 697
    invoke-static {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->preparePANPSN(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 699
    .local v0, "b":[B
    sget-object v1, Lorg/jpos/security/jceadapter/JCESecurityModule;->SHA1_MESSAGE_DIGEST:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 701
    .local v1, "r":[B
    invoke-static {v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decimalizeVisa([B)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "rs":Ljava/lang/String;
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3
.end method

.method private static formatPANPSN_dCVD(Ljava/lang/String;Ljava/lang/String;Lorg/jpos/security/MKDMethod;)[B
    .locals 2
    .param p0, "pan"    # Ljava/lang/String;
    .param p1, "psn"    # Ljava/lang/String;
    .param p2, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 627
    sget-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$MKDMethod:[I

    invoke-virtual {p2}, Lorg/jpos/security/MKDMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 633
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Unsupported ICC Master Key derivation method"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :pswitch_0
    invoke-static {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSNOptionB(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 629
    :pswitch_1
    invoke-static {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSNOptionA(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private formatPINBlock(Ljava/lang/String;I)[C
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "checkDigit"    # I

    .line 1479
    sget-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->fPaddingBlock:[B

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1480
    .local v0, "block":[C
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1481
    .local v1, "pinLenHex":[C
    add-int/lit8 v2, p2, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v3

    .line 1484
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1485
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v4, v1

    .line 1486
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1485
    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1487
    return-object v0
.end method

.method private generateLMK()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1926
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->lmks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1928
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    .line 1929
    :try_start_0
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lorg/jpos/security/jceadapter/JCEHandler;->generateDESKey(S)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 1930
    .local v1, "lmkKey":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->spreadLMKVariants([BI)V
    :try_end_0
    .catch Lorg/jpos/security/jceadapter/JCEHandlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    .end local v1    # "lmkKey":Ljavax/crypto/SecretKey;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1932
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    .line 1933
    .local v0, "e":Lorg/jpos/security/jceadapter/JCEHandlerException;
    new-instance v1, Lorg/jpos/security/SMException;

    const-string v2, "Can\'t generate Local Master Keys"

    invoke-direct {v1, v2, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1934
    .end local v0    # "e":Lorg/jpos/security/jceadapter/JCEHandlerException;
    :cond_0
    nop

    .line 1935
    return-void
.end method

.method private generateMACImpl([BLorg/jpos/security/SecureDESKey;Ljava/lang/String;Lorg/jpos/util/LogEvent;)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "kd"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "macAlgorithm"    # Ljava/lang/String;
    .param p4, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1208
    :try_start_0
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lorg/jpos/security/jceadapter/JCEHandler;->generateMAC([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/jpos/security/jceadapter/JCEHandlerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "e":Lorg/jpos/security/jceadapter/JCEHandlerException;
    invoke-virtual {p4, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1211
    invoke-virtual {v0}, Lorg/jpos/security/jceadapter/JCEHandlerException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/InvalidKeyException;

    if-eqz v1, :cond_0

    .line 1212
    new-instance v1, Lorg/jpos/security/SMException;

    invoke-direct {v1, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 1214
    :cond_0
    new-instance v1, Lorg/jpos/security/SMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load MAC algorithm whose name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Check that is used correct JCE provider and/or it is proper configured for this module."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private getKSN(Ljava/lang/String;)Lorg/jpos/security/KeySerialNumber;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .line 2387
    new-instance v0, Lorg/jpos/security/KeySerialNumber;

    .line 2388
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2389
    const/16 v3, 0xa

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2390
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jpos/security/KeySerialNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    return-object v0
.end method

.method private getKeyTypeIndex(SLjava/lang/String;)I
    .locals 4
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 215
    if-nez p2, :cond_0

    .line 216
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_0
    invoke-static {p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getMajorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "majorType":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 221
    .local v1, "index":I
    invoke-static {p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getVariant(Ljava/lang/String;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 222
    return v1

    .line 219
    .end local v1    # "index":I
    :cond_1
    new-instance v1, Lorg/jpos/security/SMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p1, "lmkIndex"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2000
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->lmks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 2001
    .local v0, "lmk":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_0

    .line 2003
    return-object v0

    .line 2002
    :cond_0
    new-instance v1, Lorg/jpos/security/SMException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Invalid key code: LMK0x%1$04x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getMajorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "keyType"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->KEY_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 227
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing key type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getScheme(ILjava/lang/String;)Lorg/jpos/security/KeyScheme;
    .locals 7
    .param p0, "keyLength"    # I
    .param p1, "keyType"    # Ljava/lang/String;

    .line 247
    sget-object v0, Lorg/jpos/security/KeyScheme;->Z:Lorg/jpos/security/KeyScheme;

    .line 248
    .local v0, "scheme":Lorg/jpos/security/KeyScheme;
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 254
    :sswitch_0
    sget-object v0, Lorg/jpos/security/KeyScheme;->Y:Lorg/jpos/security/KeyScheme;

    goto :goto_0

    .line 252
    :sswitch_1
    sget-object v0, Lorg/jpos/security/KeyScheme;->X:Lorg/jpos/security/KeyScheme;

    goto :goto_0

    .line 250
    :sswitch_2
    sget-object v0, Lorg/jpos/security/KeyScheme;->Z:Lorg/jpos/security/KeyScheme;

    .line 256
    :goto_0
    if-nez p1, :cond_0

    .line 257
    return-object v0

    .line 258
    :cond_0
    sget-object v1, Lorg/jpos/security/jceadapter/JCESecurityModule;->KEY_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 259
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 260
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 262
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/security/KeyScheme;->valueOf(Ljava/lang/String;)Lorg/jpos/security/KeyScheme;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 265
    goto :goto_1

    .line 263
    :catch_0
    move-exception v3

    .line 264
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is not valid key scheme"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 266
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getVariant(Ljava/lang/String;)I
    .locals 6
    .param p0, "keyType"    # Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "variant":I
    sget-object v1, Lorg/jpos/security/jceadapter/JCESecurityModule;->KEY_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 236
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 237
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 239
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v2

    .line 241
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid key variant"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return v0
.end method

.method private hash8([[B)[B
    .locals 4
    .param p1, "bb"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2498
    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2499
    .local v0, "md":Ljava/security/MessageDigest;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 2500
    .local v3, "b":[B
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 2499
    .end local v3    # "b":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2502
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2503
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 2504
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/jpos/security/SMException;

    invoke-direct {v1, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "jceProviderClassName"    # Ljava/lang/String;
    .param p2, "lmkFile"    # Ljava/lang/String;
    .param p3, "lmkRebuild"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1793
    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1794
    .local v0, "lmk":Ljava/io/File;
    :goto_0
    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    .line 1795
    :cond_1
    new-instance v1, Lorg/jpos/security/SMException;

    const-string v2, "null lmkFile - needs rebuild"

    invoke-direct {v1, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1797
    :cond_2
    :goto_1
    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    .line 1798
    const-string v2, "ZMK"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "ZPK"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "PVK"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "TPK"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "TMK"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "TAK"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "CVK"

    const/16 v3, 0x402

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "ZAK"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "BDK"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "MK-AC"

    const/16 v3, 0x109

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "MK-SMI"

    const/16 v3, 0x209

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "MK-SMC"

    const/16 v3, 0x309

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "MK-DAC"

    const/16 v3, 0x409

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "MK-DN"

    const/16 v3, 0x509

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "MK-CVC3"

    const/16 v3, 0x709

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "ZEK"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "DEK"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "RSA_SK"

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "HMAC"

    const/16 v3, 0x10c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->keyTypeToLMKIndex:Ljava/util/Map;

    const-string v2, "RSA_PK"

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "jce-provider"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1822
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1823
    :cond_3
    const-string v2, "No JCE Provider specified. Attempting to load default provider (SunJCE)."

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1824
    const-string v2, "com.sun.crypto.provider.SunJCE"

    move-object p1, v2

    .line 1826
    :cond_4
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider;

    .line 1827
    .local v2, "provider":Ljava/security/Provider;
    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 1828
    const-string v3, "name"

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1834
    :try_start_2
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1835
    nop

    .line 1836
    new-instance v3, Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-direct {v3, v2}, Lorg/jpos/security/jceadapter/JCEHandler;-><init>(Ljava/security/Provider;)V

    iput-object v3, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1837
    const-string v3, "local-master-keys"

    if-eqz p3, :cond_7

    .line 1839
    :try_start_3
    new-instance v4, Lorg/jpos/util/LogEvent;

    invoke-direct {v4, p0, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v4

    .line 1840
    const-string v4, "\"."

    if-eqz v0, :cond_5

    .line 1841
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebuilding new Local Master Keys in file: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1842
    :cond_5
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1844
    invoke-direct {p0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateLMK()V

    .line 1846
    new-instance v5, Lorg/jpos/util/LogEvent;

    invoke-direct {v5, p0, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    move-object v1, v5

    .line 1847
    if-eqz v0, :cond_6

    .line 1848
    invoke-direct {p0, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->writeLMK(Ljava/io/File;)V

    .line 1849
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local Master Keys built successfully in file: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1850
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1849
    invoke-virtual {v1, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_2

    .line 1852
    :cond_6
    const-string v4, "Local Master Keys built successfully"

    invoke-virtual {v1, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1854
    :goto_2
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1856
    :cond_7
    if-eqz v0, :cond_9

    .line 1857
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1865
    invoke-direct {p0, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->readLMK(Ljava/io/File;)V

    .line 1866
    new-instance v4, Lorg/jpos/util/LogEvent;

    invoke-direct {v4, p0, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    move-object v1, v4

    .line 1867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded successfully from file: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1869
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    goto :goto_3

    .line 1859
    :cond_8
    new-instance v3, Lorg/jpos/security/SMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading Local Master Keys, file: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1860
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" does not exist. Please specify a valid LMK file, or rebuild a new one."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lmk":Ljava/io/File;
    .end local p1    # "jceProviderClassName":Ljava/lang/String;
    .end local p2    # "lmkFile":Ljava/lang/String;
    .end local p3    # "lmkRebuild":Z
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1879
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "provider":Ljava/security/Provider;
    .restart local v0    # "lmk":Ljava/io/File;
    .restart local p1    # "jceProviderClassName":Ljava/lang/String;
    .restart local p2    # "lmkFile":Ljava/lang/String;
    .restart local p3    # "lmkRebuild":Z
    :cond_9
    :goto_3
    nop

    .line 1880
    return-void

    .line 1834
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1829
    :catch_0
    move-exception v2

    .line 1830
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1831
    new-instance v3, Lorg/jpos/security/SMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load jce provider whose class name is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lmk":Ljava/io/File;
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "jceProviderClassName":Ljava/lang/String;
    .end local p2    # "lmkFile":Ljava/lang/String;
    .end local p3    # "lmkRebuild":Z
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1834
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "lmk":Ljava/io/File;
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "jceProviderClassName":Ljava/lang/String;
    .restart local p2    # "lmkFile":Ljava/lang/String;
    .restart local p3    # "lmkRebuild":Z
    :goto_4
    :try_start_6
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1835
    nop

    .end local v0    # "lmk":Ljava/io/File;
    .end local p1    # "jceProviderClassName":Ljava/lang/String;
    .end local p2    # "lmkFile":Ljava/lang/String;
    .end local p3    # "lmkRebuild":Z
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1872
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v0    # "lmk":Ljava/io/File;
    .restart local p1    # "jceProviderClassName":Ljava/lang/String;
    .restart local p2    # "lmkFile":Ljava/lang/String;
    .restart local p3    # "lmkRebuild":Z
    :catch_1
    move-exception v1

    .line 1873
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Lorg/jpos/security/SMException;

    if-eqz v2, :cond_a

    .line 1874
    move-object v2, v1

    check-cast v2, Lorg/jpos/security/SMException;

    throw v2

    .line 1877
    :cond_a
    new-instance v2, Lorg/jpos/security/SMException;

    invoke-direct {v2, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private isVSDCPinBlockFormat(B)Z
    .locals 1
    .param p1, "pinBlockFormat"    # B

    .line 1148
    const/16 v0, 0x29

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private lpack([B)[B
    .locals 5
    .param p1, "b"    # [B

    .line 2475
    array-length v0, p1

    .line 2476
    .local v0, "l":I
    add-int/lit8 v1, v0, 0x9

    shr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    .line 2477
    .local v1, "adjustedLen":I
    new-array v2, v1, [B

    .line 2478
    .local v2, "d":[B
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2479
    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 2480
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 2481
    return-object v2
.end method

.method private lunpack([B)[B
    .locals 4
    .param p1, "b"    # [B

    .line 2490
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 2491
    .local v1, "l":I
    new-array v2, v1, [B

    .line 2492
    .local v2, "d":[B
    const/4 v3, 0x2

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2493
    return-object v2
.end method

.method private notZero([B)Z
    .locals 3
    .param p1, "b"    # [B

    .line 2149
    array-length v0, p1

    .line 2150
    .local v0, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2152
    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    .line 2154
    const/4 v2, 0x1

    return v2

    .line 2150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2157
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private or([B[BI)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "mask"    # [B
    .param p3, "offset"    # I

    .line 2120
    array-length v0, p1

    sub-int/2addr v0, p3

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2121
    .local v0, "len":I
    new-array v1, v0, [B

    .line 2123
    .local v1, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2125
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "offset":I
    .local v3, "offset":I
    aget-byte v4, p1, p3

    aget-byte v5, p2, v2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, p3

    .line 2123
    add-int/lit8 v2, v2, 0x1

    move p3, v3

    goto :goto_0

    .line 2127
    .end local v2    # "i":I
    .end local v3    # "offset":I
    .restart local p3    # "offset":I
    :cond_0
    return-void
.end method

.method private paddingISO9797Method2([B)[B
    .locals 4
    .param p1, "d"    # [B

    .line 558
    array-length v0, p1

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 559
    .local v0, "t":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    array-length v1, p1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 561
    array-length v3, p1

    if-ne v1, v3, :cond_0

    const/16 v3, 0x80

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v1    # "i":I
    :cond_1
    move-object p1, v0

    .line 563
    return-object p1
.end method

.method private static preparePANPSN(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "pan"    # Ljava/lang/String;
    .param p1, "psn"    # Ljava/lang/String;

    .line 654
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    const-string p1, "00"

    .line 656
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private readLMK(Ljava/io/File;)V
    .locals 8
    .param p1, "lmkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->lmks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1945
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1946
    .local v0, "lmkProps":Ljava/util/Properties;
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1948
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1950
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1951
    nop

    .line 1952
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 1953
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1954
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1955
    .local v3, "propName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    nop

    .end local v3    # "propName":Ljava/lang/String;
    goto :goto_0

    .line 1958
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0xe

    if-gt v3, v4, :cond_1

    .line 1959
    const-string v4, "LMK0x%1$02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1960
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1959
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    .line 1960
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1959
    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v4

    .line 1961
    .local v4, "lmkData":[B
    invoke-direct {p0, v4, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->spreadLMKVariants([BI)V

    .line 1958
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1966
    .end local v0    # "lmkProps":Ljava/util/Properties;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v3    # "i":I
    .end local v4    # "lmkData":[B
    :cond_1
    nop

    .line 1967
    return-void

    .line 1950
    .restart local v0    # "lmkProps":Ljava/util/Properties;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1951
    nop

    .end local p1    # "lmkFile":Ljava/io/File;
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1963
    .end local v0    # "lmkProps":Ljava/util/Properties;
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p1    # "lmkFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1964
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/security/SMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read Local Master Keys from file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private shr([B)V
    .locals 5
    .param p1, "b"    # [B

    .line 2105
    const/4 v0, 0x0

    .line 2106
    .local v0, "carry":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 2108
    aget-byte v2, p1, v1

    .line 2109
    .local v2, "c":B
    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 2110
    if-eqz v0, :cond_0

    .line 2112
    aget-byte v3, p1, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 2114
    :cond_0
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v0, v4

    .line 2106
    .end local v2    # "c":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2116
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private splitPins(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "pins"    # Ljava/lang/String;

    .line 1491
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 1492
    .local v1, "pin":[Ljava/lang/String;
    sget-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule;->SPLIT_PIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 1493
    .local v2, "p":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    aput-object v4, v1, v3

    .line 1494
    array-length v3, v2

    if-lt v3, v0, :cond_0

    .line 1495
    const/4 v0, 0x1

    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 1496
    :cond_0
    return-object v1
.end method

.method private spreadLMKVariants([BI)V
    .locals 21
    .param p1, "lmkData"    # [B
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1899
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1900
    .local v1, "i":I
    sget-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule;->variants:[I

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v2, v5

    .line 1901
    .local v6, "v":I
    const/4 v7, 0x0

    .line 1902
    .local v7, "k":I
    move-object/from16 v8, p1

    invoke-direct {v0, v8, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->applyVariant([BI)[B

    move-result-object v9

    .line 1903
    .local v9, "variantData":[B
    sget-object v10, Lorg/jpos/security/jceadapter/JCESecurityModule;->schemeVariants:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    aget v13, v10, v12

    .line 1904
    .local v13, "sv":I
    invoke-direct {v0, v9, v13}, Lorg/jpos/security/jceadapter/JCESecurityModule;->applySchemeVariant([BI)[B

    move-result-object v20

    .line 1908
    .local v20, "svData":[B
    const/4 v15, 0x0

    iget-object v14, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    .line 1909
    const/16 v4, 0x80

    invoke-virtual {v14, v4}, Lorg/jpos/security/jceadapter/JCEHandler;->getBytesLength(S)I

    move-result v16

    const/16 v18, 0x0

    iget-object v14, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    const/16 v4, 0x40

    .line 1910
    invoke-virtual {v14, v4}, Lorg/jpos/security/jceadapter/JCEHandler;->getBytesLength(S)I

    move-result v19

    .line 1908
    move-object/from16 v14, v20

    move-object/from16 v17, v20

    invoke-static/range {v14 .. v19}, Lorg/jpos/iso/ISOUtil;->concat([BII[BII)[B

    move-result-object v4

    .line 1912
    .end local v20    # "svData":[B
    .local v4, "svData":[B
    move/from16 v14, p2

    .line 1913
    .local v14, "key":I
    mul-int/lit16 v15, v1, 0x100

    add-int/2addr v14, v15

    .line 1914
    add-int/lit8 v15, v7, 0x1

    .end local v7    # "k":I
    .local v15, "k":I
    mul-int/lit16 v7, v7, 0x1000

    add-int/2addr v14, v7

    .line 1915
    iget-object v7, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->lmks:Ljava/util/Map;

    move-object/from16 v16, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v17, v3

    iget-object v3, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    const/16 v0, 0x80

    invoke-virtual {v3, v0, v4}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    .end local v4    # "svData":[B
    .end local v13    # "sv":I
    .end local v14    # "key":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move v7, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    goto :goto_1

    .line 1917
    .end local v15    # "k":I
    .restart local v7    # "k":I
    :cond_0
    move-object/from16 v16, v2

    move/from16 v17, v3

    .end local v6    # "v":I
    .end local v7    # "k":I
    .end local v9    # "variantData":[B
    add-int/lit8 v1, v1, 0x1

    .line 1900
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 1919
    :cond_1
    move-object/from16 v8, p1

    return-void
.end method

.method private translatePINExt(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Ljava/security/Key;Ljava/security/Key;BLjava/security/Key;Lorg/jpos/security/PaddingMethod;)Lorg/jpos/security/EncryptedPIN;
    .locals 14
    .param p1, "oldPinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p3, "kd1"    # Ljava/security/Key;
    .param p4, "kd2"    # Ljava/security/Key;
    .param p5, "destinationPINBlockFormat"    # B
    .param p6, "udk"    # Ljava/security/Key;
    .param p7, "padm"    # Lorg/jpos/security/PaddingMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 794
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual/range {p2 .. p2}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v4

    .line 796
    .local v4, "accountNumber":Ljava/lang/String;
    iget-object v5, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual/range {p2 .. p2}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v5

    .line 797
    .local v5, "clearPINBlock":[B
    invoke-virtual/range {p2 .. p2}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v6

    invoke-virtual {p0, v5, v6, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePIN([BBLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 801
    .local v6, "pin":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->isVSDCPinBlockFormat(B)Z

    move-result v7

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 802
    invoke-interface/range {p6 .. p6}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v7

    .line 803
    .local v7, "udka":Ljava/lang/String;
    const/16 v10, 0x2a

    if-ne v3, v10, :cond_0

    .line 804
    iget-object v10, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v10

    .line 805
    .local v10, "oldClearPINBlock":[B
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v11

    invoke-virtual {p0, v10, v11, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePIN([BBLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 807
    .local v11, "oldPIN":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v3, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v5

    .line 808
    .end local v10    # "oldClearPINBlock":[B
    .end local v11    # "oldPIN":Ljava/lang/String;
    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {p0, v6, v3, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v5

    .line 811
    :goto_0
    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 812
    .end local v7    # "udka":Ljava/lang/String;
    goto :goto_1

    .line 813
    :cond_1
    invoke-virtual {p0, v6, v3, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v5

    .line 816
    :goto_1
    sget-object v7, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$PaddingMethod:[I

    invoke-virtual/range {p7 .. p7}, Lorg/jpos/security/PaddingMethod;->ordinal()I

    move-result v10

    aget v7, v7, v10

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 824
    :pswitch_0
    invoke-direct {p0, v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->paddingISO9797Method2([B)[B

    move-result-object v5

    .line 825
    goto :goto_2

    .line 819
    :pswitch_1
    const/4 v7, 0x1

    new-array v7, v7, [B

    aput-byte v8, v7, v9

    invoke-static {v7, v5}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v5

    .line 820
    invoke-direct {p0, v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->paddingISO9797Method2([B)[B

    move-result-object v5

    .line 821
    nop

    .line 830
    :goto_2
    sget-object v7, Lorg/jpos/security/PaddingMethod;->CCD:Lorg/jpos/security/PaddingMethod;

    move-object/from16 v8, p7

    if-ne v8, v7, :cond_2

    .line 831
    iget-object v7, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    sget-object v10, Lorg/jpos/security/jceadapter/JCESecurityModule;->zeroBlock:[B

    array-length v11, v10

    .line 832
    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    .line 831
    invoke-virtual {v7, v5, v2, v10}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptDataCBC([BLjava/security/Key;[B)[B

    move-result-object v7

    .local v7, "translatedPINBlock":[B
    goto :goto_3

    .line 834
    .end local v7    # "translatedPINBlock":[B
    :cond_2
    iget-object v7, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v7, v5, v2}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v7

    .line 835
    .restart local v7    # "translatedPINBlock":[B
    :goto_3
    new-instance v10, Lorg/jpos/security/EncryptedPIN;

    invoke-direct {v10, v7, v3, v4, v9}, Lorg/jpos/security/EncryptedPIN;-><init>([BBLjava/lang/String;Z)V

    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validatePinBlock([CIII)V
    .locals 6
    .param p1, "pblock"    # [C
    .param p2, "checkDigit"    # I
    .param p3, "padidx"    # I
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1623
    const/16 v5, 0x46

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->validatePinBlock([CIIIC)V

    .line 1624
    return-void
.end method

.method private validatePinBlock([CIIIC)V
    .locals 5
    .param p1, "pblock"    # [C
    .param p2, "checkDigit"    # I
    .param p3, "padidx"    # I
    .param p4, "offset"    # I
    .param p5, "padDigit"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1630
    if-ltz p2, :cond_1

    const/4 v0, 0x0

    aget-char v0, p1, v0

    add-int/lit8 v0, v0, -0x30

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 1631
    :cond_0
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "PIN Block Error - invalid check digit"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1633
    :cond_1
    :goto_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1634
    .local v0, "i":I
    :goto_1
    if-lt v0, p3, :cond_4

    .line 1635
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-char v0, p1, v0

    if-eq v0, p5, :cond_3

    if-gtz p5, :cond_2

    goto :goto_2

    .line 1636
    :cond_2
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v2, "PIN Block Error - invalid padding"

    invoke-direct {v0, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    :cond_3
    :goto_2
    move v0, v1

    goto :goto_1

    .line 1638
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_4
    :goto_3
    if-lt v0, p4, :cond_6

    .line 1639
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-char v0, p1, v0

    const/16 v2, 0x41

    if-ge v0, v2, :cond_5

    move v0, v1

    goto :goto_3

    .line 1640
    :cond_5
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v2, "PIN Block Error - illegal pin digit"

    invoke-direct {v0, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1642
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_6
    sub-int v1, p3, p4

    .line 1643
    .local v1, "pinLength":I
    const/4 v2, 0x4

    if-lt v1, v2, :cond_7

    const/16 v2, 0xc

    if-gt v1, v2, :cond_7

    .line 1645
    return-void

    .line 1644
    :cond_7
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PIN Block Error - invalid pin length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeLMK(Ljava/io/File;)V
    .locals 6
    .param p1, "lmkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1975
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1977
    .local v0, "lmkProps":Ljava/util/Properties;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    .line 1978
    :try_start_0
    const-string v2, "LMK0x%1$02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->lmks:Ljava/util/Map;

    .line 1979
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1978
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1977
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1981
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    const-string v2, "Local Master Keys"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1985
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1986
    nop

    .line 1990
    .end local v1    # "out":Ljava/io/OutputStream;
    nop

    .line 1991
    return-void

    .line 1985
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1986
    nop

    .end local v0    # "lmkProps":Ljava/util/Properties;
    .end local p1    # "lmkFile":Ljava/io/File;
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1987
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "lmkProps":Ljava/util/Properties;
    .restart local p1    # "lmkFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1988
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t write Local Master Keys to file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method protected calculateARPC(Ljava/security/Key;[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .locals 4
    .param p1, "skarpc"    # Ljava/security/Key;
    .param p2, "arqc"    # [B
    .param p3, "arpcMethod"    # Lorg/jpos/security/ARPCMethod;
    .param p4, "arc"    # [B
    .param p5, "propAuthData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1055
    if-nez p3, :cond_0

    .line 1056
    sget-object p3, Lorg/jpos/security/ARPCMethod;->METHOD_1:Lorg/jpos/security/ARPCMethod;

    .line 1058
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1059
    .local v0, "b":[B
    sget-object v1, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$ARPCMethod:[I

    invoke-virtual {p3}, Lorg/jpos/security/ARPCMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1072
    new-instance v1, Lorg/jpos/security/SMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ARPC Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1065
    :pswitch_0
    invoke-static {p2, p4}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v0

    .line 1066
    if-eqz p5, :cond_1

    .line 1067
    invoke-static {v0, p5}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v0

    .line 1068
    :cond_1
    invoke-direct {p0, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->paddingISO9797Method2([B)[B

    move-result-object v0

    .line 1069
    invoke-direct {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateMACISO9797Alg3(Ljava/security/Key;[B)[B

    move-result-object v0

    .line 1070
    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 1061
    :pswitch_1
    array-length v1, p4

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p4, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1062
    invoke-static {p2, v0}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 1063
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v1, v0, p1}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected calculateARQC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 6
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p3, "imkac"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "accntSeqNo"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "upn"    # [B
    .param p8, "transData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 948
    if-nez p1, :cond_0

    .line 949
    sget-object p1, Lorg/jpos/security/MKDMethod;->OPTION_A:Lorg/jpos/security/MKDMethod;

    .line 951
    :cond_0
    invoke-static {p4, p5, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSN(Ljava/lang/String;Ljava/lang/String;Lorg/jpos/security/MKDMethod;)[B

    move-result-object v0

    .line 952
    .local v0, "panpsn":[B
    invoke-virtual {p0, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveICCMasterKey(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v1

    .line 953
    .local v1, "mkac":Ljava/security/Key;
    move-object v2, v1

    .line 954
    .local v2, "skac":Ljava/security/Key;
    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$SKDMethod:[I

    invoke-virtual {p2}, Lorg/jpos/security/SKDMethod;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 966
    new-instance v3, Lorg/jpos/security/SMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session Key Derivation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 963
    :pswitch_0
    invoke-direct {p0, v1, p6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveCommonSK_AC(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v2

    .line 964
    goto :goto_0

    .line 959
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintMKDM(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;)V

    .line 960
    invoke-direct {p0, v1, p6, p7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveSK_MK(Ljava/security/Key;[B[B)Ljava/security/Key;

    move-result-object v2

    .line 961
    goto :goto_0

    .line 956
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintMKDM(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;)V

    .line 957
    nop

    .line 969
    :goto_0
    invoke-direct {p0, v2, p8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateMACISO9797Alg3(Ljava/security/Key;[B)[B

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic calculateCAVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCAVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected calculateCAVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "cvk"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "upn"    # Ljava/lang/String;
    .param p4, "authrc"    # Ljava/lang/String;
    .param p5, "sfarc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0, p3, p4, p5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->checkCAVVArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVD(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected calculateCVC3(Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/MKDMethod;)Ljava/lang/String;
    .locals 8
    .param p1, "imkcvc3"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "accountNo"    # Ljava/lang/String;
    .param p3, "acctSeqNo"    # Ljava/lang/String;
    .param p4, "atc"    # [B
    .param p5, "upn"    # [B
    .param p6, "data"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 510
    if-nez p7, :cond_0

    .line 511
    sget-object p7, Lorg/jpos/security/MKDMethod;->OPTION_A:Lorg/jpos/security/MKDMethod;

    .line 512
    :cond_0
    invoke-static {p2, p3, p7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSN_dCVD(Ljava/lang/String;Ljava/lang/String;Lorg/jpos/security/MKDMethod;)[B

    move-result-object v0

    .line 513
    .local v0, "panpsn":[B
    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveICCMasterKey(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v1

    .line 514
    .local v1, "mkcvc3":Ljava/security/Key;
    move-object v2, p6

    .line 515
    .local v2, "ivcvc3":[B
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 517
    invoke-direct {p0, v1, p6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateIVCVC3(Ljava/security/Key;[B)[B

    move-result-object v2

    .line 519
    :cond_1
    invoke-static {v2, p5}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v3

    .line 520
    .local v3, "b":[B
    invoke-static {v3, p4}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v3

    .line 522
    iget-object v4, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v4, v3, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v3

    .line 524
    const/4 v4, 0x6

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 525
    .local v4, "cvc3l":I
    const/4 v5, 0x7

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 527
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "%05d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected calculateCVD(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "cvk"    # Ljava/security/Key;
    .param p3, "expDate"    # Ljava/lang/String;
    .param p4, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    .line 391
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 390
    const/16 v4, 0x40

    invoke-virtual {v0, v4, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v0

    .line 393
    .local v0, "udka":Ljava/security/Key;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    const/16 v4, 0x20

    invoke-static {v1, v4}, Lorg/jpos/iso/ISOUtil;->zeropadRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 397
    .local v1, "block":[B
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 398
    .local v4, "ba":[B
    const/16 v5, 0x10

    invoke-static {v1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 401
    .local v3, "bb":[B
    iget-object v5, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v5, v4, v0}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v5

    .line 402
    .local v5, "bc":[B
    invoke-static {v5, v3}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v6

    .line 404
    .local v6, "bd":[B
    iget-object v7, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v7, v6, p2}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v7

    .line 405
    .local v7, "be":[B
    invoke-static {v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decimalizeVisa([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic calculateCVDImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVDImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected calculateCVDImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "cvkA"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "cvkB"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "expDate"    # Ljava/lang/String;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0, p2, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, p5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVD(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected calculateCVV(Ljava/lang/String;Ljava/security/Key;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "cvk"    # Ljava/security/Key;
    .param p3, "expDate"    # Ljava/util/Date;
    .param p4, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 384
    const-string v0, "yyMM"

    invoke-static {p3, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "ed":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVD(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic calculateCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected calculateCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "cvkA"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "cvkB"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "expDate"    # Ljava/util/Date;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p2, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, p5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVV(Ljava/lang/String;Ljava/security/Key;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected calculateDerivedKey(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;ZZ)[B
    .locals 1
    .param p1, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p2, "bdk"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "tdes"    # Z
    .param p4, "dataEncryption"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2261
    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateDerivedKeyTDES(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;Z)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateDerivedKeySDES(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected calculateKeyCheckValue(Ljava/security/Key;)[B
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1369
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    sget-object v1, Lorg/jpos/security/jceadapter/JCESecurityModule;->zeroBlock:[B

    invoke-virtual {v0, v1, p1}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v0

    .line 1370
    .local v0, "encryptedZeroBlock":[B
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->trim([BI)[B

    move-result-object v1

    return-object v1
.end method

.method protected calculatePIN([BBLjava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "pinBlock"    # [B
    .param p2, "pinBlockFormat"    # B
    .param p3, "accountNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1657
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v10, 0x0

    .line 1658
    .local v10, "pin":Ljava/lang/String;
    invoke-direct {v6, v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->isVSDCPinBlockFormat(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1659
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1660
    :cond_0
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UDK-A: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The length of the UDK-A must be 16 hexadecimal digits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1662
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1664
    :goto_0
    const-string v0, "00000000"

    const-string v1, "0000"

    const/4 v2, 0x0

    sparse-switch v8, :sswitch_data_0

    .line 1780
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PIN Block format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1764
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1765
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1764
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v11

    .line 1767
    .local v11, "bl2":[B
    invoke-static {v7, v11}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v12

    .line 1768
    .local v12, "bl1":[B
    aget-byte v0, v12, v2

    and-int/lit8 v13, v0, 0xf

    .line 1769
    .local v13, "pinLength":I
    invoke-static {v12}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .line 1770
    .local v14, "block1":[C
    const/4 v15, 0x2

    .line 1771
    .local v15, "offset":I
    const/16 v16, 0x0

    .line 1772
    .local v16, "checkDigit":I
    add-int v5, v13, v15

    .line 1774
    .local v5, "padidx":I
    const/16 v17, 0x30

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v16

    move v3, v5

    move v4, v15

    move-object/from16 v18, v10

    move v10, v5

    .end local v5    # "padidx":I
    .local v10, "padidx":I
    .local v18, "pin":Ljava/lang/String;
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->validatePinBlock([CIIIC)V

    .line 1776
    new-instance v0, Ljava/lang/String;

    invoke-static {v14, v15, v10}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 1778
    .end local v10    # "padidx":I
    .end local v11    # "bl2":[B
    .end local v12    # "bl1":[B
    .end local v13    # "pinLength":I
    .end local v14    # "block1":[C
    .end local v15    # "offset":I
    .end local v16    # "checkDigit":I
    .end local v18    # "pin":Ljava/lang/String;
    .local v0, "pin":Ljava/lang/String;
    goto/16 :goto_1

    .line 1746
    .end local v0    # "pin":Ljava/lang/String;
    .local v10, "pin":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v18, v10

    .end local v10    # "pin":Ljava/lang/String;
    .restart local v18    # "pin":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1747
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1746
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1749
    .local v0, "bl2":[B
    invoke-static {v7, v0}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v1

    .line 1750
    .local v1, "bl1":[B
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0xf

    .line 1751
    .local v2, "pinLength":I
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1752
    .local v3, "block1":[C
    const/4 v4, 0x2

    .line 1753
    .local v4, "offset":I
    const/4 v5, 0x0

    .line 1754
    .local v5, "checkDigit":I
    add-int v10, v2, v4

    .line 1756
    .local v10, "padidx":I
    invoke-direct {v6, v3, v5, v10, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->validatePinBlock([CIII)V

    .line 1758
    new-instance v11, Ljava/lang/String;

    invoke-static {v3, v4, v10}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    move-object v0, v11

    .line 1760
    .end local v1    # "bl1":[B
    .end local v2    # "pinLength":I
    .end local v3    # "block1":[C
    .end local v4    # "offset":I
    .end local v5    # "checkDigit":I
    .end local v10    # "padidx":I
    .end local v18    # "pin":Ljava/lang/String;
    .local v0, "pin":Ljava/lang/String;
    goto/16 :goto_1

    .line 1729
    .end local v0    # "pin":Ljava/lang/String;
    .local v10, "pin":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v18, v10

    .end local v10    # "pin":Ljava/lang/String;
    .restart local v18    # "pin":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1731
    .local v0, "bl2":[B
    invoke-static {v7, v0}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v1

    .line 1732
    .restart local v1    # "bl1":[B
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0xf

    .line 1733
    .restart local v2    # "pinLength":I
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1734
    .restart local v3    # "block1":[C
    const/4 v4, 0x2

    .line 1735
    .restart local v4    # "offset":I
    const/4 v5, 0x2

    .line 1736
    .restart local v5    # "checkDigit":I
    add-int v10, v2, v4

    .line 1738
    .local v10, "padidx":I
    invoke-direct {v6, v3, v5, v10, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->validatePinBlock([CIII)V

    .line 1740
    new-instance v11, Ljava/lang/String;

    invoke-static {v3, v4, v10}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    move-object v0, v11

    .line 1742
    .end local v1    # "bl1":[B
    .end local v2    # "pinLength":I
    .end local v3    # "block1":[C
    .end local v4    # "offset":I
    .end local v5    # "checkDigit":I
    .end local v10    # "padidx":I
    .end local v18    # "pin":Ljava/lang/String;
    .local v0, "pin":Ljava/lang/String;
    goto/16 :goto_1

    .line 1715
    .end local v0    # "pin":Ljava/lang/String;
    .local v10, "pin":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v18, v10

    .end local v10    # "pin":Ljava/lang/String;
    .restart local v18    # "pin":Ljava/lang/String;
    aget-byte v0, v7, v2

    and-int/lit8 v0, v0, 0xf

    .line 1716
    .local v0, "pinLength":I
    invoke-static/range {p1 .. p1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1717
    .local v1, "block1":[C
    const/4 v2, 0x2

    .line 1718
    .local v2, "offset":I
    const/4 v3, 0x2

    .line 1719
    .local v3, "checkDigit":I
    add-int v4, v0, v2

    .line 1721
    .local v4, "padidx":I
    invoke-direct {v6, v1, v3, v4, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->validatePinBlock([CIII)V

    .line 1723
    new-instance v5, Ljava/lang/String;

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>([C)V

    move-object v0, v5

    .line 1725
    .end local v1    # "block1":[C
    .end local v2    # "offset":I
    .end local v3    # "checkDigit":I
    .end local v4    # "padidx":I
    .end local v18    # "pin":Ljava/lang/String;
    .local v0, "pin":Ljava/lang/String;
    goto/16 :goto_1

    .line 1701
    .end local v0    # "pin":Ljava/lang/String;
    .restart local v10    # "pin":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v18, v10

    .end local v10    # "pin":Ljava/lang/String;
    .restart local v18    # "pin":Ljava/lang/String;
    move-object/from16 v10, p1

    .line 1702
    .local v10, "bl1":[B
    aget-byte v0, v10, v2

    and-int/lit8 v11, v0, 0xf

    .line 1703
    .local v11, "pinLength":I
    invoke-static {v10}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 1704
    .local v12, "block1":[C
    const/4 v13, 0x2

    .line 1705
    .local v13, "offset":I
    const/4 v14, 0x1

    .line 1706
    .local v14, "checkDigit":I
    add-int v15, v11, v13

    .line 1708
    .local v15, "padidx":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v14

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->validatePinBlock([CIIIC)V

    .line 1710
    new-instance v0, Ljava/lang/String;

    invoke-static {v12, v13, v15}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 1712
    .end local v10    # "bl1":[B
    .end local v11    # "pinLength":I
    .end local v12    # "block1":[C
    .end local v13    # "offset":I
    .end local v14    # "checkDigit":I
    .end local v15    # "padidx":I
    .end local v18    # "pin":Ljava/lang/String;
    .restart local v0    # "pin":Ljava/lang/String;
    goto :goto_1

    .line 1685
    .end local v0    # "pin":Ljava/lang/String;
    .local v10, "pin":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v18, v10

    .end local v10    # "pin":Ljava/lang/String;
    .restart local v18    # "pin":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    .line 1686
    .local v0, "bl1":Ljava/lang/String;
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1687
    .local v1, "padidx":I
    if-gez v1, :cond_2

    const/16 v1, 0xc

    .line 1688
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1689
    .local v2, "block1":[C
    const/4 v3, -0x1

    .line 1690
    .restart local v3    # "checkDigit":I
    const/4 v4, 0x0

    .line 1693
    .local v4, "offset":I
    invoke-direct {v6, v2, v3, v1, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->validatePinBlock([CIII)V

    .line 1695
    new-instance v5, Ljava/lang/String;

    invoke-static {v2, v4, v1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>([C)V

    move-object v0, v5

    .line 1697
    .end local v1    # "padidx":I
    .end local v2    # "block1":[C
    .end local v3    # "checkDigit":I
    .end local v4    # "offset":I
    .end local v18    # "pin":Ljava/lang/String;
    .local v0, "pin":Ljava/lang/String;
    goto :goto_1

    .line 1669
    .end local v0    # "pin":Ljava/lang/String;
    .restart local v10    # "pin":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v18, v10

    .end local v10    # "pin":Ljava/lang/String;
    .restart local v18    # "pin":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1671
    .local v0, "bl2":[B
    invoke-static {v7, v0}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v1

    .line 1672
    .local v1, "bl1":[B
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0xf

    .line 1673
    .local v2, "pinLength":I
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1674
    .local v3, "block1":[C
    const/4 v4, 0x2

    .line 1675
    .restart local v4    # "offset":I
    const/4 v5, 0x0

    .line 1676
    .restart local v5    # "checkDigit":I
    add-int v10, v2, v4

    .line 1678
    .local v10, "padidx":I
    invoke-direct {v6, v3, v5, v10, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->validatePinBlock([CIII)V

    .line 1680
    new-instance v11, Ljava/lang/String;

    invoke-static {v3, v4, v10}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    move-object v0, v11

    .line 1682
    .end local v1    # "bl1":[B
    .end local v2    # "pinLength":I
    .end local v3    # "block1":[C
    .end local v4    # "offset":I
    .end local v5    # "checkDigit":I
    .end local v10    # "padidx":I
    .end local v18    # "pin":Ljava/lang/String;
    .local v0, "pin":Ljava/lang/String;
    nop

    .line 1782
    :goto_1
    return-object v0

    .line 1663
    .end local v0    # "pin":Ljava/lang/String;
    .local v10, "pin":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Account Number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The length of the account number must be 12 (the 12 right-most digits of the account number excluding the check digit)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0x22 -> :sswitch_3
        0x23 -> :sswitch_2
        0x29 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method protected calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B
    .locals 9
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "pinBlockFormat"    # B
    .param p3, "accountNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1509
    const/4 v0, 0x0

    .line 1510
    .local v0, "pinBlock":[B
    const/4 v1, 0x0

    .line 1511
    .local v1, "oldPin":Ljava/lang/String;
    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/16 v7, 0x2a

    if-ne p2, v7, :cond_2

    .line 1512
    invoke-direct {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->splitPins(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1513
    .local v7, "p":[Ljava/lang/String;
    aget-object p1, v7, v6

    .line 1514
    aget-object v1, v7, v3

    .line 1515
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v5, :cond_1

    .line 1517
    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->isNumeric(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 1518
    :cond_0
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid OLD PIN decimal digits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1516
    :cond_1
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid OLD PIN length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1520
    .end local v7    # "p":[Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v4, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v5, :cond_7

    .line 1522
    invoke-static {p1, v2}, Lorg/jpos/iso/ISOUtil;->isNumeric(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1524
    invoke-direct {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->isVSDCPinBlockFormat(B)Z

    move-result v2

    const/16 v4, 0x10

    if-eqz v2, :cond_4

    .line 1525
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_1

    .line 1526
    :cond_3
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UDK-A: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The length of the UDK-A must be 16 hexadecimal digits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1528
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1530
    :goto_1
    const-string v2, "00000000"

    const-string v5, "0000"

    const/4 v7, 0x2

    const/16 v8, 0x8

    sparse-switch p2, :sswitch_data_0

    .line 1616
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported PIN format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1603
    :sswitch_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, p1, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPINBlock(Ljava/lang/String;I)[C

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    .line 1606
    .local v3, "block1":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1607
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1606
    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 1609
    .local v2, "block2":[B
    invoke-static {v1, v4}, Lorg/jpos/iso/ISOUtil;->zeropadRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v4

    .line 1611
    .local v4, "block3":[B
    invoke-static {v3, v2}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 1612
    invoke-static {v0, v4}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 1614
    .end local v2    # "block2":[B
    .end local v3    # "block1":[B
    .end local v4    # "block3":[B
    goto/16 :goto_2

    .line 1591
    :sswitch_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, p1, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPINBlock(Ljava/lang/String;I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    .line 1594
    .restart local v3    # "block1":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1595
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1594
    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 1597
    .restart local v2    # "block2":[B
    invoke-static {v3, v2}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 1599
    .end local v2    # "block2":[B
    .end local v3    # "block1":[B
    goto/16 :goto_2

    .line 1580
    :sswitch_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPINBlock(Ljava/lang/String;I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 1583
    .local v2, "block1":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    .line 1585
    .local v3, "block2":[B
    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 1587
    .end local v2    # "block1":[B
    .end local v3    # "block2":[B
    goto/16 :goto_2

    .line 1574
    :sswitch_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPINBlock(Ljava/lang/String;I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1576
    goto :goto_2

    .line 1554
    :sswitch_4
    invoke-direct {p0, p1, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPINBlock(Ljava/lang/String;I)[C

    move-result-object v2

    .line 1557
    .local v2, "block1":[C
    new-array v3, v8, [B

    .line 1558
    .local v3, "rnd":[B
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 1559
    .local v4, "rd":Ljava/util/Random;
    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 1562
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 1565
    .local v5, "block2":[C
    nop

    .line 1566
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    .line 1565
    invoke-static {v2, v6, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1569
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1571
    .end local v2    # "block1":[C
    .end local v3    # "rnd":[B
    .end local v4    # "rd":Ljava/util/Random;
    .end local v5    # "block2":[C
    goto :goto_2

    .line 1545
    :sswitch_5
    sget-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule;->fPaddingBlock:[B

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1546
    .local v2, "block":[C
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1546
    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1548
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1550
    .end local v2    # "block":[C
    goto :goto_2

    .line 1535
    :sswitch_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, p1, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPINBlock(Ljava/lang/String;I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 1538
    .local v2, "block1":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    .line 1540
    .local v3, "block2":[B
    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 1542
    .end local v2    # "block1":[B
    .end local v3    # "block2":[B
    nop

    .line 1618
    :goto_2
    return-object v0

    .line 1529
    :cond_5
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Account Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The length of the account number must be 12 (the 12 right-most digits of the account number excluding the check digit)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1523
    :cond_6
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid PIN decimal digits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1521
    :cond_7
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid PIN length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0x22 -> :sswitch_3
        0x23 -> :sswitch_2
        0x29 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method protected calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/security/Key;ILjava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "keyIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Ljava/security/Key;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 743
    .local p4, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptPINImpl(Lorg/jpos/security/EncryptedPIN;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "pin":Ljava/lang/String;
    if-eqz p4, :cond_1

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    new-instance v1, Lorg/jpos/security/WeakPINException;

    const-string v2, "Given PIN is on excludes list"

    invoke-direct {v1, v2}, Lorg/jpos/security/WeakPINException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "block":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, p3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 750
    .local v2, "b":[B
    iget-object v5, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v5, v2, p2}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v2

    .line 752
    invoke-static {v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decimalizeVisa([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;ILjava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v4, p4

    check-cast v4, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;ILjava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;ILjava/util/List;)Ljava/lang/String;
    .locals 2
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "pvkA"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "pvkB"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "pvkIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/SecureDESKey;",
            "Lorg/jpos/security/SecureDESKey;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 759
    .local p5, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    .line 760
    .local v0, "key":Ljava/security/Key;
    invoke-virtual {p0, p1, v0, p4, p5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/security/Key;ILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;ILjava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "kd1"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "pvkA"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "pvkB"    # Lorg/jpos/security/SecureDESKey;
    .param p5, "pvkIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/SecureDESKey;",
            "Lorg/jpos/security/SecureDESKey;",
            "Lorg/jpos/security/SecureDESKey;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 767
    .local p6, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p3, p4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    .line 768
    .local v0, "key":Ljava/security/Key;
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v1

    .line 769
    .local v1, "pinUnderLmk":Lorg/jpos/security/EncryptedPIN;
    invoke-virtual {p0, v1, v0, p5, p6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/security/Key;ILjava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected calculatedCVV(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Ljava/lang/String;
    .locals 4
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "imkac"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "expDate"    # Ljava/lang/String;
    .param p4, "serviceCode"    # Ljava/lang/String;
    .param p5, "atc"    # [B
    .param p6, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 473
    if-nez p6, :cond_0

    .line 474
    sget-object p6, Lorg/jpos/security/MKDMethod;->OPTION_A:Lorg/jpos/security/MKDMethod;

    .line 476
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, p6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSN_dCVD(Ljava/lang/String;Ljava/lang/String;Lorg/jpos/security/MKDMethod;)[B

    move-result-object v0

    .line 477
    .local v0, "panpsn":[B
    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveICCMasterKey(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v1

    .line 479
    .local v1, "mkac":Ljava/security/Key;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "alteredPAN":Ljava/lang/String;
    invoke-virtual {p0, v2, v1, p3, p4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVD(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected checkCAVVArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "upn"    # Ljava/lang/String;
    .param p2, "authrc"    # Ljava/lang/String;
    .param p3, "sfarc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 422
    if-eqz p1, :cond_5

    .line 424
    if-eqz p2, :cond_4

    .line 426
    if-eqz p3, :cond_3

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 432
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 435
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 438
    return-void

    .line 436
    :cond_0
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of Secend Factor Authorization Result Code must be 2 but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 437
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of Authorization Result Code must be 1 but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_2
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of Unpredictable Number must be 4 but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_3
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Secend Factor Authorization Result Code can not be null"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_4
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Authorization Result Code can not be null"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_5
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Unpredictable Number can not be null"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;
    .locals 6
    .param p1, "keyA"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "keyB"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 368
    const/16 v0, 0x40

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jpos/security/SecureDESKey;->getKeyLength()S

    move-result v1

    if-ne v1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 369
    invoke-virtual {p2}, Lorg/jpos/security/SecureDESKey;->getKeyLength()S

    move-result v1

    if-ne v1, v0, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    .line 371
    .local v0, "cvkAclear":Ljava/security/Key;
    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v1

    .line 372
    .local v1, "cvkBclear":Ljava/security/Key;
    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    const/16 v3, 0x80

    .line 373
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v4

    .line 372
    invoke-virtual {v2, v3, v4}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v2

    return-object v2

    .line 375
    .end local v0    # "cvkAclear":Ljava/security/Key;
    .end local v1    # "cvkBclear":Ljava/security/Key;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/jpos/security/SecureDESKey;->getKeyLength()S

    move-result v1

    if-eq v1, v0, :cond_1

    .line 376
    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    return-object v0

    .line 377
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/jpos/security/SecureDESKey;->getKeyLength()S

    move-result v1

    if-eq v1, v0, :cond_2

    .line 378
    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    return-object v0

    .line 379
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic dataDecrypt(Ljava/lang/Object;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    check-cast p1, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->dataDecrypt(Lorg/jpos/security/SecureDESKey;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public dataDecrypt(Lorg/jpos/security/SecureDESKey;[B)[B
    .locals 10
    .param p1, "bdk"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "cypherText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2229
    :try_start_0
    array-length v0, p2

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    .line 2234
    const/16 v0, 0x18

    new-array v2, v0, [B

    .line 2235
    .local v2, "ksnB":[B
    array-length v3, p2

    sub-int/2addr v3, v1

    new-array v1, v3, [B

    .line 2236
    .local v1, "encryptedData":[B
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 2238
    .local v4, "mac":[B
    const/4 v5, 0x0

    invoke-static {p2, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2239
    array-length v6, v1

    invoke-static {p2, v0, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2240
    array-length v0, p2

    sub-int/2addr v0, v3

    invoke-static {p2, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2242
    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getKSN(Ljava/lang/String;)Lorg/jpos/security/KeySerialNumber;

    move-result-object v0

    .line 2244
    .local v0, "ksn":Lorg/jpos/security/KeySerialNumber;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, p1, v3, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateDerivedKey(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;ZZ)[B

    move-result-object v6

    .line 2245
    .local v6, "derivedKey":[B
    iget-object v7, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    const/16 v8, 0x80

    invoke-virtual {v7, v8, v6}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v7

    .line 2246
    .local v7, "dk":Ljava/security/Key;
    iget-object v8, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v8, v1, v7}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v8

    .line 2247
    .local v8, "clearText":[B
    const/4 v9, 0x3

    new-array v9, v9, [[B

    aput-object v2, v9, v5

    aput-object v1, v9, v3

    const/4 v3, 0x2

    aput-object v6, v9, v3

    invoke-direct {p0, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->hash8([[B)[B

    move-result-object v3

    .line 2250
    .local v3, "generatedMac":[B
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2252
    invoke-direct {p0, v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->lunpack([B)[B

    move-result-object v5

    return-object v5

    .line 2251
    :cond_0
    new-instance v5, Lorg/jpos/security/SMException;

    const-string v9, "Invalid cyphertext."

    invoke-direct {v5, v9}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    .end local p1    # "bdk":Lorg/jpos/security/SecureDESKey;
    .end local p2    # "cypherText":[B
    throw v5

    .line 2230
    .end local v0    # "ksn":Lorg/jpos/security/KeySerialNumber;
    .end local v1    # "encryptedData":[B
    .end local v2    # "ksnB":[B
    .end local v3    # "generatedMac":[B
    .end local v4    # "mac":[B
    .end local v6    # "derivedKey":[B
    .end local v7    # "dk":Ljava/security/Key;
    .end local v8    # "clearText":[B
    .restart local p1    # "bdk":Lorg/jpos/security/SecureDESKey;
    .restart local p2    # "cypherText":[B
    :cond_1
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key block \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2231
    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    .end local p1    # "bdk":Lorg/jpos/security/SecureDESKey;
    .end local p2    # "cypherText":[B
    throw v0
    :try_end_0
    .catch Lorg/jpos/security/jceadapter/JCEHandlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2253
    .restart local p1    # "bdk":Lorg/jpos/security/SecureDESKey;
    .restart local p2    # "cypherText":[B
    :catch_0
    move-exception v0

    .line 2254
    .local v0, "e":Lorg/jpos/security/jceadapter/JCEHandlerException;
    new-instance v1, Lorg/jpos/security/SMException;

    invoke-direct {v1, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public bridge synthetic dataEncrypt(Ljava/lang/Object;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    check-cast p1, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->dataEncrypt(Lorg/jpos/security/SecureDESKey;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public dataEncrypt(Lorg/jpos/security/SecureDESKey;[B)[B
    .locals 9
    .param p1, "bdk"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "clearText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2210
    :try_start_0
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->generateDESKey(S)Ljava/security/Key;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 2211
    .local v0, "ksnB":[B
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getKSN(Ljava/lang/String;)Lorg/jpos/security/KeySerialNumber;

    move-result-object v2

    .line 2212
    .local v2, "ksn":Lorg/jpos/security/KeySerialNumber;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, p1, v3, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateDerivedKey(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;ZZ)[B

    move-result-object v4

    .line 2213
    .local v4, "derivedKey":[B
    iget-object v5, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v5, v1, v4}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v1

    .line 2214
    .local v1, "dk":Ljava/security/Key;
    iget-object v5, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-direct {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->lpack([B)[B

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v5

    .line 2216
    .local v5, "cypherText":[B
    array-length v6, v5

    add-int/lit8 v6, v6, 0x20

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2217
    .local v6, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2218
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2219
    const/4 v7, 0x3

    new-array v7, v7, [[B

    const/4 v8, 0x0

    aput-object v0, v7, v8

    aput-object v5, v7, v3

    const/4 v3, 0x2

    aput-object v4, v7, v3

    invoke-direct {p0, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->hash8([[B)[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2220
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3
    :try_end_0
    .catch Lorg/jpos/security/jceadapter/JCEHandlerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2221
    .end local v0    # "ksnB":[B
    .end local v1    # "dk":Ljava/security/Key;
    .end local v2    # "ksn":Lorg/jpos/security/KeySerialNumber;
    .end local v4    # "derivedKey":[B
    .end local v5    # "cypherText":[B
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 2222
    .local v0, "e":Lorg/jpos/security/jceadapter/JCEHandlerException;
    new-instance v1, Lorg/jpos/security/SMException;

    invoke-direct {v1, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public decryptDataImpl(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B
    .locals 7
    .param p1, "cipherMode"    # Lorg/jpos/security/CipherMode;
    .param p2, "kd"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "data"    # [B
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1161
    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v6

    .line 1162
    .local v6, "dek":Ljava/security/Key;
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    const/4 v3, 0x2

    move-object v1, p3

    move-object v2, v6

    move-object v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCEHandler;->doCryptStuff([BLjava/security/Key;ILorg/jpos/security/CipherMode;[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;
    .locals 16
    .param p1, "secureDESKey"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1434
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/SecureDESKey;->getKeyBytes()[B

    move-result-object v1

    .line 1435
    .local v1, "keyBytes":[B
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 1436
    .local v3, "bl":[B
    new-array v4, v2, [B

    .line 1437
    .local v4, "bm":[B
    new-array v5, v2, [B

    .line 1438
    .local v5, "br":[B
    const/4 v6, 0x0

    .line 1439
    .local v6, "clearKeyBytes":[B
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/SecureDESKey;->getKeyLength()S

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/SecureDESKey;->getKeyType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getKeyTypeIndex(SLjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1440
    .local v7, "lmkIndex":Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 1442
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/SecureDESKey;->getVariant()B

    move-result v9

    shl-int/lit8 v2, v9, 0x8

    or-int/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1443
    .end local v7    # "lmkIndex":Ljava/lang/Integer;
    .local v2, "lmkIndex":Ljava/lang/Integer;
    sget-object v7, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$KeyScheme:[I

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/SecureDESKey;->getScheme()Lorg/jpos/security/KeyScheme;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jpos/security/KeyScheme;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 1460
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit16 v7, v7, 0xfff

    or-int/lit16 v7, v7, 0x3000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 1461
    .local v7, "left":Ljava/security/Key;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v9, v9, 0xfff

    or-int/lit16 v9, v9, 0x4000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 1462
    .local v9, "medium":Ljava/security/Key;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/lit16 v10, v10, 0xfff

    or-int/lit16 v10, v10, 0x5000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v10

    .line 1463
    .local v10, "right":Ljava/security/Key;
    array-length v11, v3

    invoke-static {v1, v8, v3, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1464
    array-length v11, v3

    array-length v12, v4

    invoke-static {v1, v11, v4, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1465
    array-length v11, v3

    array-length v12, v4

    add-int/2addr v11, v12

    array-length v12, v5

    invoke-static {v1, v11, v5, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1466
    iget-object v8, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v8, v3, v7}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v3

    .line 1467
    iget-object v8, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v8, v4, v9}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v4

    .line 1468
    iget-object v8, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v8, v5, v10}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v5

    .line 1469
    invoke-static {v3, v4}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v6

    .line 1470
    invoke-static {v6, v5}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v6

    goto :goto_0

    .line 1450
    .end local v7    # "left":Ljava/security/Key;
    .end local v9    # "medium":Ljava/security/Key;
    .end local v10    # "right":Ljava/security/Key;
    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit16 v7, v7, 0xfff

    or-int/lit16 v7, v7, 0x1000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 1451
    .restart local v7    # "left":Ljava/security/Key;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v9, v9, 0xfff

    or-int/lit16 v9, v9, 0x2000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 1452
    .local v9, "right":Ljava/security/Key;
    array-length v10, v3

    invoke-static {v1, v8, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1453
    array-length v10, v3

    array-length v11, v5

    invoke-static {v1, v10, v5, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1454
    iget-object v8, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v8, v3, v7}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v3

    .line 1455
    iget-object v8, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v8, v5, v9}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v5

    .line 1456
    invoke-static {v3, v5}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v6

    .line 1457
    const/4 v11, 0x0

    array-length v12, v6

    const/4 v14, 0x0

    array-length v15, v5

    move-object v10, v6

    move-object v13, v6

    invoke-static/range {v10 .. v15}, Lorg/jpos/iso/ISOUtil;->concat([BII[BII)[B

    move-result-object v6

    .line 1458
    goto :goto_0

    .line 1447
    .end local v7    # "left":Ljava/security/Key;
    .end local v9    # "right":Ljava/security/Key;
    :pswitch_2
    iget-object v7, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-direct {v0, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v6

    .line 1448
    nop

    .line 1473
    :goto_0
    invoke-static {v6}, Lorg/jpos/security/Util;->isDESParityAdjusted([B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1475
    iget-object v7, v0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/SecureDESKey;->getKeyLength()S

    move-result v8

    invoke-virtual {v7, v8, v6}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v7

    return-object v7

    .line 1474
    :cond_0
    new-instance v7, Lorg/jpos/security/jceadapter/JCEHandlerException;

    const-string v8, "Parity not adjusted"

    invoke-direct {v7, v8}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1441
    .end local v2    # "lmkIndex":Ljava/lang/Integer;
    .local v7, "lmkIndex":Ljava/lang/Integer;
    :cond_1
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported key type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/security/SecureDESKey;->getKeyType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public decryptPINImpl(Lorg/jpos/security/EncryptedPIN;)Ljava/lang/String;
    .locals 3
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v1

    sget-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule;->PINLMKIndex:Ljava/lang/Integer;

    .line 280
    invoke-direct {p0, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 279
    invoke-virtual {v0, v1, v2}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v0

    .line 281
    .local v0, "clearPINBlock":[B
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v1

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePIN([BBLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected deriveICCMasterKey(Ljava/security/Key;[B)Ljava/security/Key;
    .locals 5
    .param p1, "imk"    # Ljava/security/Key;
    .param p2, "panpsn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 725
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 727
    .local v2, "l":[B
    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v3, v2, p1}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v2

    .line 728
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 730
    .local v0, "r":[B
    sget-object v1, Lorg/jpos/security/jceadapter/JCESecurityModule;->fPaddingBlock:[B

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    .line 732
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v1, v0, p1}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v0

    .line 734
    invoke-static {v2, v0}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v1

    .line 736
    .local v1, "mk":[B
    invoke-static {v1}, Lorg/jpos/security/Util;->adjustDESParity([B)V

    .line 738
    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    const/16 v4, 0x80

    invoke-virtual {v3, v4, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v3

    return-object v3
.end method

.method public encryptDataImpl(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B
    .locals 7
    .param p1, "cipherMode"    # Lorg/jpos/security/CipherMode;
    .param p2, "kd"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "data"    # [B
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1154
    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v6

    .line 1155
    .local v6, "dek":Ljava/security/Key;
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    const/4 v3, 0x1

    move-object v1, p3

    move-object v2, v6

    move-object v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCEHandler;->doCryptStuff([BLjava/security/Key;ILorg/jpos/security/CipherMode;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encryptPINImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/EncryptedPIN;
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "accountNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v1

    .line 273
    .local v1, "clearPINBlock":[B
    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule;->PINLMKIndex:Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v2

    .line 274
    .local v2, "translatedPINBlock":[B
    new-instance v3, Lorg/jpos/security/EncryptedPIN;

    invoke-direct {v3, v2, v0, p2, v0}, Lorg/jpos/security/EncryptedPIN;-><init>([BBLjava/lang/String;Z)V

    return-object v3
.end method

.method protected encryptToLMK(SLjava/lang/String;Ljava/security/Key;)Lorg/jpos/security/SecureDESKey;
    .locals 12
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "clearDESKey"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v0, p1, p3}, Lorg/jpos/security/jceadapter/JCEHandler;->extractDESKeyMaterial(SLjava/security/Key;)[B

    move-result-object v0

    .line 1384
    .local v0, "clearKeyBytes":[B
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 1385
    .local v2, "bl":[B
    new-array v3, v1, [B

    .line 1386
    .local v3, "bm":[B
    new-array v1, v1, [B

    .line 1387
    .local v1, "br":[B
    const/4 v4, 0x0

    .line 1389
    .local v4, "encrypted":[B
    invoke-static {v0}, Lorg/jpos/security/Util;->adjustDESParity([B)V

    .line 1390
    invoke-direct {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getKeyTypeIndex(SLjava/lang/String;)I

    move-result v5

    .line 1391
    .local v5, "lmkIndex":I
    sget-object v6, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$KeyScheme:[I

    invoke-static {p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getScheme(ILjava/lang/String;)Lorg/jpos/security/KeyScheme;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jpos/security/KeyScheme;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 1408
    :pswitch_0
    and-int/lit16 v6, v5, 0xfff

    or-int/lit16 v6, v6, 0x3000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 1409
    .local v6, "left":Ljava/security/Key;
    and-int/lit16 v8, v5, 0xfff

    or-int/lit16 v8, v8, 0x4000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 1410
    .local v8, "medium":Ljava/security/Key;
    and-int/lit16 v9, v5, 0xfff

    or-int/lit16 v9, v9, 0x5000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 1411
    .local v9, "right":Ljava/security/Key;
    array-length v10, v2

    invoke-static {v0, v7, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1412
    array-length v10, v2

    array-length v11, v3

    invoke-static {v0, v10, v3, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1413
    array-length v10, v2

    array-length v11, v3

    add-int/2addr v10, v11

    array-length v11, v1

    invoke-static {v0, v10, v1, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1414
    iget-object v7, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v7, v2, v6}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v2

    .line 1415
    iget-object v7, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v7, v3, v8}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v3

    .line 1416
    iget-object v7, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v7, v1, v9}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v1

    .line 1417
    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v4

    .line 1418
    invoke-static {v4, v1}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v4

    goto :goto_0

    .line 1399
    .end local v6    # "left":Ljava/security/Key;
    .end local v8    # "medium":Ljava/security/Key;
    .end local v9    # "right":Ljava/security/Key;
    :pswitch_1
    and-int/lit16 v6, v5, 0xfff

    or-int/lit16 v6, v6, 0x1000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 1400
    .restart local v6    # "left":Ljava/security/Key;
    and-int/lit16 v8, v5, 0xfff

    or-int/lit16 v8, v8, 0x2000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 1401
    .local v8, "right":Ljava/security/Key;
    array-length v9, v2

    invoke-static {v0, v7, v2, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1402
    array-length v9, v2

    array-length v10, v1

    invoke-static {v0, v9, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1403
    iget-object v7, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v7, v2, v6}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v2

    .line 1404
    iget-object v7, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v7, v1, v8}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v1

    .line 1405
    invoke-static {v2, v1}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v4

    .line 1406
    goto :goto_0

    .line 1395
    .end local v6    # "left":Ljava/security/Key;
    .end local v8    # "right":Ljava/security/Key;
    :pswitch_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 1396
    .local v6, "novar":Ljava/security/Key;
    iget-object v7, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v7, v0, v6}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v4

    .line 1397
    nop

    .line 1421
    .end local v6    # "novar":Ljava/security/Key;
    :goto_0
    new-instance v6, Lorg/jpos/security/SecureDESKey;

    .line 1422
    invoke-virtual {p0, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateKeyCheckValue(Ljava/security/Key;)[B

    move-result-object v7

    invoke-direct {v6, p1, p2, v4, v7}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;[B[B)V

    .line 1423
    .local v6, "secureDESKey":Lorg/jpos/security/SecureDESKey;
    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public exportKeyImpl(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)[B
    .locals 4
    .param p1, "key"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "kek"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    .line 210
    .local v0, "clearKey":Ljava/security/Key;
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {p1}, Lorg/jpos/security/SecureDESKey;->getKeyLength()S

    move-result v2

    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptDESKey(SLjava/security/Key;Ljava/security/Key;)[B

    move-result-object v1

    return-object v1
.end method

.method public exportPIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;ZB)Lorg/jpos/security/EncryptedPIN;
    .locals 7
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p3, "bdk"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "tdes"    # Z
    .param p5, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2450
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v0

    .line 2453
    .local v0, "accountNumber":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v2

    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule;->PINLMKIndex:Ljava/lang/Integer;

    .line 2454
    invoke-direct {p0, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 2453
    invoke-virtual {v1, v2, v3}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v1

    .line 2456
    .local v1, "clearPINBlock":[B
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePIN([BBLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2459
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {p0, v2, p5, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v1

    .line 2462
    const/4 v3, 0x0

    invoke-virtual {p0, p2, p3, p4, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateDerivedKey(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;ZZ)[B

    move-result-object v4

    .line 2463
    .local v4, "derivedKey":[B
    invoke-virtual {p0, v1, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->specialEncrypt([B[B)[B

    move-result-object v5

    .line 2465
    .local v5, "translatedPINBlock":[B
    new-instance v6, Lorg/jpos/security/EncryptedPIN;

    invoke-direct {v6, v5, p5, v0, v3}, Lorg/jpos/security/EncryptedPIN;-><init>([BBLjava/lang/String;Z)V

    return-object v6
.end method

.method public bridge synthetic exportPINImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    check-cast p2, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {p0, p1, p2, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->exportPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;B)Lorg/jpos/security/EncryptedPIN;

    move-result-object p1

    return-object p1
.end method

.method public exportPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;B)Lorg/jpos/security/EncryptedPIN;
    .locals 6
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "kd2"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 307
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "accountNumber":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v2

    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule;->PINLMKIndex:Ljava/lang/Integer;

    .line 311
    invoke-direct {p0, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 310
    invoke-virtual {v1, v2, v3}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v1

    .line 313
    .local v1, "clearPINBlock":[B
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePIN([BBLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {p0, v2, p3, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v1

    .line 317
    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v3

    .line 318
    .local v3, "translatedPINBlock":[B
    new-instance v4, Lorg/jpos/security/EncryptedPIN;

    const/4 v5, 0x0

    invoke-direct {v4, v3, p3, v0, v5}, Lorg/jpos/security/EncryptedPIN;-><init>([BBLjava/lang/String;Z)V

    return-object v4
.end method

.method public varargs formKEYfromClearComponents(SLjava/lang/String;[Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;
    .locals 15
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "components"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1351
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    array-length v1, v0

    const/4 v3, 0x3

    if-gt v1, v3, :cond_1

    .line 1353
    new-array v1, v3, [Ljava/lang/String;

    .line 1354
    .local v1, "s":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1355
    .local v3, "i":I
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v0, v6

    .line 1356
    .local v7, "component":Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "i":I
    .local v8, "i":I
    aput-object v7, v1, v3

    .line 1355
    .end local v7    # "component":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_0

    .line 1358
    .end local v8    # "i":I
    .restart local v3    # "i":I
    :cond_0
    aget-object v12, v1, v5

    aget-object v13, v1, v2

    const/4 v2, 0x2

    aget-object v14, v1, v2

    move-object v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v9 .. v14}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formKEYfromThreeClearComponents(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;

    move-result-object v2

    return-object v2

    .line 1352
    .end local v1    # "s":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    new-instance v1, Lorg/jpos/security/SMException;

    const-string v2, "Invalid number of clear key components"

    invoke-direct {v1, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public formKEYfromThreeClearComponents(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;
    .locals 16
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "clearComponent1HexString"    # Ljava/lang/String;
    .param p4, "clearComponent2HexString"    # Ljava/lang/String;
    .param p5, "clearComponent3HexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1319
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "parameter"

    new-instance v4, Lorg/jpos/util/LogEvent;

    const-string v5, "s-m-operation"

    invoke-direct {v4, v1, v5}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1322
    .local v4, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-static/range {p3 .. p3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v5

    .line 1323
    .local v5, "clearComponent1":[B
    if-eqz p4, :cond_0

    invoke-static/range {p4 .. p4}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_0

    :cond_0
    shr-int/lit8 v6, v2, 0x3

    new-array v6, v6, [B

    .line 1324
    .local v6, "clearComponent2":[B
    :goto_0
    if-eqz p5, :cond_1

    invoke-static/range {p5 .. p5}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_1

    :cond_1
    shr-int/lit8 v7, v2, 0x3

    new-array v7, v7, [B

    .line 1325
    .local v7, "clearComponent3":[B
    :goto_1
    invoke-static {v5, v6}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v8

    invoke-static {v8, v7}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v8

    .line 1327
    .local v8, "clearKeyBytes":[B
    iget-object v9, v1, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v9, v2, v8}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v9

    .line 1328
    .local v9, "clearKey":Ljava/security/Key;
    invoke-virtual {v1, v2, v3, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encryptToLMK(SLjava/lang/String;Ljava/security/Key;)Lorg/jpos/security/SecureDESKey;

    move-result-object v10

    .line 1329
    .local v10, "secureDESKey":Lorg/jpos/security/SecureDESKey;
    const/4 v11, 0x5

    new-array v11, v11, [Lorg/jpos/util/SimpleMsg;

    const/4 v12, 0x0

    new-instance v13, Lorg/jpos/util/SimpleMsg;

    const-string v14, "Key Length"

    .line 1330
    invoke-static/range {p1 .. p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    invoke-direct {v13, v0, v14, v15}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Lorg/jpos/util/SimpleMsg;

    const-string v14, "Key Type"

    invoke-direct {v13, v0, v14, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-instance v13, Lorg/jpos/util/SimpleMsg;

    const-string v14, "Component 1 Check Value"

    iget-object v15, v1, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    .line 1332
    invoke-virtual {v15, v2, v5}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v15

    invoke-virtual {v1, v15}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateKeyCheckValue(Ljava/security/Key;)[B

    move-result-object v15

    invoke-direct {v13, v0, v14, v15}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v11, v12

    new-instance v12, Lorg/jpos/util/SimpleMsg;

    const-string v13, "Component 2 Check Value"

    iget-object v14, v1, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    .line 1333
    invoke-virtual {v14, v2, v6}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateKeyCheckValue(Ljava/security/Key;)[B

    move-result-object v14

    invoke-direct {v12, v0, v13, v14}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x4

    new-instance v13, Lorg/jpos/util/SimpleMsg;

    const-string v14, "Component 3 Check Value"

    iget-object v15, v1, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    .line 1334
    invoke-virtual {v15, v2, v7}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v15

    invoke-virtual {v1, v15}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateKeyCheckValue(Ljava/security/Key;)[B

    move-result-object v15

    invoke-direct {v13, v0, v14, v15}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v11, v12

    move-object v0, v11

    .line 1336
    .local v0, "cmdParameters":[Lorg/jpos/util/SimpleMsg;
    new-instance v11, Lorg/jpos/util/SimpleMsg;

    const-string v12, "command"

    const-string v13, "Form Key from Three Clear Components"

    invoke-direct {v11, v12, v13, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v11}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1337
    new-instance v11, Lorg/jpos/util/SimpleMsg;

    const-string v12, "result"

    const-string v13, "Formed Key"

    invoke-direct {v11, v12, v13, v10}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v11}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/security/jceadapter/JCEHandlerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    .end local v0    # "cmdParameters":[Lorg/jpos/util/SimpleMsg;
    .end local v5    # "clearComponent1":[B
    .end local v6    # "clearComponent2":[B
    .end local v7    # "clearComponent3":[B
    .end local v8    # "clearKeyBytes":[B
    .end local v9    # "clearKey":Ljava/security/Key;
    invoke-static {v4}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1343
    nop

    .line 1344
    return-object v10

    .line 1342
    .end local v10    # "secureDESKey":Lorg/jpos/security/SecureDESKey;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "e":Lorg/jpos/security/jceadapter/JCEHandlerException;
    :try_start_1
    invoke-virtual {v4, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1340
    nop

    .end local v4    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "keyLength":S
    .end local p2    # "keyType":Ljava/lang/String;
    .end local p3    # "clearComponent1HexString":Ljava/lang/String;
    .end local p4    # "clearComponent2HexString":Ljava/lang/String;
    .end local p5    # "clearComponent3HexString":Ljava/lang/String;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1342
    .end local v0    # "e":Lorg/jpos/security/jceadapter/JCEHandlerException;
    .restart local v4    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "keyLength":S
    .restart local p2    # "keyType":Ljava/lang/String;
    .restart local p3    # "clearComponent1HexString":Ljava/lang/String;
    .restart local p4    # "clearComponent2HexString":Ljava/lang/String;
    .restart local p5    # "clearComponent3HexString":Ljava/lang/String;
    :goto_2
    invoke-static {v4}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1343
    throw v0
.end method

.method public bridge synthetic generateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public generateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .locals 17
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p3, "imkac"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "accntSeqNo"    # Ljava/lang/String;
    .param p6, "arqc"    # [B
    .param p7, "atc"    # [B
    .param p8, "upn"    # [B
    .param p9, "arpcMethod"    # Lorg/jpos/security/ARPCMethod;
    .param p10, "arc"    # [B
    .param p11, "propAuthData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 987
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p9

    if-nez p1, :cond_0

    .line 988
    sget-object v0, Lorg/jpos/security/MKDMethod;->OPTION_A:Lorg/jpos/security/MKDMethod;

    move-object v9, v0

    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .local v0, "mkdm":Lorg/jpos/security/MKDMethod;
    goto :goto_0

    .line 987
    .end local v0    # "mkdm":Lorg/jpos/security/MKDMethod;
    .restart local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    :cond_0
    move-object/from16 v9, p1

    .line 990
    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .local v9, "mkdm":Lorg/jpos/security/MKDMethod;
    :goto_0
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static {v10, v11, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSN(Ljava/lang/String;Ljava/lang/String;Lorg/jpos/security/MKDMethod;)[B

    move-result-object v12

    .line 991
    .local v12, "panpsn":[B
    move-object/from16 v13, p3

    invoke-virtual {v6, v13}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {v6, v0, v12}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveICCMasterKey(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v14

    .line 992
    .local v14, "mkac":Ljava/security/Key;
    move-object v0, v14

    .line 993
    .local v0, "skarpc":Ljava/security/Key;
    sget-object v1, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$SKDMethod:[I

    invoke-virtual/range {p2 .. p2}, Lorg/jpos/security/SKDMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1006
    move-object/from16 v15, p7

    new-instance v1, Lorg/jpos/security/SMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session Key Derivation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1003
    :pswitch_0
    move-object/from16 v15, p7

    invoke-direct {v6, v14, v15}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveCommonSK_AC(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v0

    .line 1004
    move-object/from16 v16, v0

    goto :goto_2

    .line 999
    :pswitch_1
    move-object/from16 v15, p7

    invoke-direct {v6, v9, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintMKDM(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;)V

    .line 1000
    invoke-direct {v6, v7, v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintARPCM(Lorg/jpos/security/SKDMethod;Lorg/jpos/security/ARPCMethod;)V

    .line 1001
    goto :goto_1

    .line 995
    :pswitch_2
    move-object/from16 v15, p7

    invoke-direct {v6, v9, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintMKDM(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;)V

    .line 996
    invoke-direct {v6, v7, v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintARPCM(Lorg/jpos/security/SKDMethod;Lorg/jpos/security/ARPCMethod;)V

    .line 997
    nop

    .line 1009
    :goto_1
    move-object/from16 v16, v0

    .end local v0    # "skarpc":Ljava/security/Key;
    .local v16, "skarpc":Ljava/security/Key;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateARPC(Ljava/security/Key;[BLorg/jpos/security/ARPCMethod;[B[B)[B

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic generateCBC_MACImpl([BLjava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    check-cast p2, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateCBC_MACImpl([BLorg/jpos/security/SecureDESKey;)[B

    move-result-object p1

    return-object p1
.end method

.method protected generateCBC_MACImpl([BLorg/jpos/security/SecureDESKey;)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "kd"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1176
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "jce-provider-cbc-mac"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1178
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "cbc-mac"

    const-string v3, "ISO9797ALG3MACWITHISO7816-4PADDING"

    invoke-interface {v1, v2, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateMACImpl([BLorg/jpos/security/SecureDESKey;Ljava/lang/String;Lorg/jpos/util/LogEvent;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1179
    :catch_0
    move-exception v1

    .line 1180
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1181
    instance-of v2, v1, Lorg/jpos/security/SMException;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/jpos/security/SMException;

    invoke-direct {v2, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    :goto_0
    throw v2
.end method

.method public generateClearKeyComponent(S)Ljava/lang/String;
    .locals 8
    .param p1, "keyLength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1227
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jpos/util/SimpleMsg;

    new-instance v1, Lorg/jpos/util/SimpleMsg;

    .line 1228
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "parameter"

    const-string v4, "Key Length"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1230
    .local v0, "cmdParameters":[Lorg/jpos/util/SimpleMsg;
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1231
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Generate Clear Key Component"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1234
    :try_start_0
    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v2, p1}, Lorg/jpos/security/jceadapter/JCEHandler;->generateDESKey(S)Ljava/security/Key;

    move-result-object v2

    .line 1235
    .local v2, "clearKey":Ljava/security/Key;
    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v3, p1, v2}, Lorg/jpos/security/jceadapter/JCEHandler;->extractDESKeyMaterial(SLjava/security/Key;)[B

    move-result-object v3

    .line 1236
    .local v3, "clearKeyData":[B
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1237
    .local v4, "clearKeyComponenetHexString":Ljava/lang/String;
    new-instance v5, Lorg/jpos/util/SimpleMsg;

    const-string v6, "result"

    const-string v7, "Generated Clear Key Componenet"

    invoke-direct {v5, v6, v7, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/security/jceadapter/JCEHandlerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    .end local v2    # "clearKey":Ljava/security/Key;
    .end local v3    # "clearKeyData":[B
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1243
    nop

    .line 1244
    return-object v4

    .line 1242
    .end local v4    # "clearKeyComponenetHexString":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1238
    :catch_0
    move-exception v2

    .line 1239
    .local v2, "e":Lorg/jpos/security/jceadapter/JCEHandlerException;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1240
    nop

    .end local v0    # "cmdParameters":[Lorg/jpos/util/SimpleMsg;
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "keyLength":S
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1242
    .end local v2    # "e":Lorg/jpos/security/jceadapter/JCEHandlerException;
    .restart local v0    # "cmdParameters":[Lorg/jpos/util/SimpleMsg;
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "keyLength":S
    :goto_0
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1243
    throw v2
.end method

.method protected bridge synthetic generateEDE_MACImpl([BLjava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    check-cast p2, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateEDE_MACImpl([BLorg/jpos/security/SecureDESKey;)[B

    move-result-object p1

    return-object p1
.end method

.method protected generateEDE_MACImpl([BLorg/jpos/security/SecureDESKey;)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "kd"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1196
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "jce-provider-ede-mac"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1198
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "ede-mac"

    const-string v3, "DESEDEMAC"

    invoke-interface {v1, v2, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateMACImpl([BLorg/jpos/security/SecureDESKey;Ljava/lang/String;Lorg/jpos/util/LogEvent;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1199
    :catch_0
    move-exception v1

    .line 1200
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1201
    instance-of v2, v1, Lorg/jpos/security/SMException;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/jpos/security/SMException;

    invoke-direct {v2, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    :goto_0
    throw v2
.end method

.method protected bridge synthetic generateKeyCheckValueImpl(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    check-cast p1, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateKeyCheckValueImpl(Lorg/jpos/security/SecureDESKey;)[B

    move-result-object p1

    return-object p1
.end method

.method protected generateKeyCheckValueImpl(Lorg/jpos/security/SecureDESKey;)[B
    .locals 1
    .param p1, "secureDESKey"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1255
    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateKeyCheckValue(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method public generateKeyImpl(SLjava/lang/String;)Lorg/jpos/security/SecureDESKey;
    .locals 2
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {v0, p1}, Lorg/jpos/security/jceadapter/JCEHandler;->generateDESKey(S)Ljava/security/Key;

    move-result-object v0

    .line 192
    .local v0, "generatedClearKey":Ljava/security/Key;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encryptToLMK(SLjava/lang/String;Ljava/security/Key;)Lorg/jpos/security/SecureDESKey;

    move-result-object v1

    return-object v1
.end method

.method public generatePINImpl(Ljava/lang/String;ILjava/util/List;)Lorg/jpos/security/EncryptedPIN;
    .locals 9
    .param p1, "accountNumber"    # Ljava/lang/String;
    .param p2, "pinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 325
    .local p3, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 326
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 329
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 330
    .local v1, "rd":Ljava/util/Random;
    const/16 v2, 0x9

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    .line 331
    .local v3, "max":I
    add-int/lit8 v4, p2, -0x9

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    .line 333
    .local v0, "max2":I
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    .line 334
    .local v4, "pinl":J
    if-le p2, v2, :cond_2

    .line 335
    int-to-long v6, v0

    mul-long/2addr v4, v6

    .line 336
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 338
    :cond_2
    invoke-static {v4, v5, p2}, Lorg/jpos/iso/ISOUtil;->zeropad(JI)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "pin":Ljava/lang/String;
    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 342
    .end local v0    # "max2":I
    .end local v1    # "rd":Ljava/util/Random;
    .end local v3    # "max":I
    invoke-virtual {p0, v4, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encryptPINImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected generateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 5
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p3, "imksmi"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "accntSeqNo"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "arqc"    # [B
    .param p8, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1080
    if-nez p1, :cond_0

    .line 1081
    sget-object p1, Lorg/jpos/security/MKDMethod;->OPTION_A:Lorg/jpos/security/MKDMethod;

    .line 1082
    :cond_0
    invoke-static {p4, p5, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSN(Ljava/lang/String;Ljava/lang/String;Lorg/jpos/security/MKDMethod;)[B

    move-result-object v0

    .line 1083
    .local v0, "panpsn":[B
    invoke-virtual {p0, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveICCMasterKey(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v1

    .line 1085
    .local v1, "mksmi":Ljava/security/Key;
    sget-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$SKDMethod:[I

    invoke-virtual {p2}, Lorg/jpos/security/SKDMethod;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1096
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session Key Derivation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1092
    :pswitch_0
    invoke-direct {p0, v1, p7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveCommonSK_SM(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v2

    .line 1093
    .local v2, "smi":Ljava/security/Key;
    invoke-direct {p0, p8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->paddingISO9797Method2([B)[B

    move-result-object p8

    .line 1094
    goto :goto_0

    .line 1087
    .end local v2    # "smi":Ljava/security/Key;
    :pswitch_1
    invoke-direct {p0, v1, p6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveSK_VISA(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v2

    .line 1088
    .restart local v2    # "smi":Ljava/security/Key;
    invoke-direct {p0, p8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->paddingISO9797Method2([B)[B

    move-result-object p8

    .line 1089
    nop

    .line 1098
    :goto_0
    invoke-direct {p0, v2, p8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateMACISO9797Alg3(Ljava/security/Key;[B)[B

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public importBDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;
    .locals 6
    .param p1, "clearComponent1HexString"    # Ljava/lang/String;
    .param p2, "clearComponent2HexString"    # Ljava/lang/String;
    .param p3, "clearComponent3HexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2379
    const/16 v1, 0x80

    const-string v2, "BDK"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formKEYfromThreeClearComponents(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;

    move-result-object v0

    return-object v0
.end method

.method public importKeyImpl(SLjava/lang/String;[BLorg/jpos/security/SecureDESKey;Z)Lorg/jpos/security/SecureDESKey;
    .locals 2
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "encryptedKey"    # [B
    .param p4, "kek"    # Lorg/jpos/security/SecureDESKey;
    .param p5, "checkParity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {p0, p4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1, p5}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptDESKey(S[BLjava/security/Key;Z)Ljava/security/Key;

    move-result-object v0

    .line 202
    .local v0, "clearKEY":Ljava/security/Key;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encryptToLMK(SLjava/lang/String;Ljava/security/Key;)Lorg/jpos/security/SecureDESKey;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic importPINImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;)Lorg/jpos/security/EncryptedPIN;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    check-cast p2, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;)Lorg/jpos/security/EncryptedPIN;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Z)Lorg/jpos/security/EncryptedPIN;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    check-cast p3, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;Z)Lorg/jpos/security/EncryptedPIN;

    move-result-object p1

    return-object p1
.end method

.method protected importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;Z)Lorg/jpos/security/EncryptedPIN;
    .locals 8
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p3, "bdk"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "tdes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2418
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateDerivedKey(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;ZZ)[B

    move-result-object v1

    .line 2419
    .local v1, "derivedKey":[B
    nop

    .line 2420
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v2

    .line 2419
    invoke-virtual {p0, v2, v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->specialDecrypt([B[B)[B

    move-result-object v2

    .line 2422
    .local v2, "clearPinblk":[B
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v3

    .line 2423
    .local v3, "pan":Ljava/lang/String;
    nop

    .line 2424
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v4

    .line 2423
    invoke-virtual {p0, v2, v4, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePIN([BBLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2427
    .local v4, "pin":Ljava/lang/String;
    iget-object v5, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    .line 2428
    invoke-virtual {p0, v4, v0, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v6

    sget-object v7, Lorg/jpos/security/jceadapter/JCESecurityModule;->PINLMKIndex:Ljava/lang/Integer;

    .line 2429
    invoke-direct {p0, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 2427
    invoke-virtual {v5, v6, v7}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v5

    .line 2431
    .local v5, "pinUnderLmk":[B
    new-instance v6, Lorg/jpos/security/EncryptedPIN;

    invoke-direct {v6, v5, v0, v3, v0}, Lorg/jpos/security/EncryptedPIN;-><init>([BBLjava/lang/String;Z)V

    return-object v6
.end method

.method public importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;)Lorg/jpos/security/EncryptedPIN;
    .locals 7
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "kd1"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "accountNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 291
    .local v1, "destinationPINBlockFormat":B
    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v3

    .line 292
    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v4

    .line 291
    invoke-virtual {v2, v3, v4}, Lorg/jpos/security/jceadapter/JCEHandler;->decryptData([BLjava/security/Key;)[B

    move-result-object v2

    .line 294
    .local v2, "clearPINBlock":[B
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePIN([BBLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual {p0, v3, v1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v2

    .line 299
    iget-object v4, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    sget-object v5, Lorg/jpos/security/jceadapter/JCESecurityModule;->PINLMKIndex:Ljava/lang/Integer;

    invoke-direct {p0, v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getLMK(Ljava/lang/Integer;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v4

    .line 300
    .local v4, "translatedPINBlock":[B
    new-instance v5, Lorg/jpos/security/EncryptedPIN;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v1, v0, v6}, Lorg/jpos/security/EncryptedPIN;-><init>([BBLjava/lang/String;Z)V

    return-object v5
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->cfg:Lorg/jpos/core/Configuration;

    .line 183
    :try_start_0
    const-string v0, "provider"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lmk"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rebuildlmk"

    invoke-interface {p1, v2}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->init(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/jpos/security/SMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    nop

    .line 187
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lorg/jpos/security/SMException;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected specialDecrypt([B[B)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 2087
    array-length v0, p2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2089
    invoke-static {p1, p2}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object p1

    .line 2090
    invoke-direct {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decrypt64([B[B)[B

    move-result-object p1

    .line 2091
    invoke-static {p1, p2}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    return-object v0

    .line 2093
    :cond_0
    new-array v0, v1, [B

    .line 2094
    .local v0, "keyL":[B
    new-array v2, v1, [B

    .line 2095
    .local v2, "keyR":[B
    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2096
    invoke-static {p2, v1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2097
    invoke-direct {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decrypt64([B[B)[B

    move-result-object p1

    .line 2098
    invoke-direct {p0, p1, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object p1

    .line 2099
    invoke-direct {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decrypt64([B[B)[B

    move-result-object p1

    .line 2100
    return-object p1
.end method

.method protected specialEncrypt([B[B)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 2068
    array-length v0, p2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2070
    invoke-static {p1, p2}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object p1

    .line 2071
    invoke-direct {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object p1

    .line 2072
    invoke-static {p1, p2}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v0

    return-object v0

    .line 2074
    :cond_0
    new-array v0, v1, [B

    .line 2075
    .local v0, "keyL":[B
    new-array v2, v1, [B

    .line 2076
    .local v2, "keyR":[B
    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2077
    invoke-static {p2, v1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2078
    invoke-direct {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object p1

    .line 2079
    invoke-direct {p0, p1, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decrypt64([B[B)[B

    move-result-object p1

    .line 2080
    invoke-direct {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encrypt64([B[B)[B

    move-result-object p1

    .line 2081
    return-object p1
.end method

.method public translateKeySchemeImpl(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/KeyScheme;)Lorg/jpos/security/SecureDESKey;
    .locals 3
    .param p1, "key"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "keyScheme"    # Lorg/jpos/security/KeyScheme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1262
    if-eqz p1, :cond_4

    .line 1265
    if-eqz p2, :cond_3

    .line 1268
    invoke-virtual {p1}, Lorg/jpos/security/SecureDESKey;->getScheme()Lorg/jpos/security/KeyScheme;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 1269
    return-object p1

    .line 1271
    :cond_0
    sget-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$KeyScheme:[I

    invoke-virtual {p1}, Lorg/jpos/security/SecureDESKey;->getScheme()Lorg/jpos/security/KeyScheme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/security/KeyScheme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1290
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Change key scheme allowed only for keysusing variant method"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    :pswitch_0
    sget-object v0, Lorg/jpos/security/KeyScheme;->T:Lorg/jpos/security/KeyScheme;

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 1286
    :cond_1
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Triple length key using X9.17 method may be  converted only to triple length key using variant method"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1280
    :pswitch_1
    sget-object v0, Lorg/jpos/security/KeyScheme;->U:Lorg/jpos/security/KeyScheme;

    if-ne p2, v0, :cond_2

    .line 1295
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    .line 1297
    .local v0, "clearKey":Ljava/security/Key;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/jpos/security/SecureDESKey;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->getMajorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jpos/security/SecureDESKey;->getVariant()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1298
    .local v1, "keyType":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jpos/security/SecureDESKey;->getKeyLength()S

    move-result v2

    invoke-virtual {p0, v2, v1, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->encryptToLMK(SLjava/lang/String;Ljava/security/Key;)Lorg/jpos/security/SecureDESKey;

    move-result-object v2

    return-object v2

    .line 1281
    .end local v0    # "clearKey":Ljava/security/Key;
    .end local v1    # "keyType":Ljava/lang/String;
    :cond_2
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Double length key using X9.17 method may be  converted only to double length key using variant method"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1277
    :pswitch_2
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "DES key using the variant method can not be converted to less secure key using X9.17 method"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :pswitch_3
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Single length DES key using the variant method can not be converted to any other key"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1266
    :cond_3
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Missing desired key schame"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_4
    new-instance v0, Lorg/jpos/security/SMException;

    const-string v1, "Missing key to change"

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic translatePINGenerateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/PaddingMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/javatuples/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object/from16 v4, p4

    check-cast v4, Lorg/jpos/security/SecureDESKey;

    move-object/from16 v12, p12

    check-cast v12, Lorg/jpos/security/SecureDESKey;

    move-object/from16 v13, p13

    check-cast v13, Lorg/jpos/security/SecureDESKey;

    move-object/from16 v14, p14

    check-cast v14, Lorg/jpos/security/SecureDESKey;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lorg/jpos/security/jceadapter/JCESecurityModule;->translatePINGenerateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/PaddingMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;B)Lorg/javatuples/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected translatePINGenerateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/PaddingMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;B)Lorg/javatuples/Pair;
    .locals 22
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p3, "padm"    # Lorg/jpos/security/PaddingMethod;
    .param p4, "imksmi"    # Lorg/jpos/security/SecureDESKey;
    .param p5, "accountNo"    # Ljava/lang/String;
    .param p6, "accntSeqNo"    # Ljava/lang/String;
    .param p7, "atc"    # [B
    .param p8, "arqc"    # [B
    .param p9, "data"    # [B
    .param p10, "currentPIN"    # Lorg/jpos/security/EncryptedPIN;
    .param p11, "newPIN"    # Lorg/jpos/security/EncryptedPIN;
    .param p12, "kd1"    # Lorg/jpos/security/SecureDESKey;
    .param p13, "imksmc"    # Lorg/jpos/security/SecureDESKey;
    .param p14, "imkac"    # Lorg/jpos/security/SecureDESKey;
    .param p15, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "Lorg/jpos/security/PaddingMethod;",
            "Lorg/jpos/security/SecureDESKey;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/SecureDESKey;",
            "Lorg/jpos/security/SecureDESKey;",
            "Lorg/jpos/security/SecureDESKey;",
            "B)",
            "Lorg/javatuples/Pair<",
            "Lorg/jpos/security/EncryptedPIN;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1108
    move-object/from16 v9, p0

    move-object/from16 v10, p8

    if-nez p1, :cond_0

    .line 1109
    sget-object v0, Lorg/jpos/security/MKDMethod;->OPTION_A:Lorg/jpos/security/MKDMethod;

    move-object v11, v0

    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .local v0, "mkdm":Lorg/jpos/security/MKDMethod;
    goto :goto_0

    .line 1108
    .end local v0    # "mkdm":Lorg/jpos/security/MKDMethod;
    .restart local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    :cond_0
    move-object/from16 v11, p1

    .line 1110
    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .local v11, "mkdm":Lorg/jpos/security/MKDMethod;
    :goto_0
    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-static {v12, v13, v11}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSN(Ljava/lang/String;Ljava/lang/String;Lorg/jpos/security/MKDMethod;)[B

    move-result-object v14

    .line 1111
    .local v14, "panpsn":[B
    move-object/from16 v15, p13

    invoke-virtual {v9, v15}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {v9, v0, v14}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveICCMasterKey(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v8

    .line 1114
    .local v8, "mksmc":Ljava/security/Key;
    sget-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$SKDMethod:[I

    invoke-virtual/range {p2 .. p2}, Lorg/jpos/security/SKDMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1128
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session Key Derivation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not supported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :pswitch_0
    invoke-direct {v9, v8, v10}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveCommonSK_SM(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v0

    .line 1125
    .local v0, "smc":Ljava/security/Key;
    sget-object v1, Lorg/jpos/security/PaddingMethod;->CCD:Lorg/jpos/security/PaddingMethod;

    .line 1126
    .local v1, "derivedPADM":Lorg/jpos/security/PaddingMethod;
    move-object/from16 v7, p7

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_1

    .line 1120
    .end local v0    # "smc":Ljava/security/Key;
    .end local v1    # "derivedPADM":Lorg/jpos/security/PaddingMethod;
    :pswitch_1
    invoke-direct {v9, v8, v10}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveCommonSK_SM(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v0

    .line 1121
    .restart local v0    # "smc":Ljava/security/Key;
    sget-object v1, Lorg/jpos/security/PaddingMethod;->MCHIP:Lorg/jpos/security/PaddingMethod;

    .line 1122
    .restart local v1    # "derivedPADM":Lorg/jpos/security/PaddingMethod;
    move-object/from16 v7, p7

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_1

    .line 1116
    .end local v0    # "smc":Ljava/security/Key;
    .end local v1    # "derivedPADM":Lorg/jpos/security/PaddingMethod;
    :pswitch_2
    move-object/from16 v7, p7

    invoke-direct {v9, v8, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveSK_VISA(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v0

    .line 1117
    .restart local v0    # "smc":Ljava/security/Key;
    sget-object v1, Lorg/jpos/security/PaddingMethod;->VSDC:Lorg/jpos/security/PaddingMethod;

    .line 1118
    .restart local v1    # "derivedPADM":Lorg/jpos/security/PaddingMethod;
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 1132
    .end local v0    # "smc":Ljava/security/Key;
    .end local v1    # "derivedPADM":Lorg/jpos/security/PaddingMethod;
    .local v16, "smc":Ljava/security/Key;
    .local v17, "derivedPADM":Lorg/jpos/security/PaddingMethod;
    :goto_1
    if-nez p3, :cond_1

    .line 1133
    move-object/from16 v0, v17

    move-object/from16 v18, v0

    .end local p3    # "padm":Lorg/jpos/security/PaddingMethod;
    .local v0, "padm":Lorg/jpos/security/PaddingMethod;
    goto :goto_2

    .line 1132
    .end local v0    # "padm":Lorg/jpos/security/PaddingMethod;
    .restart local p3    # "padm":Lorg/jpos/security/PaddingMethod;
    :cond_1
    move-object/from16 v18, p3

    .line 1135
    .end local p3    # "padm":Lorg/jpos/security/PaddingMethod;
    .local v18, "padm":Lorg/jpos/security/PaddingMethod;
    :goto_2
    const/4 v0, 0x0

    .line 1136
    .local v0, "udk":Ljava/security/Key;
    move/from16 v6, p15

    invoke-direct {v9, v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->isVSDCPinBlockFormat(B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1137
    move-object/from16 v5, p14

    invoke-virtual {v9, v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v9, v1, v14}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveICCMasterKey(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_3

    .line 1136
    :cond_2
    move-object/from16 v5, p14

    move-object/from16 v19, v0

    .line 1139
    .end local v0    # "udk":Ljava/security/Key;
    .local v19, "udk":Ljava/security/Key;
    :goto_3
    move-object/from16 v4, p12

    invoke-virtual {v9, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move-object/from16 v4, v16

    move/from16 v5, p15

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->translatePINExt(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Ljava/security/Key;Ljava/security/Key;BLjava/security/Key;Lorg/jpos/security/PaddingMethod;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v7

    .line 1141
    .local v7, "pin":Lorg/jpos/security/EncryptedPIN;
    invoke-virtual {v7}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v0

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v20

    .line 1142
    .end local p9    # "data":[B
    .local v20, "data":[B
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v9, v7

    .end local v7    # "pin":Lorg/jpos/security/EncryptedPIN;
    .local v9, "pin":Lorg/jpos/security/EncryptedPIN;
    move-object/from16 v7, p8

    move-object/from16 v21, v8

    .end local v8    # "mksmc":Ljava/security/Key;
    .local v21, "mksmc":Ljava/security/Key;
    move-object/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B

    move-result-object v0

    .line 1144
    .local v0, "mac":[B
    new-instance v1, Lorg/javatuples/Pair;

    invoke-direct {v1, v9, v0}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic translatePINImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    check-cast p2, Lorg/jpos/security/SecureDESKey;

    check-cast p3, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->translatePINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;B)Lorg/jpos/security/EncryptedPIN;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic translatePINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;BZ)Lorg/jpos/security/EncryptedPIN;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v4, p4

    check-cast v4, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->translatePINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;BZ)Lorg/jpos/security/EncryptedPIN;

    move-result-object p1

    return-object p1
.end method

.method protected translatePINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;BZ)Lorg/jpos/security/EncryptedPIN;
    .locals 8
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p3, "bdk"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "kd2"    # Lorg/jpos/security/SecureDESKey;
    .param p5, "destinationPINBlockFormat"    # B
    .param p6, "tdes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2399
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p6, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateDerivedKey(Lorg/jpos/security/KeySerialNumber;Lorg/jpos/security/SecureDESKey;ZZ)[B

    move-result-object v1

    .line 2400
    .local v1, "derivedKey":[B
    nop

    .line 2401
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v2

    .line 2400
    invoke-virtual {p0, v2, v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->specialDecrypt([B[B)[B

    move-result-object v2

    .line 2404
    .local v2, "clearPinblk":[B
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v3

    .line 2405
    .local v3, "pan":Ljava/lang/String;
    nop

    .line 2406
    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v4

    .line 2405
    invoke-virtual {p0, v2, v4, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePIN([BBLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2408
    .local v4, "pin":Ljava/lang/String;
    iget-object v5, p0, Lorg/jpos/security/jceadapter/JCESecurityModule;->jceHandler:Lorg/jpos/security/jceadapter/JCEHandler;

    .line 2409
    invoke-virtual {p0, v4, p5, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePINBlock(Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v6

    .line 2410
    invoke-virtual {p0, p4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v7

    .line 2408
    invoke-virtual {v5, v6, v7}, Lorg/jpos/security/jceadapter/JCEHandler;->encryptData([BLjava/security/Key;)[B

    move-result-object v5

    .line 2412
    .local v5, "translatedPinblk":[B
    new-instance v6, Lorg/jpos/security/EncryptedPIN;

    invoke-direct {v6, v5, p5, v3, v0}, Lorg/jpos/security/EncryptedPIN;-><init>([BBLjava/lang/String;Z)V

    return-object v6
.end method

.method public translatePINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;B)Lorg/jpos/security/EncryptedPIN;
    .locals 10
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "kd1"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "kd2"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 785
    invoke-virtual {p0, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v8

    .line 786
    .local v8, "clearKd1":Ljava/security/Key;
    invoke-virtual {p0, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v9

    .line 787
    .local v9, "clearKd2":Ljava/security/Key;
    sget-object v7, Lorg/jpos/security/PaddingMethod;->MCHIP:Lorg/jpos/security/PaddingMethod;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v8

    move-object v4, v9

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->translatePINExt(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Ljava/security/Key;Ljava/security/Key;BLjava/security/Key;Lorg/jpos/security/PaddingMethod;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v0

    .line 789
    .local v0, "translatedPIN":Lorg/jpos/security/EncryptedPIN;
    return-object v0
.end method

.method public bridge synthetic verifyARQCGenerateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object/from16 v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lorg/jpos/security/jceadapter/JCESecurityModule;->verifyARQCGenerateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public verifyARQCGenerateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .locals 18
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p3, "imkac"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "accntSeqNo"    # Ljava/lang/String;
    .param p6, "arqc"    # [B
    .param p7, "atc"    # [B
    .param p8, "upn"    # [B
    .param p9, "transData"    # [B
    .param p10, "arpcMethod"    # Lorg/jpos/security/ARPCMethod;
    .param p11, "arc"    # [B
    .param p12, "propAuthData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1017
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p10

    if-nez p1, :cond_0

    .line 1018
    sget-object v0, Lorg/jpos/security/MKDMethod;->OPTION_A:Lorg/jpos/security/MKDMethod;

    move-object v10, v0

    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .local v0, "mkdm":Lorg/jpos/security/MKDMethod;
    goto :goto_0

    .line 1017
    .end local v0    # "mkdm":Lorg/jpos/security/MKDMethod;
    .restart local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    :cond_0
    move-object/from16 v10, p1

    .line 1020
    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .local v10, "mkdm":Lorg/jpos/security/MKDMethod;
    :goto_0
    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static {v11, v12, v10}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formatPANPSN(Ljava/lang/String;Ljava/lang/String;Lorg/jpos/security/MKDMethod;)[B

    move-result-object v13

    .line 1021
    .local v13, "panpsn":[B
    move-object/from16 v14, p3

    invoke-virtual {v6, v14}, Lorg/jpos/security/jceadapter/JCESecurityModule;->decryptFromLMK(Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {v6, v0, v13}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveICCMasterKey(Ljava/security/Key;[B)Ljava/security/Key;

    move-result-object v15

    .line 1022
    .local v15, "mkac":Ljava/security/Key;
    move-object v0, v15

    .line 1023
    .local v0, "skac":Ljava/security/Key;
    move-object v1, v15

    .line 1024
    .local v1, "skarpc":Ljava/security/Key;
    sget-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$SKDMethod:[I

    invoke-virtual/range {p2 .. p2}, Lorg/jpos/security/SKDMethod;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1039
    new-instance v2, Lorg/jpos/security/SMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session Key Derivation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1035
    :pswitch_0
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v6, v15, v8, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveSK_MK(Ljava/security/Key;[B[B)Ljava/security/Key;

    move-result-object v0

    .line 1036
    move-object v1, v0

    .line 1037
    move-object/from16 v5, p8

    move-object v4, v0

    move-object/from16 v16, v1

    goto :goto_1

    .line 1030
    :pswitch_1
    invoke-direct {v6, v10, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintMKDM(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;)V

    .line 1031
    invoke-direct {v6, v7, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintARPCM(Lorg/jpos/security/SKDMethod;Lorg/jpos/security/ARPCMethod;)V

    .line 1032
    move-object/from16 v5, p8

    invoke-direct {v6, v15, v8, v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->deriveSK_MK(Ljava/security/Key;[B[B)Ljava/security/Key;

    move-result-object v0

    .line 1033
    move-object v4, v0

    move-object/from16 v16, v1

    goto :goto_1

    .line 1026
    :pswitch_2
    move-object/from16 v5, p8

    invoke-direct {v6, v10, v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintMKDM(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;)V

    .line 1027
    invoke-direct {v6, v7, v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->constraintARPCM(Lorg/jpos/security/SKDMethod;Lorg/jpos/security/ARPCMethod;)V

    .line 1028
    move-object v4, v0

    move-object/from16 v16, v1

    .line 1042
    .end local v0    # "skac":Ljava/security/Key;
    .end local v1    # "skarpc":Ljava/security/Key;
    .local v4, "skac":Ljava/security/Key;
    .local v16, "skarpc":Ljava/security/Key;
    :goto_1
    move-object/from16 v3, p9

    invoke-direct {v6, v4, v3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateMACISO9797Alg3(Ljava/security/Key;[B)[B

    move-result-object v0

    move-object/from16 v2, p6

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1043
    const/4 v0, 0x0

    return-object v0

    .line 1045
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p6

    move-object/from16 v3, p10

    move-object/from16 v17, v4

    .end local v4    # "skac":Ljava/security/Key;
    .local v17, "skac":Ljava/security/Key;
    move-object/from16 v4, p11

    move-object/from16 v5, p12

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateARPC(Ljava/security/Key;[BLorg/jpos/security/ARPCMethod;[B[B)[B

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic verifyARQCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[B)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->verifyARQCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[B[B)Z

    move-result v0

    return v0
.end method

.method protected verifyARQCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[B[B)Z
    .locals 9
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p3, "imkac"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "accntSeqNo"    # Ljava/lang/String;
    .param p6, "arqc"    # [B
    .param p7, "atc"    # [B
    .param p8, "upn"    # [B
    .param p9, "transData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 977
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateARQC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B

    move-result-object v0

    .line 979
    .local v0, "res":[B
    move-object v1, p6

    invoke-static {p6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method protected bridge synthetic verifyCAVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->verifyCAVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected verifyCAVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "cvk"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "cavv"    # Ljava/lang/String;
    .param p4, "upn"    # Ljava/lang/String;
    .param p5, "authrc"    # Ljava/lang/String;
    .param p6, "sfarc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0, p4, p5, p6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->checkCAVVArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p4, v1}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVD(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic verifyCVC3Impl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/MKDMethod;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v1, p1

    check-cast v1, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/jpos/security/jceadapter/JCESecurityModule;->verifyCVC3Impl(Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/MKDMethod;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected verifyCVC3Impl(Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/MKDMethod;Ljava/lang/String;)Z
    .locals 2
    .param p1, "imkcvc3"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "accountNo"    # Ljava/lang/String;
    .param p3, "acctSeqNo"    # Ljava/lang/String;
    .param p4, "atc"    # [B
    .param p5, "upn"    # [B
    .param p6, "data"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p8, "cvc3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 535
    invoke-virtual/range {p0 .. p7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVC3(Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/MKDMethod;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "calcCVC3":Ljava/lang/String;
    if-nez p8, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p8

    :goto_0
    move-object p8, v1

    .line 540
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic verifyCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->verifyCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic verifyCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->verifyCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected verifyCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "cvkA"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "cvkB"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "cvv"    # Ljava/lang/String;
    .param p5, "expDate"    # Ljava/lang/String;
    .param p6, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 457
    invoke-virtual {p0, p2, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p5, p6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVD(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected verifyCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "cvkA"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "cvkB"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "cvv"    # Ljava/lang/String;
    .param p5, "expDate"    # Ljava/util/Date;
    .param p6, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0, p2, p3}, Lorg/jpos/security/jceadapter/JCESecurityModule;->concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p5, p6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculateCVV(Ljava/lang/String;Ljava/security/Key;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic verifyPVVImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v3, p3

    check-cast v3, Lorg/jpos/security/SecureDESKey;

    move-object v4, p4

    check-cast v4, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->verifyPVVImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public verifyPVVImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;ILjava/lang/String;)Z
    .locals 4
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "kd1"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "pvkA"    # Lorg/jpos/security/SecureDESKey;
    .param p4, "pvkB"    # Lorg/jpos/security/SecureDESKey;
    .param p5, "pvki"    # I
    .param p6, "pvv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 775
    invoke-virtual {p0, p3, p4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->concatKeys(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)Ljava/security/Key;

    move-result-object v0

    .line 776
    .local v0, "key":Ljava/security/Key;
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/SecureDESKey;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v1

    .line 777
    .local v1, "pinUnderLmk":Lorg/jpos/security/EncryptedPIN;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p5, v2}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/security/Key;ILjava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method protected bridge synthetic verifydCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->verifydCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic verifydCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jpos/security/SecureDESKey;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->verifydCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z

    move-result p1

    return p1
.end method

.method protected verifydCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .locals 7
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "imkac"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "dcvv"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/lang/String;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 501
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatedCVV(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "res":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected verifydCVVImpl(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .locals 8
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "imkac"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "dcvv"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/util/Date;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 489
    const-string v0, "yyMM"

    invoke-static {p4, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "ed":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lorg/jpos/security/jceadapter/JCESecurityModule;->calculatedCVV(Ljava/lang/String;Lorg/jpos/security/SecureDESKey;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "res":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
