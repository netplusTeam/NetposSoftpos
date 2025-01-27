.class public Lcom/itextpdf/signatures/CrlClientOffline;
.super Ljava/lang/Object;
.source "CrlClientOffline.java"

# interfaces
.implements Lcom/itextpdf/signatures/ICrlClient;


# instance fields
.field private crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/cert/CRL;)V
    .locals 2
    .param p1, "crl"    # Ljava/security/cert/CRL;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CrlClientOffline;->crls:Ljava/util/List;

    .line 85
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/security/cert/X509CRL;

    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "crlEncoded"    # [B

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CrlClientOffline;->crls:Ljava/util/List;

    .line 74
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method


# virtual methods
.method public getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "checkCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "[B>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/itextpdf/signatures/CrlClientOffline;->crls:Ljava/util/List;

    return-object v0
.end method
