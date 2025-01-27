.class public Lcom/itextpdf/kernel/pdf/EncryptionProperties;
.super Ljava/lang/Object;
.source "EncryptionProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x367dfb33502f8c73L


# instance fields
.field protected encryptionAlgorithm:I

.field protected ownerPassword:[B

.field protected publicCertificates:[Ljava/security/cert/Certificate;

.field protected publicKeyEncryptPermissions:[I

.field protected standardEncryptPermissions:I

.field protected userPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearEncryption()V
    .locals 1

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicCertificates:[Ljava/security/cert/Certificate;

    .line 172
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicKeyEncryptPermissions:[I

    .line 173
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->userPassword:[B

    .line 174
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    .line 175
    return-void
.end method

.method private static randomBytes([B)V
    .locals 1
    .param p0, "bytes"    # [B

    .line 178
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 179
    return-void
.end method


# virtual methods
.method isPublicKeyEncryptionUsed()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicCertificates:[Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStandardEncryptionUsed()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPublicKeyEncryption([Ljava/security/cert/Certificate;[II)Lcom/itextpdf/kernel/pdf/EncryptionProperties;
    .locals 0
    .param p1, "certs"    # [Ljava/security/cert/Certificate;
    .param p2, "permissions"    # [I
    .param p3, "encryptionAlgorithm"    # I

    .line 154
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->clearEncryption()V

    .line 155
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicCertificates:[Ljava/security/cert/Certificate;

    .line 156
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicKeyEncryptPermissions:[I

    .line 157
    iput p3, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->encryptionAlgorithm:I

    .line 159
    return-object p0
.end method

.method public setStandardEncryption([B[BII)Lcom/itextpdf/kernel/pdf/EncryptionProperties;
    .locals 1
    .param p1, "userPassword"    # [B
    .param p2, "ownerPassword"    # [B
    .param p3, "permissions"    # I
    .param p4, "encryptionAlgorithm"    # I

    .line 104
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->clearEncryption()V

    .line 105
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->userPassword:[B

    .line 106
    if-eqz p2, :cond_0

    .line 107
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    goto :goto_0

    .line 109
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    .line 110
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->randomBytes([B)V

    .line 112
    :goto_0
    iput p3, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->standardEncryptPermissions:I

    .line 113
    iput p4, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->encryptionAlgorithm:I

    .line 115
    return-object p0
.end method
