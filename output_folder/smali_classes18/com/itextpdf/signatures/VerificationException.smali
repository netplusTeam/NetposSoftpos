.class public Lcom/itextpdf/signatures/VerificationException;
.super Ljava/security/GeneralSecurityException;
.source "VerificationException.java"


# static fields
.field private static final serialVersionUID:J = 0x295621062af5dd70L


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .param p2, "message"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v1, "Unknown"

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Certificate {0} failed: {1}"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method
