.class public Lcom/itextpdf/signatures/KeyStoreUtil;
.super Ljava/lang/Object;
.source "KeyStoreUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadCacertsKeyStore()Ljava/security/KeyStore;
    .locals 1

    .line 90
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/signatures/KeyStoreUtil;->loadCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static loadCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 4
    .param p0, "provider"    # Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "security"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 64
    new-instance v1, Ljava/io/File;

    const-string v2, "cacerts"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 69
    const-string v2, "JKS"

    if-nez p0, :cond_0

    .line 70
    :try_start_1
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .local v2, "k":Ljava/security/KeyStore;
    goto :goto_0

    .line 72
    .end local v2    # "k":Ljava/security/KeyStore;
    :cond_0
    invoke-static {v2, p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 73
    .restart local v2    # "k":Ljava/security/KeyStore;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    nop

    .line 80
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 74
    :goto_1
    return-object v2

    .line 80
    .end local v2    # "k":Ljava/security/KeyStore;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 76
    :catch_1
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "provider":Ljava/lang/String;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "provider":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 81
    :cond_1
    :goto_3
    throw v2
.end method
