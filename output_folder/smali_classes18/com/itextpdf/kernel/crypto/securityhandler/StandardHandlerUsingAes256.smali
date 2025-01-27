.class public Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;
.super Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;
.source "StandardHandlerUsingAes256.java"


# static fields
.field private static final KEY_SALT_OFFSET:I = 0x28

.field private static final SALT_LENGTH:I = 0x8

.field private static final VALIDATION_SALT_OFFSET:I = 0x20

.field private static final serialVersionUID:J = -0x7419cd62c377152aL


# instance fields
.field protected encryptMetadata:Z

.field private isPdf2:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B)V
    .locals 0
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "password"    # [B

    .line 88
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;-><init>()V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZLcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 1
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "userPassword"    # [B
    .param p3, "ownerPassword"    # [B
    .param p4, "permissions"    # I
    .param p5, "encryptMetadata"    # Z
    .param p6, "embeddedFilesOnly"    # Z
    .param p7, "version"    # Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 83
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;-><init>()V

    .line 84
    if-eqz p7, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p7, v0}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isPdf2:Z

    .line 85
    invoke-direct/range {p0 .. p6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ)V

    .line 86
    return-void
.end method

.method private static compareArray([B[BI)Z
    .locals 3
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .line 363
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 364
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 365
    const/4 v1, 0x0

    return v1

    .line 363
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "k":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private computeHash([B[BII)[B
    .locals 6
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "saltOffset"    # I
    .param p4, "saltLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 284
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method private computeHash([B[BII[B)[B
    .locals 19
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "saltOffset"    # I
    .param p4, "saltLen"    # I
    .param p5, "userKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 288
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 290
    .local v2, "mdSha256":Ljava/security/MessageDigest;
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 291
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 292
    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 295
    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 297
    .local v6, "k":[B
    move-object/from16 v7, p0

    iget-boolean v8, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isPdf2:Z

    if-eqz v8, :cond_7

    .line 300
    const-string v8, "SHA-384"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 301
    .local v8, "mdSha384":Ljava/security/MessageDigest;
    const-string v9, "SHA-512"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 303
    .local v9, "mdSha512":Ljava/security/MessageDigest;
    const/4 v10, 0x0

    if-eqz v1, :cond_1

    array-length v11, v1

    goto :goto_0

    :cond_1
    move v11, v10

    .line 304
    .local v11, "userKeyLen":I
    :goto_0
    array-length v12, v0

    add-int/2addr v12, v11

    .line 308
    .local v12, "passAndUserKeyLen":I
    const/4 v13, 0x0

    .line 311
    .local v13, "roundNum":I
    :goto_1
    array-length v14, v6

    add-int/2addr v14, v12

    .line 312
    .local v14, "k1RepLen":I
    mul-int/lit8 v15, v14, 0x40

    new-array v15, v15, [B

    .line 313
    .local v15, "k1":[B
    array-length v3, v0

    invoke-static {v0, v10, v15, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    array-length v3, v0

    array-length v4, v6

    invoke-static {v6, v10, v15, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    if-eqz v1, :cond_2

    .line 316
    array-length v3, v0

    array-length v4, v6

    add-int/2addr v3, v4

    invoke-static {v1, v10, v15, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    :cond_2
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    .line 319
    mul-int v4, v14, v3

    invoke-static {v15, v10, v15, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 323
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    const/16 v4, 0x10

    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    const/16 v0, 0x20

    invoke-static {v6, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v0, 0x1

    invoke-direct {v3, v0, v10, v1}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B[B)V

    move-object v1, v3

    .line 324
    .local v1, "cipher":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    array-length v3, v15

    const/4 v10, 0x0

    invoke-virtual {v1, v15, v10, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v3

    .line 327
    .local v3, "e":[B
    const/16 v16, 0x0

    .line 328
    .local v16, "md":Ljava/security/MessageDigest;
    new-instance v10, Ljava/math/BigInteger;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-direct {v10, v0, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v4, v10

    .line 329
    .local v4, "i":Ljava/math/BigInteger;
    const-wide/16 v17, 0x3

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    .line 330
    .local v10, "remainder":I
    packed-switch v10, :pswitch_data_0

    move-object/from16 v0, v16

    goto :goto_3

    .line 338
    :pswitch_0
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    goto :goto_3

    .line 335
    :pswitch_1
    move-object/from16 v16, v8

    .line 336
    move-object/from16 v0, v16

    goto :goto_3

    .line 332
    :pswitch_2
    move-object/from16 v16, v2

    .line 333
    move-object/from16 v0, v16

    .line 343
    .end local v16    # "md":Ljava/security/MessageDigest;
    .local v0, "md":Ljava/security/MessageDigest;
    :goto_3
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 345
    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    .line 346
    move-object/from16 v17, v0

    .end local v0    # "md":Ljava/security/MessageDigest;
    .local v17, "md":Ljava/security/MessageDigest;
    const/16 v0, 0x3f

    if-le v13, v0, :cond_5

    .line 349
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    .line 350
    .local v0, "condVal":I
    move-object/from16 v16, v1

    .end local v1    # "cipher":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .local v16, "cipher":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    add-int/lit8 v1, v13, -0x20

    if-gt v0, v1, :cond_6

    .line 351
    nop

    .line 356
    .end local v0    # "condVal":I
    .end local v3    # "e":[B
    .end local v4    # "i":Ljava/math/BigInteger;
    .end local v10    # "remainder":I
    .end local v15    # "k1":[B
    .end local v16    # "cipher":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .end local v17    # "md":Ljava/security/MessageDigest;
    array-length v0, v6

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    move-object v0, v6

    goto :goto_4

    :cond_4
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_4
    move-object v6, v0

    goto :goto_5

    .line 346
    .restart local v1    # "cipher":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .restart local v3    # "e":[B
    .restart local v4    # "i":Ljava/math/BigInteger;
    .restart local v10    # "remainder":I
    .restart local v15    # "k1":[B
    .restart local v17    # "md":Ljava/security/MessageDigest;
    :cond_5
    move-object/from16 v16, v1

    .line 354
    .end local v1    # "cipher":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .end local v3    # "e":[B
    .end local v4    # "i":Ljava/math/BigInteger;
    .end local v10    # "remainder":I
    .end local v15    # "k1":[B
    .end local v17    # "md":Ljava/security/MessageDigest;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v1, p5

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 359
    .end local v8    # "mdSha384":Ljava/security/MessageDigest;
    .end local v9    # "mdSha512":Ljava/security/MessageDigest;
    .end local v11    # "userKeyLen":I
    .end local v12    # "passAndUserKeyLen":I
    .end local v13    # "roundNum":I
    .end local v14    # "k1RepLen":I
    :cond_7
    :goto_5
    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ)V
    .locals 21
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "userPassword"    # [B
    .param p3, "ownerPassword"    # [B
    .param p4, "permissions"    # I
    .param p5, "encryptMetadata"    # Z
    .param p6, "embeddedFilesOnly"    # Z

    .line 113
    move-object/from16 v14, p0

    move-object/from16 v1, p2

    move/from16 v15, p5

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->generateOwnerPasswordIfNullOrEmpty([B)[B

    move-result-object v2

    .line 114
    .end local p3    # "ownerPassword":[B
    .local v2, "ownerPassword":[B
    move/from16 v0, p4

    or-int/lit16 v0, v0, -0xf40

    .line 115
    .end local p4    # "permissions":I
    .local v0, "permissions":I
    and-int/lit8 v13, v0, -0x4

    .line 125
    .end local v0    # "permissions":I
    .local v13, "permissions":I
    const/16 v0, 0x7f

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 126
    :try_start_0
    new-array v3, v7, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    move-object v12, v1

    .end local p2    # "userPassword":[B
    .local v1, "userPassword":[B
    goto :goto_0

    .line 186
    .end local v1    # "userPassword":[B
    .restart local p2    # "userPassword":[B
    :catch_0
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v18, v1

    move/from16 v19, v13

    goto/16 :goto_3

    .line 127
    :cond_0
    :try_start_1
    array-length v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-le v3, v0, :cond_1

    .line 128
    :try_start_2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v3

    move-object v12, v1

    .end local p2    # "userPassword":[B
    .restart local v1    # "userPassword":[B
    goto :goto_0

    .line 127
    .end local v1    # "userPassword":[B
    .restart local p2    # "userPassword":[B
    :cond_1
    move-object v12, v1

    .line 130
    .end local p2    # "userPassword":[B
    .local v12, "userPassword":[B
    :goto_0
    :try_start_3
    array-length v1, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-le v1, v0, :cond_2

    .line 131
    :try_start_4
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v0

    move-object/from16 v16, v2

    goto :goto_1

    .line 186
    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v18, v12

    move/from16 v19, v13

    goto/16 :goto_3

    .line 130
    :cond_2
    move-object/from16 v16, v2

    .line 135
    .end local v2    # "ownerPassword":[B
    .local v16, "ownerPassword":[B
    :goto_1
    const/16 v0, 0x10

    :try_start_5
    invoke-static {v0}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV(I)[B

    move-result-object v1

    move-object v8, v1

    .line 136
    .local v8, "userValAndKeySalt":[B
    invoke-static {v0}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV(I)[B

    move-result-object v1

    move-object v11, v1

    .line 138
    .local v11, "ownerValAndKeySalt":[B
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV(I)[B

    move-result-object v1

    iput-object v1, v14, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    .line 139
    iput v9, v14, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKeySize:I

    .line 144
    const/16 v6, 0x8

    invoke-direct {v14, v12, v8, v7, v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII)[B

    move-result-object v1

    .line 145
    .local v1, "hash":[B
    const/16 v5, 0x30

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object v4, v2

    .line 146
    .local v4, "userKey":[B
    invoke-static {v8, v7, v4, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-direct {v14, v12, v8, v6, v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII)[B

    move-result-object v2

    move-object v3, v2

    .line 150
    .end local v1    # "hash":[B
    .local v3, "hash":[B
    new-instance v1, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 151
    .local v1, "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    iget-object v10, v14, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    iget-object v2, v14, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    array-length v2, v2

    invoke-virtual {v1, v10, v7, v2}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v10

    .line 155
    .local v10, "ueKey":[B
    const/16 v17, 0x0

    const/16 v18, 0x8

    move-object/from16 v19, v1

    .end local v1    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .local v19, "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v20, v3

    .end local v3    # "hash":[B
    .local v20, "hash":[B
    move-object v3, v11

    move-object/from16 p2, v4

    .end local v4    # "userKey":[B
    .local p2, "userKey":[B
    move/from16 v4, v17

    move v0, v5

    move/from16 v5, v18

    move/from16 v17, v6

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object v1

    move-object v6, v1

    .line 156
    .end local v20    # "hash":[B
    .local v6, "hash":[B
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 157
    .local v0, "ownerKey":[B
    const/16 v1, 0x10

    invoke-static {v11, v7, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v11

    move-object v9, v6

    .end local v6    # "hash":[B
    .local v9, "hash":[B
    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object v1

    .line 161
    .end local v9    # "hash":[B
    .local v1, "hash":[B
    new-instance v2, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 162
    .end local v19    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .local v2, "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    iget-object v4, v14, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    iget-object v5, v14, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    array-length v5, v5

    invoke-virtual {v2, v4, v7, v5}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v9

    .line 166
    .local v9, "oeKey":[B
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV(I)[B

    move-result-object v4

    .line 167
    .local v4, "permsp":[B
    int-to-byte v5, v13

    aput-byte v5, v4, v7

    .line 168
    shr-int/lit8 v5, v13, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 169
    const/4 v5, 0x2

    shr-int/lit8 v6, v13, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 170
    const/4 v5, 0x3

    shr-int/lit8 v6, v13, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 171
    const/4 v5, 0x4

    const/4 v6, -0x1

    aput-byte v6, v4, v5

    .line 172
    const/4 v5, 0x5

    aput-byte v6, v4, v5

    .line 173
    const/4 v5, 0x6

    aput-byte v6, v4, v5

    .line 174
    const/4 v5, 0x7

    aput-byte v6, v4, v5

    .line 175
    if-eqz v15, :cond_3

    const/16 v5, 0x54

    goto :goto_2

    :cond_3
    const/16 v5, 0x46

    :goto_2
    aput-byte v5, v4, v17

    .line 176
    const/16 v5, 0x9

    const/16 v6, 0x61

    aput-byte v6, v4, v5

    .line 177
    const/16 v5, 0xa

    const/16 v6, 0x64

    aput-byte v6, v4, v5

    .line 178
    const/16 v5, 0xb

    const/16 v6, 0x62

    aput-byte v6, v4, v5

    .line 179
    new-instance v5, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    iget-object v6, v14, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    invoke-direct {v5, v3, v6}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    move-object v2, v5

    .line 180
    array-length v3, v4

    invoke-virtual {v2, v4, v7, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v3

    move-object v5, v11

    .end local v11    # "ownerValAndKeySalt":[B
    .local v5, "ownerValAndKeySalt":[B
    move-object v11, v3

    .line 182
    .local v11, "aes256Perms":[B
    int-to-long v6, v13

    iput-wide v6, v14, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->permissions:J

    .line 183
    iput-boolean v15, v14, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->encryptMetadata:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 184
    move-object/from16 v3, p1

    move-object/from16 v6, p2

    .end local p2    # "userKey":[B
    .local v6, "userKey":[B
    :try_start_6
    invoke-virtual {v14, v3, v6, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->setStandardHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 185
    move-object/from16 v7, p0

    move-object/from16 v17, v8

    .end local v8    # "userValAndKeySalt":[B
    .local v17, "userValAndKeySalt":[B
    move-object/from16 v8, p1

    move-object/from16 v18, v12

    .end local v12    # "userPassword":[B
    .local v18, "userPassword":[B
    move/from16 v12, p5

    move/from16 v19, v13

    .end local v13    # "permissions":I
    .local v19, "permissions":I
    move/from16 v13, p6

    :try_start_7
    invoke-direct/range {v7 .. v13}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->setAES256DicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B[BZZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 188
    .end local v0    # "ownerKey":[B
    .end local v1    # "hash":[B
    .end local v2    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .end local v4    # "permsp":[B
    .end local v5    # "ownerValAndKeySalt":[B
    .end local v6    # "userKey":[B
    .end local v9    # "oeKey":[B
    .end local v10    # "ueKey":[B
    .end local v11    # "aes256Perms":[B
    .end local v17    # "userValAndKeySalt":[B
    nop

    .line 189
    return-void

    .line 186
    :catch_2
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_3

    .end local v18    # "userPassword":[B
    .end local v19    # "permissions":I
    .restart local v12    # "userPassword":[B
    .restart local v13    # "permissions":I
    :catch_3
    move-exception v0

    move-object/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v2, v16

    .end local v12    # "userPassword":[B
    .end local v13    # "permissions":I
    .restart local v18    # "userPassword":[B
    .restart local v19    # "permissions":I
    goto :goto_3

    .end local v18    # "userPassword":[B
    .end local v19    # "permissions":I
    .restart local v12    # "userPassword":[B
    .restart local v13    # "permissions":I
    :catch_4
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v2, v16

    .end local v12    # "userPassword":[B
    .end local v13    # "permissions":I
    .restart local v18    # "userPassword":[B
    .restart local v19    # "permissions":I
    goto :goto_3

    .end local v16    # "ownerPassword":[B
    .end local v18    # "userPassword":[B
    .end local v19    # "permissions":I
    .local v2, "ownerPassword":[B
    .restart local v12    # "userPassword":[B
    .restart local v13    # "permissions":I
    :catch_5
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v18, v12

    move/from16 v19, v13

    .end local v12    # "userPassword":[B
    .end local v13    # "permissions":I
    .restart local v18    # "userPassword":[B
    .restart local v19    # "permissions":I
    goto :goto_3

    .end local v18    # "userPassword":[B
    .end local v19    # "permissions":I
    .restart local v13    # "permissions":I
    .local p2, "userPassword":[B
    :catch_6
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v19, v13

    move-object/from16 v18, v1

    .line 187
    .end local v13    # "permissions":I
    .end local p2    # "userPassword":[B
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v18    # "userPassword":[B
    .restart local v19    # "permissions":I
    :goto_3
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "PdfEncryption exception."

    invoke-direct {v1, v4, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B)V
    .locals 20
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "password"    # [B

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    .line 224
    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 225
    :try_start_0
    new-array v2, v0, [B

    move-object v1, v2

    move-object v9, v1

    .end local p2    # "password":[B
    .local v1, "password":[B
    goto :goto_0

    .line 226
    .end local v1    # "password":[B
    .restart local p2    # "password":[B
    :cond_0
    array-length v2, v1

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    .line 227
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/itextpdf/kernel/crypto/BadPasswordException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object v1, v2

    move-object v9, v1

    .end local p2    # "password":[B
    .restart local v1    # "password":[B
    goto :goto_0

    .line 226
    .end local v1    # "password":[B
    .restart local p2    # "password":[B
    :cond_1
    move-object v9, v1

    .line 230
    .end local p2    # "password":[B
    .local v9, "password":[B
    :goto_0
    :try_start_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iput-boolean v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isPdf2:Z

    .line 232
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v1

    move-object v11, v1

    .line 233
    .local v11, "oValue":[B
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v1

    move-object v12, v1

    .line 234
    .local v12, "uValue":[B
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OE:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v1

    move-object v13, v1

    .line 235
    .local v13, "oeValue":[B
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->UE:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v1

    move-object v14, v1

    .line 236
    .local v14, "ueValue":[B
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v1

    move-object v15, v1

    .line 237
    .local v15, "perms":[B
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-object/from16 v16, v1

    .line 239
    .local v16, "pValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->permissions:J

    .line 243
    const/16 v4, 0x20

    const/16 v5, 0x8

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object v1

    move-object v6, v1

    .line 244
    .local v6, "hash":[B
    const/16 v5, 0x20

    invoke-static {v6, v11, v5}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->compareArray([B[BI)Z

    move-result v1

    iput-boolean v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->usedOwnerPassword:Z

    .line 246
    iget-boolean v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->usedOwnerPassword:Z
    :try_end_1
    .catch Lcom/itextpdf/kernel/crypto/BadPasswordException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const-string v4, "Bad user password. Password is not provided or wrong password provided. Correct password should be passed to PdfReader constructor with properties. See ReaderProperties#setPassword() method."

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 247
    const/16 v17, 0x28

    const/16 v18, 0x8

    move-object/from16 v1, p0

    move-object v2, v9

    move v10, v3

    move-object v3, v11

    move-object/from16 v19, v4

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v17, v6

    .end local v6    # "hash":[B
    .local v17, "hash":[B
    move-object v6, v12

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object v1

    .line 248
    .end local v17    # "hash":[B
    .local v1, "hash":[B
    new-instance v2, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    invoke-direct {v2, v0, v1}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 249
    .local v2, "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    array-length v3, v13

    invoke-virtual {v2, v13, v0, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v3

    iput-object v3, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B
    :try_end_2
    .catch Lcom/itextpdf/kernel/crypto/BadPasswordException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 250
    .end local v2    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    move-object v2, v1

    const/16 v1, 0x20

    goto :goto_2

    .line 278
    .end local v1    # "hash":[B
    .end local v11    # "oValue":[B
    .end local v12    # "uValue":[B
    .end local v13    # "oeValue":[B
    .end local v14    # "ueValue":[B
    .end local v15    # "perms":[B
    .end local v16    # "pValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :catch_0
    move-exception v0

    move-object v10, v9

    goto/16 :goto_3

    .line 276
    :catch_1
    move-exception v0

    move-object v10, v9

    goto/16 :goto_4

    .line 251
    .restart local v6    # "hash":[B
    .restart local v11    # "oValue":[B
    .restart local v12    # "uValue":[B
    .restart local v13    # "oeValue":[B
    .restart local v14    # "ueValue":[B
    .restart local v15    # "perms":[B
    .restart local v16    # "pValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_3
    move v10, v3

    move-object/from16 v19, v4

    move-object/from16 v17, v6

    .end local v6    # "hash":[B
    .restart local v17    # "hash":[B
    const/16 v1, 0x20

    :try_start_3
    invoke-direct {v7, v9, v12, v1, v10}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII)[B

    move-result-object v2

    .line 252
    .end local v17    # "hash":[B
    .local v2, "hash":[B
    invoke-static {v2, v12, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->compareArray([B[BI)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 255
    const/16 v3, 0x28

    invoke-direct {v7, v9, v12, v3, v10}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII)[B

    move-result-object v3

    move-object v2, v3

    .line 256
    new-instance v3, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    invoke-direct {v3, v0, v2}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 257
    .local v3, "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    array-length v4, v14

    invoke-virtual {v3, v14, v0, v4}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v4

    iput-object v4, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    .line 259
    .end local v3    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    :goto_2
    iput v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKeySize:I

    .line 261
    new-instance v1, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    iget-object v3, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    invoke-direct {v1, v0, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 262
    .local v1, "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    array-length v3, v15

    invoke-virtual {v1, v15, v0, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v3

    .line 263
    .local v3, "decPerms":[B
    const/16 v4, 0x9

    aget-byte v4, v3, v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_7

    const/16 v4, 0xa

    aget-byte v4, v3, v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_7

    const/16 v4, 0xb

    aget-byte v4, v3, v4

    const/16 v5, 0x62

    if-ne v4, v5, :cond_7

    .line 265
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v10

    or-int/2addr v4, v6

    const/4 v6, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    const/4 v6, 0x3

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v4, v6

    .line 267
    .local v4, "permissionsDecoded":I
    aget-byte v6, v3, v10

    const/16 v10, 0x54

    if-ne v6, v10, :cond_4

    move v0, v5

    .line 269
    .local v0, "encryptMetadata":Z
    :cond_4
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_3
    .catch Lcom/itextpdf/kernel/crypto/BadPasswordException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 270
    .local v5, "encryptMetadataEntry":Ljava/lang/Boolean;
    move-object v6, v1

    move-object/from16 p2, v2

    .end local v1    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .end local v2    # "hash":[B
    .local v6, "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .local p2, "hash":[B
    int-to-long v1, v4

    move-object v10, v9

    .end local v9    # "password":[B
    .local v10, "password":[B
    :try_start_4
    iget-wide v8, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->permissions:J

    cmp-long v1, v1, v8

    if-nez v1, :cond_5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 271
    :cond_5
    const-class v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 272
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Encryption dictionary entries P and EncryptMetadata have value that does not correspond to encrypted values in Perms key."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 274
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_6
    int-to-long v1, v4

    iput-wide v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->permissions:J

    .line 275
    iput-boolean v0, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->encryptMetadata:Z

    .line 280
    .end local v0    # "encryptMetadata":Z
    .end local v3    # "decPerms":[B
    .end local v4    # "permissionsDecoded":I
    .end local v5    # "encryptMetadataEntry":Ljava/lang/Boolean;
    .end local v6    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .end local v11    # "oValue":[B
    .end local v12    # "uValue":[B
    .end local v13    # "oeValue":[B
    .end local v14    # "ueValue":[B
    .end local v15    # "perms":[B
    .end local v16    # "pValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local p2    # "hash":[B
    nop

    .line 281
    return-void

    .line 263
    .end local v10    # "password":[B
    .local v1, "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .restart local v2    # "hash":[B
    .restart local v3    # "decPerms":[B
    .restart local v9    # "password":[B
    .restart local v11    # "oValue":[B
    .restart local v12    # "uValue":[B
    .restart local v13    # "oeValue":[B
    .restart local v14    # "ueValue":[B
    .restart local v15    # "perms":[B
    .restart local v16    # "pValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_7
    move-object v6, v1

    move-object/from16 p2, v2

    move-object v10, v9

    .line 264
    .end local v1    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .end local v2    # "hash":[B
    .end local v9    # "password":[B
    .restart local v6    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .restart local v10    # "password":[B
    .restart local p2    # "hash":[B
    new-instance v0, Lcom/itextpdf/kernel/crypto/BadPasswordException;

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/crypto/BadPasswordException;-><init>(Ljava/lang/String;)V

    .end local v10    # "password":[B
    .end local p1    # "encryptionDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    throw v0

    .line 253
    .end local v3    # "decPerms":[B
    .end local v6    # "ac":Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;
    .end local p2    # "hash":[B
    .restart local v2    # "hash":[B
    .restart local v9    # "password":[B
    .restart local p1    # "encryptionDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_8
    move-object v10, v9

    move-object/from16 v1, v19

    .end local v9    # "password":[B
    .restart local v10    # "password":[B
    new-instance v0, Lcom/itextpdf/kernel/crypto/BadPasswordException;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/crypto/BadPasswordException;-><init>(Ljava/lang/String;)V

    .end local v10    # "password":[B
    .end local p1    # "encryptionDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    throw v0
    :try_end_4
    .catch Lcom/itextpdf/kernel/crypto/BadPasswordException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 278
    .end local v2    # "hash":[B
    .end local v11    # "oValue":[B
    .end local v12    # "uValue":[B
    .end local v13    # "oeValue":[B
    .end local v14    # "ueValue":[B
    .end local v15    # "perms":[B
    .end local v16    # "pValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .restart local v10    # "password":[B
    .restart local p1    # "encryptionDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :catch_2
    move-exception v0

    goto :goto_3

    .line 276
    :catch_3
    move-exception v0

    goto :goto_4

    .line 278
    .end local v10    # "password":[B
    .restart local v9    # "password":[B
    :catch_4
    move-exception v0

    move-object v10, v9

    .end local v9    # "password":[B
    .restart local v10    # "password":[B
    goto :goto_3

    .line 276
    .end local v10    # "password":[B
    .restart local v9    # "password":[B
    :catch_5
    move-exception v0

    move-object v10, v9

    .end local v9    # "password":[B
    .restart local v10    # "password":[B
    goto :goto_4

    .line 278
    .end local v10    # "password":[B
    .local p2, "password":[B
    :catch_6
    move-exception v0

    move-object v10, v1

    .line 279
    .end local p2    # "password":[B
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v10    # "password":[B
    :goto_3
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 276
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v10    # "password":[B
    .restart local p2    # "password":[B
    :catch_7
    move-exception v0

    move-object v10, v1

    .line 277
    .end local p2    # "password":[B
    .local v0, "ex":Lcom/itextpdf/kernel/crypto/BadPasswordException;
    .restart local v10    # "password":[B
    :goto_4
    throw v0
.end method

.method private setAES256DicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B[BZZ)V
    .locals 7
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "oeKey"    # [B
    .param p3, "ueKey"    # [B
    .param p4, "aes256Perms"    # [B
    .param p5, "encryptMetadata"    # Z
    .param p6, "embeddedFilesOnly"    # Z

    .line 193
    const/4 v0, 0x5

    .line 194
    .local v0, "vAes256":I
    const/4 v1, 0x5

    .line 195
    .local v1, "rAes256":I
    const/4 v2, 0x6

    .line 196
    .local v2, "rAes256Pdf2":I
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->OE:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {p2}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 197
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->UE:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {p3}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 198
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {p4}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 199
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isPdf2:Z

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 200
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v4, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 201
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 202
    .local v3, "stdcf":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 203
    if-nez p5, :cond_1

    .line 204
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 206
    :cond_1
    if-eqz p6, :cond_2

    .line 207
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->AuthEvent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->EFOpen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 208
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->EFF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 209
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->StrF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 210
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->StmF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 212
    :cond_2
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->AuthEvent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->DocOpen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 213
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->StrF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 214
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->StmF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 216
    :goto_1
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->AESV3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 217
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 218
    .local v4, "cf":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 219
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 220
    return-void
.end method


# virtual methods
.method public getDecryptor()Lcom/itextpdf/kernel/crypto/IDecryptor;
    .locals 4

    .line 108
    new-instance v0, Lcom/itextpdf/kernel/crypto/AesDecryptor;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    iget v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKeySize:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/itextpdf/kernel/crypto/AesDecryptor;-><init>([BII)V

    return-object v0
.end method

.method public getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 103
    new-instance v0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    iget v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKeySize:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;-><init>(Ljava/io/OutputStream;[BII)V

    return-object v0
.end method

.method public isEncryptMetadata()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->encryptMetadata:Z

    return v0
.end method

.method public setHashKeyForNextObject(II)V
    .locals 0
    .param p1, "objNumber"    # I
    .param p2, "objGeneration"    # I

    .line 99
    return-void
.end method
