.class public Lorg/jpos/security/SimpleKeyFile;
.super Ljava/lang/Object;
.source "SimpleKeyFile.java"

# interfaces
.implements Lorg/jpos/security/SecureKeyStore;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/util/LogSource;


# instance fields
.field file:Ljava/io/File;

.field header:Ljava/lang/String;

.field protected logger:Lorg/jpos/util/Logger;

.field props:Ljava/util/Properties;

.field protected realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->props:Ljava/util/Properties;

    .line 49
    const-string v0, "Key File"

    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->header:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->logger:Lorg/jpos/util/Logger;

    .line 51
    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->realm:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->props:Ljava/util/Properties;

    .line 49
    const-string v0, "Key File"

    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->header:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->logger:Lorg/jpos/util/Logger;

    .line 51
    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->realm:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p1}, Lorg/jpos/security/SimpleKeyFile;->init(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized getKey(Ljava/lang/String;)Lorg/jpos/security/SecureKey;
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "secureKey":Lorg/jpos/security/SecureKey;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/security/SimpleKeyFile;->logger:Lorg/jpos/util/Logger;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "get-key"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    goto :goto_0

    .end local p0    # "this":Lorg/jpos/security/SimpleKeyFile;
    :cond_0
    const/4 v1, 0x0

    .line 107
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    :goto_0
    if-eqz v1, :cond_1

    .line 108
    const-string v2, "alias"

    invoke-virtual {v1, v2, p1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/jpos/security/SimpleKeyFile;->load()V

    .line 111
    const-string v2, "class"

    invoke-virtual {p0, p1, v2}, Lorg/jpos/security/SimpleKeyFile;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "keyClassName":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 113
    .local v3, "c":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/security/SecureKey;

    move-object v0, v4

    .line 114
    nop

    instance-of v4, v0, Lorg/jpos/security/SecureDESKey;

    if-eqz v4, :cond_4

    .line 117
    const-string v4, "key"

    invoke-virtual {p0, p1, v4}, Lorg/jpos/security/SimpleKeyFile;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v4

    .line 118
    .local v4, "keyBytes":[B
    const-string v5, "length"

    invoke-virtual {p0, p1, v5}, Lorg/jpos/security/SimpleKeyFile;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v5

    .line 119
    .local v5, "keyLength":S
    const-string v6, "type"

    invoke-virtual {p0, p1, v6}, Lorg/jpos/security/SimpleKeyFile;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "keyType":Ljava/lang/String;
    const-string v7, "checkvalue"

    invoke-virtual {p0, p1, v7}, Lorg/jpos/security/SimpleKeyFile;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v7

    .line 121
    .local v7, "KeyCheckValue":[B
    new-instance v8, Lorg/jpos/security/SecureDESKey;

    invoke-direct {v8, v5, v6, v4, v7}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;[B[B)V

    move-object v0, v8

    .line 122
    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v2    # "keyClassName":Ljava/lang/String;
    .end local v3    # "c":Ljava/lang/Class;
    .end local v4    # "keyBytes":[B
    .end local v5    # "keyLength":S
    .end local v6    # "keyType":Ljava/lang/String;
    .end local v7    # "KeyCheckValue":[B
    :cond_2
    if-eqz v1, :cond_3

    .line 131
    :try_start_2
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    :cond_3
    monitor-exit p0

    return-object v0

    .line 115
    .restart local v2    # "keyClassName":Ljava/lang/String;
    .restart local v3    # "c":Ljava/lang/Class;
    :cond_4
    :try_start_3
    new-instance v4, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported SecureKey class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v0    # "secureKey":Lorg/jpos/security/SecureKey;
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "alias":Ljava/lang/String;
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .end local v2    # "keyClassName":Ljava/lang/String;
    .end local v3    # "c":Ljava/lang/Class;
    .restart local v0    # "secureKey":Lorg/jpos/security/SecureKey;
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "alias":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    if-nez v1, :cond_5

    .line 126
    :try_start_4
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "get-key-error"

    invoke-direct {v3, p0, v4, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v3

    .line 127
    :cond_5
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 128
    instance-of v3, v2, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    goto :goto_1

    :cond_6
    new-instance v3, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "secureKey":Lorg/jpos/security/SecureKey;
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "alias":Ljava/lang/String;
    :goto_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "secureKey":Lorg/jpos/security/SecureKey;
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "alias":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_7

    .line 131
    :try_start_5
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 132
    :cond_7
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    .end local v0    # "secureKey":Lorg/jpos/security/SecureKey;
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "alias":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getKeys()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/security/SecureKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jpos/security/SecureKey;>;"
    iget-object v1, p0, Lorg/jpos/security/SimpleKeyFile;->props:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 210
    .local v2, "k":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 211
    .local v3, "keyStr":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "alias":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    invoke-virtual {p0, v4}, Lorg/jpos/security/SimpleKeyFile;->getKey(Ljava/lang/String;)Lorg/jpos/security/SecureKey;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "keyStr":Ljava/lang/String;
    .end local v4    # "alias":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 216
    :cond_1
    return-object v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/security/SimpleKeyFile;->props:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 196
    :cond_0
    new-instance v2, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key can\'t be retrieved. Can\'t get property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->file:Ljava/io/File;

    .line 64
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/security/SimpleKeyFile;->load()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 70
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    invoke-direct {v1, v0}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method load()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/jpos/security/SimpleKeyFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    iget-object v1, p0, Lorg/jpos/security/SimpleKeyFile;->props:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 171
    nop

    .line 174
    nop

    .line 175
    return-void

    .line 170
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 171
    throw v1

    .line 165
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/security/SimpleKeyFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    invoke-direct {v1, v0}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 96
    :try_start_0
    const-string v0, "key-file"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/security/SimpleKeyFile;->init(Ljava/lang/String;)V

    .line 97
    const-string v0, "file-header"

    iget-object v1, p0, Lorg/jpos/security/SimpleKeyFile;->header:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->header:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    nop

    .line 101
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized setKey(Ljava/lang/String;Lorg/jpos/security/SecureKey;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "secureKey"    # Lorg/jpos/security/SecureKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "set-key"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 139
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    const-string v1, "alias"

    invoke-virtual {v0, v1, p1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    instance-of v1, p2, Lorg/jpos/security/SecureDESKey;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/jpos/security/SimpleKeyFile;->load()V

    .line 146
    const-string v1, "class"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jpos/security/SimpleKeyFile;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "key"

    invoke-virtual {p2}, Lorg/jpos/security/SecureKey;->getKeyBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jpos/security/SimpleKeyFile;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "length"

    invoke-virtual {p2}, Lorg/jpos/security/SecureKey;->getKeyLength()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jpos/security/SimpleKeyFile;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "type"

    invoke-virtual {p2}, Lorg/jpos/security/SecureKey;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jpos/security/SimpleKeyFile;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object v1, p2

    check-cast v1, Lorg/jpos/security/SecureDESKey;

    invoke-virtual {v1}, Lorg/jpos/security/SecureDESKey;->getKeyCheckValue()[B

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "keyCheckValueHexString":Ljava/lang/String;
    const-string v2, "checkvalue"

    invoke-virtual {p0, p1, v2, v1}, Lorg/jpos/security/SimpleKeyFile;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lorg/jpos/security/SimpleKeyFile;->store()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v1    # "keyCheckValueHexString":Ljava/lang/String;
    :try_start_2
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    nop

    .line 159
    monitor-exit p0

    return-void

    .line 143
    .end local p0    # "this":Lorg/jpos/security/SimpleKeyFile;
    :cond_0
    :try_start_3
    new-instance v1, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported SecureKey class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "secureKey":Lorg/jpos/security/SecureKey;
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "secureKey":Lorg/jpos/security/SecureKey;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 155
    instance-of v2, v1, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    invoke-direct {v2, v1}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "secureKey":Lorg/jpos/security/SecureKey;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "secureKey":Lorg/jpos/security/SecureKey;
    :goto_1
    :try_start_5
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 158
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "secureKey":Lorg/jpos/security/SecureKey;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/jpos/security/SimpleKeyFile;->logger:Lorg/jpos/util/Logger;

    .line 75
    iput-object p2, p0, Lorg/jpos/security/SimpleKeyFile;->realm:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/security/SimpleKeyFile;->props:Ljava/util/Properties;

    invoke-virtual {v1, v0, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method store()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/jpos/security/SimpleKeyFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/jpos/security/SimpleKeyFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 183
    .local v0, "out":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lorg/jpos/security/SimpleKeyFile;->props:Ljava/util/Properties;

    iget-object v2, p0, Lorg/jpos/security/SimpleKeyFile;->header:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 185
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 188
    nop

    .line 189
    return-void

    .line 181
    .end local v0    # "out":Ljava/io/FileOutputStream;
    :cond_0
    new-instance v0, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t write to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/security/SimpleKeyFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;

    invoke-direct {v1, v0}, Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
