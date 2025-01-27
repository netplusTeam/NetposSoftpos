.class public Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;
.super Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;
.source "StandardHandlerUsingStandard40.java"


# static fields
.field protected static final metadataPad:[B

.field protected static final pad:[B

.field private static final serialVersionUID:J = -0x6e5a9a115d07e99fL


# instance fields
.field protected arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

.field protected documentId:[B

.field protected keyLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->metadataPad:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        -0x41t
        0x4et
        0x5et
        0x4et
        0x75t
        -0x76t
        0x41t
        0x64t
        0x0t
        0x4et
        0x56t
        -0x1t
        -0x6t
        0x1t
        0x8t
        0x2et
        0x2et
        0x0t
        -0x4at
        -0x30t
        0x68t
        0x3et
        -0x80t
        0x2ft
        0xct
        -0x57t
        -0x2t
        0x64t
        0x53t
        0x69t
        0x7at
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V
    .locals 1
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "userPassword"    # [B
    .param p3, "ownerPassword"    # [B
    .param p4, "permissions"    # I
    .param p5, "encryptMetadata"    # Z
    .param p6, "embeddedFilesOnly"    # Z
    .param p7, "documentId"    # [B

    .line 77
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;-><init>()V

    .line 74
    new-instance v0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-direct {v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    .line 78
    invoke-direct/range {p0 .. p7}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V
    .locals 1
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "password"    # [B
    .param p3, "documentId"    # [B
    .param p4, "encryptMetadata"    # Z

    .line 81
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;-><init>()V

    .line 74
    new-instance v0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-direct {v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    .line 83
    return-void
.end method

.method private checkPassword(Z[B[B[B)V
    .locals 4
    .param p1, "encryptMetadata"    # Z
    .param p2, "uValue"    # [B
    .param p3, "oValue"    # [B
    .param p4, "paddedPassword"    # [B

    .line 205
    invoke-virtual {p0, p3, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeOwnerKey([B[B)[B

    move-result-object v0

    .line 206
    .local v0, "userPad":[B
    invoke-virtual {p0, v0, p3, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeGlobalEncryptionKey([B[BZ)V

    .line 207
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeUserKey()[B

    move-result-object v1

    .line 209
    .local v1, "userKey":[B
    invoke-virtual {p0, p2, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->isValidPassword([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {p0, p4, p3, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeGlobalEncryptionKey([B[BZ)V

    .line 212
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeUserKey()[B

    move-result-object v1

    .line 214
    invoke-virtual {p0, p2, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->isValidPassword([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->usedOwnerPassword:Z

    goto :goto_0

    .line 215
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/crypto/BadPasswordException;

    const-string v3, "Bad user password. Password is not provided or wrong password provided. Correct password should be passed to PdfReader constructor with properties. See ReaderProperties#setPassword() method."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/crypto/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_1
    :goto_0
    return-void
.end method

.method private getKeyLength(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 2
    .param p1, "encryptionDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 238
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    .line 239
    .local v0, "keyLength":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    :goto_0
    return v1
.end method

.method private initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V
    .locals 4
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "userPassword"    # [B
    .param p3, "ownerPassword"    # [B
    .param p4, "permissions"    # I
    .param p5, "encryptMetadata"    # Z
    .param p6, "embeddedFilesOnly"    # Z
    .param p7, "documentId"    # [B

    .line 171
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->generateOwnerPasswordIfNullOrEmpty([B)[B

    move-result-object p3

    .line 172
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->calculatePermissions(I)V

    .line 174
    iput-object p7, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->documentId:[B

    .line 175
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getKeyLength(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->keyLength:I

    .line 178
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->padPassword([B)[B

    move-result-object v0

    .line 179
    .local v0, "userPad":[B
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->padPassword([B)[B

    move-result-object v1

    .line 181
    .local v1, "ownerPad":[B
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeOwnerKey([B[B)[B

    move-result-object v2

    .line 182
    .local v2, "ownerKey":[B
    invoke-virtual {p0, v0, v2, p5}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeGlobalEncryptionKey([B[BZ)V

    .line 183
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeUserKey()[B

    move-result-object v3

    .line 185
    .local v3, "userKey":[B
    invoke-virtual {p0, p1, v3, v2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->setStandardHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B)V

    .line 186
    invoke-virtual {p0, p1, p5, p6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->setSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V

    .line 187
    return-void
.end method

.method private initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V
    .locals 5
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "password"    # [B
    .param p3, "documentId"    # [B
    .param p4, "encryptMetadata"    # Z

    .line 190
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v0

    .line 191
    .local v0, "uValue":[B
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v1

    .line 193
    .local v1, "oValue":[B
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 194
    .local v2, "pValue":Lcom/itextpdf/kernel/pdf/PdfNumber;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    .line 196
    iput-object p3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->documentId:[B

    .line 197
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getKeyLength(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result v3

    iput v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->keyLength:I

    .line 198
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->padPassword([B)[B

    move-result-object v3

    .line 199
    .local v3, "paddedPassword":[B
    invoke-direct {p0, p4, v0, v1, v3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->checkPassword(Z[B[B[B)V

    .line 200
    return-void
.end method

.method private padPassword([B)[B
    .locals 6
    .param p1, "password"    # [B

    .line 223
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 224
    .local v1, "userPad":[B
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 225
    sget-object v3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 227
    :cond_0
    array-length v3, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length v3, p1

    if-ge v3, v0, :cond_1

    .line 230
    sget-object v3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    array-length v4, p1

    array-length v5, p1

    sub-int/2addr v0, v5

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected calculatePermissions(I)V
    .locals 2
    .param p1, "permissions"    # I

    .line 115
    or-int/lit8 p1, p1, -0x40

    .line 116
    and-int/lit8 p1, p1, -0x4

    .line 117
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    .line 118
    return-void
.end method

.method protected computeGlobalEncryptionKey([B[BZ)V
    .locals 7
    .param p1, "userPad"    # [B
    .param p2, "ownerKey"    # [B
    .param p3, "encryptMetadata"    # Z

    .line 129
    iget v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->keyLength:I

    const/16 v1, 0x8

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    .line 132
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 133
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 137
    .local v2, "ext":[B
    iget-wide v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 138
    iget-wide v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    shr-long/2addr v5, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    .line 139
    iget-wide v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    const/16 v1, 0x10

    shr-long/2addr v5, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    .line 140
    iget-wide v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    const/16 v1, 0x18

    shr-long/2addr v5, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    .line 141
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v2, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 142
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->documentId:[B

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->documentId:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 144
    :cond_0
    if-nez p3, :cond_1

    .line 145
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    sget-object v1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->metadataPad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 148
    .local v0, "digest":[B
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    array-length v3, v3

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    array-length v3, v3

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    return-void
.end method

.method protected computeOwnerKey([B[B)[B
    .locals 5
    .param p1, "userPad"    # [B
    .param p2, "ownerPad"    # [B

    .line 121
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 122
    .local v0, "ownerKey":[B
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 123
    .local v1, "digest":[B
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v1, v3, v4}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 124
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-virtual {v2, p1, v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([B[B)V

    .line 125
    return-object v0
.end method

.method protected computeUserKey()[B
    .locals 3

    .line 153
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 154
    .local v0, "userKey":[B
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 155
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    sget-object v2, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([B[B)V

    .line 156
    return-object v0
.end method

.method public computeUserPassword([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 7
    .param p1, "ownerPassword"    # [B
    .param p2, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 96
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v0

    .line 97
    .local v0, "ownerKey":[B
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->padPassword([B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeOwnerKey([B[B)[B

    move-result-object v1

    .line 98
    .local v1, "userPad":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 99
    const/4 v3, 0x1

    .line 100
    .local v3, "match":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_1

    .line 101
    add-int v5, v2, v4

    aget-byte v5, v1, v5

    sget-object v6, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    aget-byte v6, v6, v4

    if-eq v5, v6, :cond_0

    .line 102
    const/4 v3, 0x0

    .line 103
    goto :goto_2

    .line 100
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 106
    .end local v4    # "j":I
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 98
    .end local v3    # "match":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .restart local v3    # "match":Z
    :cond_2
    new-array v4, v2, [B

    .line 108
    .local v4, "userPassword":[B
    const/4 v5, 0x0

    invoke-static {v1, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    return-object v4

    .line 111
    .end local v2    # "i":I
    .end local v3    # "match":Z
    .end local v4    # "userPassword":[B
    :cond_3
    return-object v1
.end method

.method public getDecryptor()Lcom/itextpdf/kernel/crypto/IDecryptor;
    .locals 4

    .line 92
    new-instance v0, Lcom/itextpdf/kernel/crypto/StandardDecryptor;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->nextObjectKey:[B

    iget v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->nextObjectKeySize:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/itextpdf/kernel/crypto/StandardDecryptor;-><init>([BII)V

    return-object v0
.end method

.method public getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 87
    new-instance v0, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->nextObjectKey:[B

    iget v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->nextObjectKeySize:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;-><init>(Ljava/io/OutputStream;[BII)V

    return-object v0
.end method

.method protected isValidPassword([B[B)Z
    .locals 1
    .param p1, "uValue"    # [B
    .param p2, "userKey"    # [B

    .line 166
    const/16 v0, 0x20

    invoke-static {p1, p2, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->equalsArray([B[BI)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected setSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V
    .locals 3
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "encryptMetadata"    # Z
    .param p3, "embeddedFilesOnly"    # Z

    .line 160
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 161
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 162
    return-void
.end method
