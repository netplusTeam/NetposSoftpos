.class Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;
.super Ljava/security/KeyStoreSpi;
.source "OpenSslX509KeyManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore;-><init>([Ljava/security/cert/X509Certificate;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final creationDate:Ljava/util/Date;

.field final synthetic val$certificateChain:[Ljava/security/cert/X509Certificate;

.field final synthetic val$keyless:Z


# direct methods
.method constructor <init>(Z[Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$keyless:Z

    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$certificateChain:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 300
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->creationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 362
    const-string v0, "key"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 367
    const-string v0, "key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 331
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$certificateChain:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 387
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$certificateChain:[Ljava/security/cert/X509Certificate;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 389
    .local v3, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    const-string v0, "key"

    return-object v0

    .line 388
    .end local v3    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 326
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$certificateChain:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 336
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->creationDate:Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 306
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$keyless:Z

    if-eqz v0, :cond_0

    .line 307
    const-wide/16 v0, 0x0

    .local v0, "privateKeyAddress":J
    goto :goto_2

    .line 310
    .end local v0    # "privateKeyAddress":J
    :cond_0
    if-nez p2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :goto_1
    invoke-static {p1, v1}, Lio/netty/internal/tcnative/SSL;->loadPrivateKeyFromEngine(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .restart local v0    # "privateKeyAddress":J
    nop

    .line 319
    :goto_2
    new-instance v2, Lio/netty/handler/ssl/OpenSslPrivateKey;

    invoke-direct {v2, v0, v1}, Lio/netty/handler/ssl/OpenSslPrivateKey;-><init>(J)V

    return-object v2

    .line 312
    .end local v0    # "privateKeyAddress":J
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "Unable to load key from engine"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 315
    .local v1, "keyException":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 316
    throw v1

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "keyException":Ljava/security/UnrecoverableKeyException;
    :cond_2
    return-object v1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 382
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 377
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C

    .line 404
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 407
    :cond_1
    :goto_0
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C

    .line 399
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
