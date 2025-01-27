.class public Lorg/apache/commons/codec/digest/Sha2Crypt;
.super Ljava/lang/Object;
.source "Sha2Crypt.java"


# static fields
.field private static final ROUNDS_DEFAULT:I = 0x1388

.field private static final ROUNDS_MAX:I = 0x3b9ac9ff

.field private static final ROUNDS_MIN:I = 0x3e8

.field private static final ROUNDS_PREFIX:Ljava/lang/String; = "rounds="

.field private static final SALT_PATTERN:Ljava/util/regex/Pattern;

.field private static final SHA256_BLOCKSIZE:I = 0x20

.field static final SHA256_PREFIX:Ljava/lang/String; = "$5$"

.field private static final SHA512_BLOCKSIZE:I = 0x40

.field static final SHA512_PREFIX:Ljava/lang/String; = "$6$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    nop

    .line 70
    const-string v0, "^\\$([56])\\$(rounds=(\\d+)\\$)?([\\.\\/a-zA-Z0-9]{1,16}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/digest/Sha2Crypt;->SALT_PATTERN:Ljava/util/regex/Pattern;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sha256Crypt([B)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # [B

    .line 89
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha256Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;

    .line 110
    const-string v0, "$5$"

    if-nez p1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_0
    const/16 v1, 0x20

    const-string v2, "SHA-256"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Crypt([BLjava/lang/String;Ljava/util/Random;)Ljava/lang/String;
    .locals 3
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "random"    # Ljava/util/Random;

    .line 136
    const-string v0, "$5$"

    if-nez p1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2, p2}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_0
    const/16 v1, 0x20

    const-string v2, "SHA-256"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 37
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "saltPrefix"    # Ljava/lang/String;
    .param p3, "blocksize"    # I
    .param p4, "algorithm"    # Ljava/lang/String;

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    array-length v3, v0

    .line 173
    .local v3, "keyLen":I
    const/16 v4, 0x1388

    .line 174
    .local v4, "rounds":I
    const/4 v5, 0x0

    .line 175
    .local v5, "roundsCustom":Z
    if-eqz v1, :cond_10

    .line 179
    sget-object v6, Lorg/apache/commons/codec/digest/Sha2Crypt;->SALT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 180
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 183
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 184
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 185
    const/16 v8, 0x3e8

    const v9, 0x3b9ac9ff

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 186
    const/4 v5, 0x1

    .line 188
    :cond_0
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, "saltString":Ljava/lang/String;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 190
    .local v10, "saltBytes":[B
    array-length v11, v10

    .line 194
    .local v11, "saltLen":I
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 200
    .local v12, "ctx":Ljava/security/MessageDigest;
    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 215
    invoke-virtual {v12, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 222
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    .line 228
    .local v13, "altCtx":Ljava/security/MessageDigest;
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 234
    invoke-virtual {v13, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 240
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 246
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    .line 256
    .local v14, "altResult":[B
    array-length v15, v0

    .line 257
    .local v15, "cnt":I
    :goto_0
    const/4 v7, 0x0

    if-le v15, v2, :cond_1

    .line 258
    invoke-virtual {v12, v14, v7, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 259
    sub-int/2addr v15, v2

    const/4 v7, 0x3

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v12, v14, v7, v15}, Ljava/security/MessageDigest;->update([BII)V

    .line 280
    array-length v15, v0

    .line 281
    :goto_1
    if-lez v15, :cond_3

    .line 282
    and-int/lit8 v16, v15, 0x1

    if-eqz v16, :cond_2

    .line 283
    invoke-virtual {v12, v14, v7, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 285
    :cond_2
    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 287
    :goto_2
    shr-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 294
    :cond_3
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    .line 300
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    .line 309
    const/16 v16, 0x1

    move/from16 v8, v16

    .local v8, "i":I
    :goto_3
    if-gt v8, v3, :cond_4

    .line 310
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 309
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 317
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 329
    .local v8, "tempResult":[B
    new-array v7, v3, [B

    .line 330
    .local v7, "pBytes":[B
    const/16 v17, 0x0

    move-object/from16 v18, v6

    move/from16 v6, v17

    .line 331
    .local v6, "cp":I
    .local v18, "m":Ljava/util/regex/Matcher;
    :goto_4
    move-object/from16 v17, v12

    .end local v12    # "ctx":Ljava/security/MessageDigest;
    .local v17, "ctx":Ljava/security/MessageDigest;
    sub-int v12, v3, v2

    if-ge v6, v12, :cond_5

    .line 332
    const/4 v12, 0x0

    invoke-static {v8, v12, v7, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    add-int/2addr v6, v2

    move-object/from16 v12, v17

    goto :goto_4

    .line 335
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v16, v13

    .end local v13    # "altCtx":Ljava/security/MessageDigest;
    .local v16, "altCtx":Ljava/security/MessageDigest;
    sub-int v13, v3, v6

    invoke-static {v8, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    .line 350
    .end local v16    # "altCtx":Ljava/security/MessageDigest;
    .restart local v13    # "altCtx":Ljava/security/MessageDigest;
    const/16 v16, 0x1

    move/from16 v19, v6

    move/from16 v6, v16

    .local v6, "i":I
    .local v19, "cp":I
    :goto_5
    move-object/from16 v20, v8

    .end local v8    # "tempResult":[B
    .local v20, "tempResult":[B
    aget-byte v8, v14, v12

    and-int/lit16 v8, v8, 0xff

    const/16 v12, 0x10

    add-int/2addr v8, v12

    if-gt v6, v8, :cond_6

    .line 351
    invoke-virtual {v13, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 350
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v20

    const/4 v12, 0x0

    goto :goto_5

    .line 358
    .end local v6    # "i":I
    :cond_6
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 371
    .end local v20    # "tempResult":[B
    .local v6, "tempResult":[B
    new-array v8, v11, [B

    .line 372
    .local v8, "sBytes":[B
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 373
    .end local v19    # "cp":I
    .local v12, "cp":I
    :goto_6
    move-object/from16 v19, v14

    .end local v14    # "altResult":[B
    .local v19, "altResult":[B
    sub-int v14, v11, v2

    if-ge v12, v14, :cond_7

    .line 374
    const/4 v14, 0x0

    invoke-static {v6, v14, v8, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    add-int/2addr v12, v2

    move-object/from16 v14, v19

    goto :goto_6

    .line 377
    :cond_7
    const/4 v14, 0x0

    move/from16 v21, v15

    .end local v15    # "cnt":I
    .local v21, "cnt":I
    sub-int v15, v11, v12

    invoke-static {v6, v14, v8, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    const/4 v14, 0x0

    move-object/from16 v15, v19

    .end local v19    # "altResult":[B
    .local v14, "i":I
    .local v15, "altResult":[B
    :goto_7
    move/from16 v19, v12

    .end local v12    # "cp":I
    .local v19, "cp":I
    add-int/lit8 v12, v4, -0x1

    if-gt v14, v12, :cond_c

    .line 395
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 402
    .end local v17    # "ctx":Ljava/security/MessageDigest;
    .local v12, "ctx":Ljava/security/MessageDigest;
    and-int/lit8 v17, v14, 0x1

    if-eqz v17, :cond_8

    .line 403
    const/4 v1, 0x0

    invoke-virtual {v12, v7, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_8

    .line 405
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v12, v15, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 412
    :goto_8
    rem-int/lit8 v16, v14, 0x3

    if-eqz v16, :cond_9

    .line 413
    invoke-virtual {v12, v8, v1, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 420
    :cond_9
    rem-int/lit8 v16, v14, 0x7

    if-eqz v16, :cond_a

    .line 421
    invoke-virtual {v12, v7, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 429
    :cond_a
    and-int/lit8 v16, v14, 0x1

    if-eqz v16, :cond_b

    .line 430
    invoke-virtual {v12, v15, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_9

    .line 432
    :cond_b
    invoke-virtual {v12, v7, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 439
    :goto_9
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    .line 390
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v17, v12

    move/from16 v12, v19

    goto :goto_7

    .line 457
    .end local v12    # "ctx":Ljava/security/MessageDigest;
    .end local v14    # "i":I
    .restart local v17    # "ctx":Ljava/security/MessageDigest;
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const-string v14, "$"

    if-eqz v5, :cond_d

    .line 459
    move/from16 v22, v3

    .end local v3    # "keyLen":I
    .local v22, "keyLen":I
    const-string v3, "rounds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 458
    .end local v22    # "keyLen":I
    .restart local v3    # "keyLen":I
    :cond_d
    move/from16 v22, v3

    .line 463
    .end local v3    # "keyLen":I
    .restart local v22    # "keyLen":I
    :goto_a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/16 v23, 0x8

    const/16 v24, 0x1c

    const/16 v25, 0x1b

    const/16 v26, 0x6

    const/16 v27, 0x1a

    const/16 v28, 0x5

    const/16 v29, 0x19

    const/16 v30, 0x18

    const/16 v31, 0x17

    const/16 v32, 0x16

    const/16 v33, 0x15

    const/16 v14, 0x20

    const/16 v34, 0x7

    const/16 v35, 0x1

    if-ne v2, v14, :cond_e

    .line 491
    const/4 v14, 0x0

    aget-byte v3, v15, v14

    const/16 v14, 0xa

    aget-byte v14, v15, v14

    const/16 v36, 0x14

    aget-byte v2, v15, v36

    move/from16 v36, v4

    const/4 v4, 0x4

    .end local v4    # "rounds":I
    .local v36, "rounds":I
    invoke-static {v3, v14, v2, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 492
    aget-byte v2, v15, v33

    aget-byte v3, v15, v35

    const/16 v14, 0xb

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 493
    const/16 v2, 0xc

    aget-byte v2, v15, v2

    aget-byte v3, v15, v32

    const/4 v14, 0x2

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 494
    const/4 v2, 0x3

    aget-byte v3, v15, v2

    const/16 v2, 0xd

    aget-byte v2, v15, v2

    aget-byte v14, v15, v31

    invoke-static {v3, v2, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 495
    aget-byte v2, v15, v30

    aget-byte v3, v15, v4

    const/16 v14, 0xe

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 496
    const/16 v2, 0xf

    aget-byte v2, v15, v2

    aget-byte v3, v15, v29

    aget-byte v14, v15, v28

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 497
    aget-byte v2, v15, v26

    const/16 v3, 0x10

    aget-byte v3, v15, v3

    aget-byte v14, v15, v27

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 498
    aget-byte v2, v15, v25

    aget-byte v3, v15, v34

    const/16 v14, 0x11

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 499
    const/16 v2, 0x12

    aget-byte v2, v15, v2

    aget-byte v3, v15, v24

    aget-byte v14, v15, v23

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 500
    const/16 v2, 0x9

    aget-byte v2, v15, v2

    const/16 v3, 0x13

    aget-byte v3, v15, v3

    const/16 v14, 0x1d

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 501
    const/16 v2, 0x1f

    aget-byte v2, v15, v2

    const/16 v3, 0x1e

    aget-byte v3, v15, v3

    const/4 v4, 0x3

    const/4 v14, 0x0

    invoke-static {v14, v2, v3, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    move v4, v14

    goto/16 :goto_b

    .line 503
    .end local v36    # "rounds":I
    .restart local v4    # "rounds":I
    :cond_e
    move/from16 v36, v4

    const/4 v2, 0x0

    .end local v4    # "rounds":I
    .restart local v36    # "rounds":I
    aget-byte v3, v15, v2

    aget-byte v2, v15, v33

    const/16 v4, 0x2a

    aget-byte v4, v15, v4

    const/4 v14, 0x4

    invoke-static {v3, v2, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 504
    aget-byte v2, v15, v32

    const/16 v3, 0x2b

    aget-byte v3, v15, v3

    aget-byte v4, v15, v35

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 505
    const/16 v2, 0x2c

    aget-byte v2, v15, v2

    const/4 v3, 0x2

    aget-byte v4, v15, v3

    aget-byte v3, v15, v31

    invoke-static {v2, v4, v3, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 506
    const/4 v2, 0x3

    aget-byte v2, v15, v2

    aget-byte v3, v15, v30

    const/16 v4, 0x2d

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 507
    aget-byte v2, v15, v29

    const/16 v3, 0x2e

    aget-byte v3, v15, v3

    aget-byte v4, v15, v14

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 508
    const/16 v2, 0x2f

    aget-byte v2, v15, v2

    aget-byte v3, v15, v28

    aget-byte v4, v15, v27

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 509
    aget-byte v2, v15, v26

    aget-byte v3, v15, v25

    const/16 v4, 0x30

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 510
    aget-byte v2, v15, v24

    const/16 v3, 0x31

    aget-byte v3, v15, v3

    aget-byte v4, v15, v34

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 511
    const/16 v2, 0x32

    aget-byte v2, v15, v2

    aget-byte v3, v15, v23

    const/16 v4, 0x1d

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 512
    const/16 v2, 0x9

    aget-byte v2, v15, v2

    const/16 v3, 0x1e

    aget-byte v3, v15, v3

    const/16 v4, 0x33

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 513
    const/16 v2, 0x1f

    aget-byte v2, v15, v2

    const/16 v3, 0x34

    aget-byte v3, v15, v3

    const/16 v4, 0xa

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 514
    const/16 v2, 0x35

    aget-byte v2, v15, v2

    const/16 v3, 0xb

    aget-byte v3, v15, v3

    const/16 v4, 0x20

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 515
    const/16 v2, 0xc

    aget-byte v2, v15, v2

    const/16 v3, 0x21

    aget-byte v3, v15, v3

    const/16 v4, 0x36

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 516
    const/16 v2, 0x22

    aget-byte v2, v15, v2

    const/16 v3, 0x37

    aget-byte v3, v15, v3

    const/16 v4, 0xd

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 517
    const/16 v2, 0x38

    aget-byte v2, v15, v2

    const/16 v3, 0xe

    aget-byte v3, v15, v3

    const/16 v4, 0x23

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 518
    const/16 v2, 0xf

    aget-byte v2, v15, v2

    const/16 v3, 0x24

    aget-byte v3, v15, v3

    const/16 v4, 0x39

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 519
    const/16 v2, 0x25

    aget-byte v2, v15, v2

    const/16 v3, 0x3a

    aget-byte v3, v15, v3

    const/16 v4, 0x10

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 520
    const/16 v2, 0x3b

    aget-byte v2, v15, v2

    const/16 v3, 0x11

    aget-byte v3, v15, v3

    const/16 v4, 0x26

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 521
    const/16 v2, 0x12

    aget-byte v2, v15, v2

    const/16 v3, 0x27

    aget-byte v3, v15, v3

    const/16 v4, 0x3c

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 522
    const/16 v2, 0x28

    aget-byte v2, v15, v2

    const/16 v3, 0x3d

    aget-byte v3, v15, v3

    const/16 v4, 0x13

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 523
    const/16 v2, 0x3e

    aget-byte v2, v15, v2

    const/16 v3, 0x14

    aget-byte v3, v15, v3

    const/16 v4, 0x29

    aget-byte v4, v15, v4

    invoke-static {v2, v3, v4, v14, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 524
    const/16 v2, 0x3f

    aget-byte v2, v15, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 532
    :goto_b
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 533
    invoke-static {v7, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 534
    invoke-static {v8, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 535
    invoke-virtual/range {v17 .. v17}, Ljava/security/MessageDigest;->reset()V

    .line 536
    invoke-virtual {v13}, Ljava/security/MessageDigest;->reset()V

    .line 537
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 538
    invoke-static {v10, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 540
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 181
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v7    # "pBytes":[B
    .end local v8    # "sBytes":[B
    .end local v9    # "saltString":Ljava/lang/String;
    .end local v10    # "saltBytes":[B
    .end local v11    # "saltLen":I
    .end local v13    # "altCtx":Ljava/security/MessageDigest;
    .end local v15    # "altResult":[B
    .end local v17    # "ctx":Ljava/security/MessageDigest;
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v19    # "cp":I
    .end local v21    # "cnt":I
    .end local v22    # "keyLen":I
    .end local v36    # "rounds":I
    .restart local v3    # "keyLen":I
    .restart local v4    # "rounds":I
    .local v6, "m":Ljava/util/regex/Matcher;
    :cond_f
    move/from16 v22, v3

    .end local v3    # "keyLen":I
    .restart local v22    # "keyLen":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid salt value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v22    # "keyLen":I
    .restart local v3    # "keyLen":I
    :cond_10
    move/from16 v22, v3

    move-object v3, v1

    .end local v3    # "keyLen":I
    .restart local v22    # "keyLen":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Salt must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static sha512Crypt([B)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # [B

    .line 560
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha512Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;

    .line 582
    const-string v0, "$6$"

    if-nez p1, :cond_0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 585
    :cond_0
    const/16 v1, 0x40

    const-string v2, "SHA-512"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Crypt([BLjava/lang/String;Ljava/util/Random;)Ljava/lang/String;
    .locals 3
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "random"    # Ljava/util/Random;

    .line 612
    const-string v0, "$6$"

    if-nez p1, :cond_0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2, p2}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 615
    :cond_0
    const/16 v1, 0x40

    const-string v2, "SHA-512"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
