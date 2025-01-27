.class public Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;
.super Ljava/lang/Object;
.source "PublicKeyRecipient.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x60f202eb846bcc63L


# instance fields
.field private certificate:Ljava/security/cert/Certificate;

.field protected cms:[B

.field private permission:I


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;I)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .param p2, "permission"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->certificate:Ljava/security/cert/Certificate;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->permission:I

    .line 56
    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->cms:[B

    .line 59
    iput-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->certificate:Ljava/security/cert/Certificate;

    .line 60
    iput p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->permission:I

    .line 61
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->certificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method protected getCms()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->cms:[B

    return-object v0
.end method

.method public getPermission()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->permission:I

    return v0
.end method

.method protected setCms([B)V
    .locals 0
    .param p1, "cms"    # [B

    .line 72
    iput-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->cms:[B

    .line 73
    return-void
.end method
