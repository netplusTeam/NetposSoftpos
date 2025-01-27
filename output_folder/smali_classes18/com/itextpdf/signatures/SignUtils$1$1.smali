.class Lcom/itextpdf/signatures/SignUtils$1$1;
.super Ljava/lang/Object;
.source "SignUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/signatures/SignUtils$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# instance fields
.field private nextCert:Ljava/security/cert/X509Certificate;

.field final synthetic this$0:Lcom/itextpdf/signatures/SignUtils$1;


# direct methods
.method constructor <init>(Lcom/itextpdf/signatures/SignUtils$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/signatures/SignUtils$1;

    .line 356
    iput-object p1, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->this$0:Lcom/itextpdf/signatures/SignUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryToGetNextCertificate()V
    .locals 2

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->this$0:Lcom/itextpdf/signatures/SignUtils$1;

    iget-object v0, v0, Lcom/itextpdf/signatures/SignUtils$1;->val$keyStoreAliases:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->this$0:Lcom/itextpdf/signatures/SignUtils$1;

    iget-object v0, v0, Lcom/itextpdf/signatures/SignUtils$1;->val$keyStoreAliases:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    .local v0, "alias":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->this$0:Lcom/itextpdf/signatures/SignUtils$1;

    iget-object v1, v1, Lcom/itextpdf/signatures/SignUtils$1;->val$keyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->this$0:Lcom/itextpdf/signatures/SignUtils$1;

    iget-object v1, v1, Lcom/itextpdf/signatures/SignUtils$1;->val$keyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 386
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 381
    .restart local v0    # "alias":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->this$0:Lcom/itextpdf/signatures/SignUtils$1;

    iget-object v1, v1, Lcom/itextpdf/signatures/SignUtils$1;->val$keyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->nextCert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_2

    .line 384
    .end local v0    # "alias":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/security/KeyStoreException;
    goto :goto_0

    .line 388
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->nextCert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/itextpdf/signatures/SignUtils$1$1;->tryToGetNextCertificate()V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->nextCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignUtils$1$1;->next()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/security/cert/X509Certificate;
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignUtils$1$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->nextCert:Ljava/security/cert/X509Certificate;

    .line 372
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/signatures/SignUtils$1$1;->nextCert:Ljava/security/cert/X509Certificate;

    .line 373
    return-object v0

    .line 369
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
