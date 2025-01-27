.class public Lcom/itextpdf/signatures/VerificationOK;
.super Ljava/lang/Object;
.source "VerificationOK.java"


# instance fields
.field protected certificate:Ljava/security/cert/X509Certificate;

.field protected message:Ljava/lang/String;

.field protected verifierClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/itextpdf/signatures/CertificateVerifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itextpdf/signatures/CertificateVerifier;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    .local p2, "verifierClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/itextpdf/signatures/CertificateVerifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/itextpdf/signatures/VerificationOK;->certificate:Ljava/security/cert/X509Certificate;

    .line 71
    iput-object p2, p0, Lcom/itextpdf/signatures/VerificationOK;->verifierClass:Ljava/lang/Class;

    .line 72
    iput-object p3, p0, Lcom/itextpdf/signatures/VerificationOK;->message:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/itextpdf/signatures/VerificationOK;->certificate:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, " verified with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/signatures/VerificationOK;->verifierClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/itextpdf/signatures/VerificationOK;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
