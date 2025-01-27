.class public Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;
.super Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;
.source "StandardHandlerUsingStandard128.java"


# static fields
.field private static final serialVersionUID:J = 0x63b5b5e0dc1368bfL


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V
    .locals 0
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "userPassword"    # [B
    .param p3, "ownerPassword"    # [B
    .param p4, "permissions"    # I
    .param p5, "encryptMetadata"    # Z
    .param p6, "embeddedFilesOnly"    # Z
    .param p7, "documentId"    # [B

    .line 57
    invoke-direct/range {p0 .. p7}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V
    .locals 0
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "password"    # [B
    .param p3, "documentId"    # [B
    .param p4, "encryptMetadata"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    .line 62
    return-void
.end method


# virtual methods
.method protected calculatePermissions(I)V
    .locals 2
    .param p1, "permissions"    # I

    .line 66
    or-int/lit16 p1, p1, -0xf40

    .line 67
    and-int/lit8 p1, p1, -0x4

    .line 68
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    .line 69
    return-void
.end method

.method protected computeGlobalEncryptionKey([B[BZ)V
    .locals 7
    .param p1, "userPad"    # [B
    .param p2, "ownerKey"    # [B
    .param p3, "encryptMetadata"    # Z

    .line 93
    iget v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->keyLength:I

    const/16 v1, 0x8

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    .line 96
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 97
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 98
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 101
    .local v2, "ext":[B
    iget-wide v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 102
    iget-wide v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    shr-long/2addr v5, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    .line 103
    iget-wide v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    const/16 v1, 0x10

    shr-long/2addr v5, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    .line 104
    iget-wide v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    const/16 v1, 0x18

    shr-long/2addr v5, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    .line 105
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v2, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 106
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->documentId:[B

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->documentId:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    :cond_0
    if-nez p3, :cond_1

    .line 109
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    sget-object v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->metadataPad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 112
    .local v0, "digest":[B
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length v3, v3

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    const/16 v3, 0x32

    if-ge v1, v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    iget-object v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "k":I
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length v3, v3

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-void
.end method

.method protected computeOwnerKey([B[B)[B
    .locals 8
    .param p1, "userPad"    # [B
    .param p2, "ownerPad"    # [B

    .line 73
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 74
    .local v1, "ownerKey":[B
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 75
    .local v2, "digest":[B
    iget v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->keyLength:I

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 77
    .local v3, "mkey":[B
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    const/16 v5, 0x32

    const/4 v6, 0x0

    if-ge v4, v5, :cond_0

    .line 78
    iget-object v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    array-length v7, v3

    invoke-virtual {v5, v2, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 79
    iget-object v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    array-length v7, v3

    invoke-static {v5, v6, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v4    # "k":I
    :cond_0
    invoke-static {p1, v6, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v4, 0x14

    if-ge v0, v4, :cond_2

    .line 83
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 84
    aget-byte v5, v2, v4

    xor-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 85
    .end local v4    # "j":I
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 86
    iget-object v4, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([B)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method protected computeUserKey()[B
    .locals 7

    .line 123
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 124
    .local v1, "userKey":[B
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    sget-object v3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->pad:[B

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 125
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->documentId:[B

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 126
    .local v2, "digest":[B
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    const/16 v5, 0x10

    .local v5, "k":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 128
    aput-byte v3, v1, v5

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    .end local v5    # "k":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v5, 0x14

    if-ge v0, v5, :cond_2

    .line 130
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget-object v6, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 131
    iget-object v6, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    aget-byte v6, v6, v5

    xor-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 130
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 132
    .end local v5    # "j":I
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    iget-object v6, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length v6, v6

    invoke-virtual {v5, v2, v3, v6}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 133
    iget-object v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-virtual {v5, v1, v3, v4}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([BII)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method protected isValidPassword([B[B)Z
    .locals 1
    .param p1, "uValue"    # [B
    .param p2, "userKey"    # [B

    .line 168
    const/16 v0, 0x10

    invoke-static {p1, p2, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->equalsArray([B[BI)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected setSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V
    .locals 4
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "encryptMetadata"    # Z
    .param p3, "embeddedFilesOnly"    # Z

    .line 140
    if-eqz p2, :cond_0

    .line 141
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 142
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 144
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 145
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 146
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 147
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 148
    .local v0, "stdcf":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 149
    if-eqz p3, :cond_1

    .line 150
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AuthEvent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->EFOpen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 151
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->EFF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 152
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StrF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 153
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StmF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 155
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AuthEvent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DocOpen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 156
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StrF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 157
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StmF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 159
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->V2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 160
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 161
    .local v1, "cf":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 162
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 164
    .end local v0    # "stdcf":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "cf":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_1
    return-void
.end method
