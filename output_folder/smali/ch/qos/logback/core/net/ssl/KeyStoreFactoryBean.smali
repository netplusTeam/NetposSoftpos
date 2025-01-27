.class public Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;
.super Ljava/lang/Object;
.source "KeyStoreFactoryBean.java"


# instance fields
.field private location:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private newKeyStore()Ljava/security/KeyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public createKeyStore()Ljava/security/KeyStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/qos/logback/core/util/LocationUtil;->urlForResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 63
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 64
    invoke-direct {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->newKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    .line 65
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    nop

    .line 77
    if-eqz v0, :cond_0

    .line 78
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v3

    .line 81
    .local v3, "ex":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    .line 82
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    :goto_1
    return-object v2

    .line 76
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 73
    :catch_1
    move-exception v1

    .line 74
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    throw v2

    .line 71
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 72
    .local v1, "ex":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": file not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    throw v2

    .line 69
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such keystore type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    throw v2

    .line 67
    .end local v1    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    .line 68
    .local v1, "ex":Ljava/security/NoSuchProviderException;
    new-instance v2, Ljava/security/NoSuchProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such keystore provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v1    # "ex":Ljava/security/NoSuchProviderException;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :goto_2
    if-eqz v0, :cond_1

    .line 78
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    .line 80
    :catch_5
    move-exception v2

    .line 81
    .local v2, "ex":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4

    .line 82
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    :goto_4
    throw v1

    .line 57
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "location is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->password:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "changeit"

    return-object v0

    .line 162
    :cond_0
    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "JKS"

    return-object v0

    .line 122
    :cond_0
    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->location:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->password:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->provider:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->type:Ljava/lang/String;

    .line 134
    return-void
.end method
