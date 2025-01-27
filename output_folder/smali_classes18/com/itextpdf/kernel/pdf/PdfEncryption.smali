.class public Lcom/itextpdf/kernel/pdf/PdfEncryption;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfEncryption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field private static final AES_128:I = 0x4

.field private static final AES_256:I = 0x5

.field private static final STANDARD_ENCRYPTION_128:I = 0x3

.field private static final STANDARD_ENCRYPTION_40:I = 0x2

.field private static seq:J = 0x0L

.field private static final serialVersionUID:J = -0x5f44e561ef46e2d4L


# instance fields
.field private cryptoMode:I

.field private documentId:[B

.field private embeddedFilesOnly:Z

.field private encryptMetadata:Z

.field private permissions:Ljava/lang/Long;

.field private securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/itextpdf/io/util/SystemUtil;->getTimeBasedSeed()J

    move-result-wide v0

    sput-wide v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->seq:J

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;)V
    .locals 18
    .param p1, "pdfDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "certificateKey"    # Ljava/security/Key;
    .param p3, "certificate"    # Ljava/security/cert/Certificate;
    .param p4, "certificateKeyProvider"    # Ljava/lang/String;
    .param p5, "externalDecryptionProcess"    # Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    .line 257
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setForbidRelease()V

    .line 259
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->readAndSetCryptoModeForPubSecHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result v1

    .line 260
    .local v1, "revision":I
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 274
    :pswitch_0
    new-instance v9, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes256;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v8, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    move-object v2, v9

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes256;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V

    iput-object v9, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 270
    :pswitch_1
    new-instance v2, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes128;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v3, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    move-object v10, v2

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V

    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 272
    goto :goto_0

    .line 266
    :pswitch_2
    new-instance v2, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard128;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v10, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    move-object v4, v2

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V

    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 268
    goto :goto_0

    .line 262
    :pswitch_3
    new-instance v2, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v3, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    move-object v11, v2

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, v3

    invoke-direct/range {v11 .. v17}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V

    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 264
    nop

    .line 278
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B)V
    .locals 4
    .param p1, "pdfDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "password"    # [B
    .param p3, "documentId"    # [B

    .line 225
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 226
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setForbidRelease()V

    .line 227
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->documentId:[B

    .line 229
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->readAndSetCryptoModeForStdHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result v0

    .line 230
    .local v0, "revision":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 247
    :pswitch_0
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1, v2, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B)V

    .line 248
    .local v1, "aes256Handler":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getPermissions()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 249
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isEncryptMetadata()Z

    move-result v2

    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    .line 250
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 242
    .end local v1    # "aes256Handler":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;
    :pswitch_1
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    .line 243
    .local v1, "handlerAes128":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;->getPermissions()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 244
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 245
    goto :goto_0

    .line 237
    .end local v1    # "handlerAes128":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;
    :pswitch_2
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    .line 238
    .local v1, "handlerStd128":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->getPermissions()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 239
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 240
    goto :goto_0

    .line 232
    .end local v1    # "handlerStd128":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;
    :pswitch_3
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    .line 233
    .local v1, "handlerStd40":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getPermissions()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 234
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 235
    nop

    .line 253
    .end local v1    # "handlerStd40":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([B[BII[BLcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 20
    .param p1, "userPassword"    # [B
    .param p2, "ownerPassword"    # [B
    .param p3, "permissions"    # I
    .param p4, "encryptionType"    # I
    .param p5, "documentId"    # [B
    .param p6, "version"    # Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v9, p6

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 132
    move-object/from16 v15, p5

    iput-object v15, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->documentId:[B

    .line 133
    if-eqz v9, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 134
    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->fixAccessibilityPermissionPdf20(I)I

    move-result v1

    move/from16 v18, v1

    .end local p3    # "permissions":I
    .local v1, "permissions":I
    goto :goto_0

    .line 133
    .end local v1    # "permissions":I
    .restart local p3    # "permissions":I
    :cond_0
    move/from16 v1, p3

    .line 136
    move/from16 v18, v1

    .end local p3    # "permissions":I
    .local v18, "permissions":I
    :goto_0
    move/from16 v14, p4

    invoke-direct {v0, v14}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(I)I

    move-result v19

    .line 137
    .local v19, "revision":I
    packed-switch v19, :pswitch_data_0

    goto/16 :goto_1

    .line 157
    :pswitch_0
    new-instance v10, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v6, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v7, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v1, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, v18

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZLcom/itextpdf/kernel/pdf/PdfVersion;)V

    .line 159
    .local v1, "handlerAes256":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getPermissions()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 160
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto/16 :goto_1

    .line 151
    .end local v1    # "handlerAes256":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;
    :pswitch_1
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v3, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v10, v1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, v18

    move v15, v2

    move/from16 v16, v3

    move-object/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    .line 153
    .local v1, "handlerAes128":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;->getPermissions()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 154
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 155
    goto :goto_1

    .line 145
    .end local v1    # "handlerAes128":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;
    :pswitch_2
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v15, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v10, v1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, v18

    move/from16 v16, v2

    move-object/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    .line 147
    .local v1, "handlerStd128":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->getPermissions()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 148
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 149
    goto :goto_1

    .line 139
    .end local v1    # "handlerStd128":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;
    :pswitch_3
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v15, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v10, v1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, v18

    move/from16 v16, v2

    move-object/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    .line 141
    .local v1, "handlerStd40":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getPermissions()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 142
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 143
    nop

    .line 163
    .end local v1    # "handlerStd40":Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([Ljava/security/cert/Certificate;[IILcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 12
    .param p1, "certs"    # [Ljava/security/cert/Certificate;
    .param p2, "permissions"    # [I
    .param p3, "encryptionType"    # I
    .param p4, "version"    # Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 201
    move-object v0, p0

    move-object v7, p2

    move-object/from16 v8, p4

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 202
    if-eqz v8, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v7

    if-ge v1, v2, :cond_0

    .line 204
    aget v2, v7, v1

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->fixAccessibilityPermissionPdf20(I)I

    move-result v2

    aput v2, v7, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_0
    move v9, p3

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(I)I

    move-result v10

    .line 208
    .local v10, "revision":I
    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 219
    :pswitch_0
    new-instance v11, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes256;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v5, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v6, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes256;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V

    iput-object v11, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_1

    .line 216
    :pswitch_1
    new-instance v11, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v5, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v6, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V

    iput-object v11, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 217
    goto :goto_1

    .line 213
    :pswitch_2
    new-instance v11, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v5, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v6, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V

    iput-object v11, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 214
    goto :goto_1

    .line 210
    :pswitch_3
    new-instance v11, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v5, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v6, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V

    iput-object v11, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    .line 211
    nop

    .line 222
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createInfoId([BZ)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p0, "id"    # [B
    .param p1, "modified"    # Z

    .line 304
    if-eqz p1, :cond_0

    .line 305
    invoke-static {}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->generateNewDocumentId()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->createInfoId([B[B)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0

    .line 307
    :cond_0
    invoke-static {p0, p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->createInfoId([B[B)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public static createInfoId([B[B)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 4
    .param p0, "firstId"    # [B
    .param p1, "secondId"    # [B

    .line 321
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 322
    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->padByteArrayTo16([B)[B

    move-result-object p0

    .line 325
    :cond_0
    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 326
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->padByteArrayTo16([B)[B

    move-result-object p1

    .line 329
    :cond_1
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 330
    .local v0, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 332
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 333
    aget-byte v3, p0, v1

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "k":I
    :cond_2
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 335
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 336
    aget-byte v3, p1, v2

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 337
    .end local v2    # "k":I
    :cond_3
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 339
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    return-object v1
.end method

.method private fixAccessibilityPermissionPdf20(I)I
    .locals 1
    .param p1, "permissions"    # I

    .line 625
    or-int/lit16 v0, p1, 0x200

    return v0
.end method

.method public static generateNewDocumentId()[B
    .locals 10

    .line 283
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .local v0, "md5":Ljava/security/MessageDigest;
    nop

    .line 287
    invoke-static {}, Lcom/itextpdf/io/util/SystemUtil;->getTimeBasedSeed()J

    move-result-wide v1

    .line 288
    .local v1, "time":J
    invoke-static {}, Lcom/itextpdf/io/util/SystemUtil;->getFreeMemory()J

    move-result-wide v3

    .line 289
    .local v3, "mem":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/itextpdf/kernel/pdf/PdfEncryption;->seq:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    sput-wide v8, Lcom/itextpdf/kernel/pdf/PdfEncryption;->seq:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "s":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    return-object v6

    .line 284
    .end local v0    # "md5":Ljava/security/MessageDigest;
    .end local v1    # "time":J
    .end local v3    # "mem":J
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static padByteArrayTo16([B)[B
    .locals 3
    .param p0, "documentId"    # [B

    .line 343
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 345
    .local v0, "paddingBytes":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method private readAndSetCryptoModeForPubSecHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 7
    .param p1, "encDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, "length":I
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    .line 570
    .local v1, "vValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v1, :cond_8

    .line 572
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 573
    .local v2, "v":I
    packed-switch v2, :pswitch_data_0

    .line 613
    :pswitch_0
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Unknown encryption type V == {0}."

    invoke-direct {v3, v4, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v3

    .line 589
    :pswitch_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 590
    .local v3, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_4

    .line 592
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultCryptFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 593
    if-eqz v3, :cond_3

    .line 595
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->V2:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    const/4 v4, 0x1

    .line 597
    .local v4, "cryptoMode":I
    const/16 v0, 0x80

    goto :goto_0

    .line 598
    .end local v4    # "cryptoMode":I
    :cond_0
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->AESV2:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    const/4 v4, 0x2

    .line 600
    .restart local v4    # "cryptoMode":I
    const/16 v0, 0x80

    goto :goto_0

    .line 601
    .end local v4    # "cryptoMode":I
    :cond_1
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->AESV3:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    const/4 v4, 0x3

    .line 603
    .restart local v4    # "cryptoMode":I
    const/16 v0, 0x100

    .line 607
    :goto_0
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v5

    .line 608
    .local v5, "em":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v6

    if-nez v6, :cond_7

    .line 609
    or-int/lit8 v4, v4, 0x8

    goto :goto_1

    .line 605
    .end local v4    # "cryptoMode":I
    .end local v5    # "em":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    :cond_2
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "No compatible encryption found."

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 594
    :cond_3
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "/DefaultCryptFilter not found (encryption)."

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 591
    :cond_4
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "/CF not found (encryption)"

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 579
    .end local v3    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :pswitch_2
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    .line 580
    .local v3, "lengthValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    const-string v4, "Illegal length value."

    if-eqz v3, :cond_6

    .line 582
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    .line 583
    const/16 v5, 0x80

    if-gt v0, v5, :cond_5

    const/16 v5, 0x28

    if-lt v0, v5, :cond_5

    rem-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_5

    .line 585
    const/4 v4, 0x1

    .line 586
    .restart local v4    # "cryptoMode":I
    goto :goto_1

    .line 584
    .end local v4    # "cryptoMode":I
    :cond_5
    new-instance v5, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 581
    :cond_6
    new-instance v5, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 575
    .end local v3    # "lengthValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :pswitch_3
    const/4 v4, 0x0

    .line 576
    .restart local v4    # "cryptoMode":I
    const/16 v0, 0x28

    .line 577
    nop

    .line 615
    :cond_7
    :goto_1
    invoke-direct {p0, v4, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(II)I

    move-result v3

    return v3

    .line 571
    .end local v2    # "v":I
    .end local v4    # "cryptoMode":I
    :cond_8
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Illegal V value."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private readAndSetCryptoModeForStdHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 7
    .param p1, "encDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 511
    const/4 v0, 0x0

    .line 513
    .local v0, "length":I
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    .line 514
    .local v1, "rValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v1, :cond_8

    .line 516
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 517
    .local v2, "revision":I
    packed-switch v2, :pswitch_data_0

    .line 558
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Unknown encryption type R == {0}."

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v3

    throw v3

    .line 551
    :pswitch_0
    const/4 v3, 0x3

    .line 552
    .local v3, "cryptoMode":I
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v4

    .line 553
    .local v4, "em5":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v5

    if-nez v5, :cond_7

    .line 554
    or-int/lit8 v3, v3, 0x8

    goto/16 :goto_1

    .line 531
    .end local v3    # "cryptoMode":I
    .end local v4    # "em5":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    :pswitch_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 532
    .local v3, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_4

    .line 534
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 535
    if-eqz v3, :cond_3

    .line 537
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->V2:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    const/4 v4, 0x1

    .local v4, "cryptoMode":I
    goto :goto_0

    .line 539
    .end local v4    # "cryptoMode":I
    :cond_0
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->AESV2:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    const/4 v4, 0x2

    .line 544
    .restart local v4    # "cryptoMode":I
    :goto_0
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v5

    .line 545
    .local v5, "em":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 546
    or-int/lit8 v4, v4, 0x8

    move v3, v4

    goto :goto_1

    .line 561
    .end local v3    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "em":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    :cond_1
    move v3, v4

    goto :goto_1

    .line 542
    .end local v4    # "cryptoMode":I
    .restart local v3    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "No compatible encryption found."

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 536
    :cond_3
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "/StdCF not found (encryption)"

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 533
    :cond_4
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "/CF not found (encryption)"

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 522
    .end local v3    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :pswitch_2
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    .line 523
    .local v3, "lengthValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    const-string v4, "Illegal length value."

    if-eqz v3, :cond_6

    .line 525
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    .line 526
    const/16 v5, 0x80

    if-gt v0, v5, :cond_5

    const/16 v5, 0x28

    if-lt v0, v5, :cond_5

    rem-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_5

    .line 528
    const/4 v4, 0x1

    .line 529
    .restart local v4    # "cryptoMode":I
    move v3, v4

    goto :goto_1

    .line 527
    .end local v4    # "cryptoMode":I
    :cond_5
    new-instance v5, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 524
    :cond_6
    new-instance v5, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 519
    .end local v3    # "lengthValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :pswitch_3
    const/4 v3, 0x0

    .line 520
    .local v3, "cryptoMode":I
    nop

    .line 561
    :cond_7
    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(II)I

    move-result v2

    .line 562
    return v2

    .line 515
    .end local v2    # "revision":I
    .end local v3    # "cryptoMode":I
    :cond_8
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Illegal R value."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setCryptoMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(II)I

    move-result v0

    return v0
.end method

.method private setCryptoMode(II)I
    .locals 4
    .param p1, "mode"    # I
    .param p2, "length"    # I

    .line 475
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->cryptoMode:I

    .line 476
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    .line 477
    and-int/lit8 v0, p1, 0x18

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 478
    and-int/lit8 p1, p1, 0x7

    .line 479
    const/16 v0, 0x80

    packed-switch p1, :pswitch_data_0

    .line 504
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "No valid encryption mode."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :pswitch_0
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    .line 501
    const/4 v0, 0x5

    .line 502
    .local v0, "revision":I
    goto :goto_3

    .line 496
    .end local v0    # "revision":I
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    .line 497
    const/4 v0, 0x4

    .line 498
    .restart local v0    # "revision":I
    goto :goto_3

    .line 487
    .end local v0    # "revision":I
    :pswitch_2
    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 488
    if-lez p2, :cond_2

    .line 489
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    goto :goto_2

    .line 491
    :cond_2
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    .line 493
    :goto_2
    const/4 v0, 0x3

    .line 494
    .restart local v0    # "revision":I
    goto :goto_3

    .line 481
    .end local v0    # "revision":I
    :pswitch_3
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    .line 482
    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 483
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    .line 484
    const/4 v0, 0x2

    .line 485
    .restart local v0    # "revision":I
    nop

    .line 506
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setKeyLength(I)V
    .locals 3
    .param p1, "keyLength"    # I

    .line 464
    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 467
    :cond_0
    return-void
.end method


# virtual methods
.method public computeUserPassword([B)[B
    .locals 3
    .param p1, "ownerPassword"    # [B

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "userPassword":[B
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    instance-of v2, v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;

    if-eqz v2, :cond_0

    .line 440
    check-cast v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeUserPassword([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B

    move-result-object v0

    .line 442
    :cond_0
    return-object v0
.end method

.method public decryptByteArray([B)[B
    .locals 4
    .param p1, "b"    # [B

    .line 409
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 410
    .local v0, "ba":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->getDecryptor()Lcom/itextpdf/kernel/crypto/IDecryptor;

    move-result-object v1

    .line 411
    .local v1, "dec":Lcom/itextpdf/kernel/crypto/IDecryptor;
    const/4 v2, 0x0

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lcom/itextpdf/kernel/crypto/IDecryptor;->update([BII)[B

    move-result-object v2

    .line 412
    .local v2, "b2":[B
    if-eqz v2, :cond_0

    .line 413
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 414
    :cond_0
    invoke-interface {v1}, Lcom/itextpdf/kernel/crypto/IDecryptor;->finish()[B

    move-result-object v3

    move-object v2, v3

    .line 415
    if-eqz v2, :cond_1

    .line 416
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 417
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 418
    .end local v0    # "ba":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dec":Lcom/itextpdf/kernel/crypto/IDecryptor;
    .end local v2    # "b2":[B
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encryptByteArray([B)[B
    .locals 5
    .param p1, "b"    # [B

    .line 396
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 397
    .local v0, "ba":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;

    move-result-object v1

    .line 399
    .local v1, "ose":Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    nop

    .line 403
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->finish()V

    .line 404
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 400
    :catch_0
    move-exception v2

    .line 401
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "PdfEncryption exception."

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public flush()V
    .locals 0

    .line 454
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    .line 455
    return-void
.end method

.method public getCryptoMode()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->cryptoMode:I

    return v0
.end method

.method public getDocumentId()[B
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->documentId:[B

    return-object v0
.end method

.method public getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 392
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()Ljava/lang/Long;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    return-object v0
.end method

.method public isEmbeddedFilesOnly()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    return v0
.end method

.method public isMetadataEncrypted()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    return v0
.end method

.method public isOpenedWithFullPermission()Z
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    instance-of v1, v0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 425
    return v2

    .line 426
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;

    if-eqz v1, :cond_1

    .line 427
    check-cast v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;->isUsedOwnerPassword()Z

    move-result v0

    return v0

    .line 429
    :cond_1
    return v2
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public setHashKeyForNextObject(II)V
    .locals 1
    .param p1, "objNumber"    # I
    .param p2, "objGeneration"    # I

    .line 387
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->setHashKeyForNextObject(II)V

    .line 388
    return-void
.end method
