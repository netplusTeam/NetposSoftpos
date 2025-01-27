.class public final Lorg/apache/sshd/common/config/SshConfigFileReader;
.super Ljava/lang/Object;
.source "SshConfigFileReader.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static configure(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 0
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "ZZ)TM;"
        }
    .end annotation

    .line 158
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureCiphers(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    .line 159
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureSignatures(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    .line 160
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureMacs(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    .line 161
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureCompression(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    .line 163
    return-object p0
.end method

.method public static configureCiphers(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Ljava/lang/String;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Ljava/lang/String;",
            "ZZ)TM;"
        }
    .end annotation

    .line 177
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    const-string v0, "No manager to configure"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    invoke-static {p1}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->parseCiphersList(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;

    move-result-object v0

    .line 180
    .local v0, "result":Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object p1, v5, v3

    const-string v6, "Unsupported cipher(s) (%s) in %s"

    invoke-static {v4, v6, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 184
    nop

    .line 185
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v4

    invoke-static {p3, v4}, Lorg/apache/sshd/common/BuiltinFactory;->setUpFactories(ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 186
    .local v4, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/cipher/Cipher;>;>;"
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 187
    const-string v2, "No known/unsupported ciphers(s): %s"

    invoke-static {v4, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 186
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setCipherFactories(Ljava/util/List;)V

    .line 188
    return-object p0
.end method

.method public static configureCiphers(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 2
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "ZZ)TM;"
        }
    .end annotation

    .line 168
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    const-string v0, "No properties to configure"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    nop

    .line 170
    const-string v0, "Ciphers"

    const-string v1, "aes128-ctr,aes192-ctr,aes256-ctr,arcfour256,arcfour128,aes128-cbc,3des-cbc,blowfish-cbc,cast128-cbc,aes192-cbc,aes256-cbc,arcfour"

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/common/PropertyResolver;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {p0, v0, p2, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureCiphers(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Ljava/lang/String;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method public static configureCompression(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Ljava/lang/String;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Ljava/lang/String;",
            "ZZ)TM;"
        }
    .end annotation

    .line 314
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    const-string v0, "No manager to configure"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    invoke-static {p1}, Lorg/apache/sshd/common/config/CompressionConfigValue;->fromName(Ljava/lang/String;)Lorg/apache/sshd/common/config/CompressionConfigValue;

    move-result-object v0

    .line 317
    .local v0, "factory":Lorg/apache/sshd/common/compression/CompressionFactory;
    if-eqz v0, :cond_1

    .line 319
    if-nez p3, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/common/compression/CompressionFactory;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setCompressionFactories(Ljava/util/List;)V

    goto :goto_2

    .line 323
    :cond_1
    invoke-static {p1}, Lorg/apache/sshd/common/compression/BuiltinCompressions;->parseCompressionsList(Ljava/lang/String;)Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;

    move-result-object v1

    .line 324
    .local v1, "result":Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;
    invoke-virtual {v1}, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v2

    .line 325
    .local v2, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_3

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v4

    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    aput-object p1, v6, v4

    const-string v3, "Unsupported compressions(s) (%s) in %s"

    invoke-static {v5, v3, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 327
    nop

    .line 328
    invoke-virtual {v1}, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v3

    invoke-static {p3, v3}, Lorg/apache/sshd/common/BuiltinFactory;->setUpFactories(ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 330
    .local v3, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/compression/Compression;>;>;"
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v4

    if-lez v4, :cond_4

    .line 331
    invoke-virtual {p0, v3}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setCompressionFactories(Ljava/util/List;)V

    .line 335
    .end local v1    # "result":Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;
    .end local v2    # "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v3    # "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/compression/Compression;>;>;"
    :cond_4
    :goto_2
    return-object p0
.end method

.method public static configureCompression(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 4
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "ZZ)TM;"
        }
    .end annotation

    .line 299
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    const-string v0, "No manager to configure"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    const-string v0, "No properties to configure"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_COMPRESSION:Ljava/lang/String;

    const-string v1, "Compression"

    invoke-interface {p1, v1, v0}, Lorg/apache/sshd/common/PropertyResolver;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/config/CompressionConfigValue;->fromName(Ljava/lang/String;)Lorg/apache/sshd/common/config/CompressionConfigValue;

    move-result-object v1

    .line 304
    .local v1, "factory":Lorg/apache/sshd/common/compression/CompressionFactory;
    if-nez p2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Unsupported compression value: %s"

    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 305
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/sshd/common/compression/CompressionFactory;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setCompressionFactories(Ljava/util/List;)V

    .line 309
    :cond_2
    return-object p0
.end method

.method public static configureKeyExchanges(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Ljava/lang/String;ZLjava/util/function/Function;Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "lenient"    # Z
    .param p4, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/sshd/common/kex/DHFactory;",
            "+",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;Z)TM;"
        }
    .end annotation

    .line 269
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    .local p3, "xformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/common/kex/DHFactory;+Lorg/apache/sshd/common/kex/KeyExchangeFactory;>;"
    const-string v0, "No manager to configure"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    const-string v0, "No DHFactory transformer"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    invoke-static {p1}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->parseDHFactoriesList(Ljava/lang/String;)Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;

    move-result-object v0

    .line 273
    .local v0, "result":Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;
    invoke-virtual {v0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object p1, v5, v3

    const-string v6, "Unsupported KEX(s) (%s) in %s"

    invoke-static {v4, v6, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 277
    nop

    .line 278
    invoke-virtual {v0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v4

    invoke-static {p4, v4, p3}, Lorg/apache/sshd/common/NamedFactory;->setUpTransformedFactories(ZLjava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v4

    .line 279
    .local v4, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/kex/KeyExchangeFactory;>;"
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 280
    const-string v2, "No known/supported KEXS(s): %s"

    invoke-static {v4, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 279
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setKeyExchangeFactories(Ljava/util/List;)V

    .line 281
    return-object p0
.end method

.method public static configureKeyExchanges(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZLjava/util/function/Function;Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 2
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "lenient"    # Z
    .param p4, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "Z",
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/sshd/common/kex/DHFactory;",
            "+",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;Z)TM;"
        }
    .end annotation

    .line 259
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    .local p3, "xformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/common/kex/DHFactory;+Lorg/apache/sshd/common/kex/KeyExchangeFactory;>;"
    const-string v0, "No properties to configure"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    nop

    .line 261
    const-string v0, "KexAlgorithms"

    const-string v1, "ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group-exchange-sha1,diffie-hellman-group18-sha512,diffie-hellman-group17-sha512,diffie-hellman-group16-sha512,diffie-hellman-group15-sha512,diffie-hellman-group14-sha256,diffie-hellman-group14-sha1,diffie-hellman-group1-sha1"

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/common/PropertyResolver;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {p0, v0, p2, p3, p4}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureKeyExchanges(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Ljava/lang/String;ZLjava/util/function/Function;Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method public static configureMacs(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Ljava/lang/String;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Ljava/lang/String;",
            "ZZ)TM;"
        }
    .end annotation

    .line 227
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    const-string v0, "No manager to configure"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    invoke-static {p1}, Lorg/apache/sshd/common/mac/BuiltinMacs;->parseMacsList(Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;

    move-result-object v0

    .line 230
    .local v0, "result":Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;
    invoke-virtual {v0}, Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object p1, v5, v3

    const-string v6, "Unsupported MAC(s) (%s) in %s"

    invoke-static {v4, v6, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    nop

    .line 235
    invoke-virtual {v0}, Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v4

    invoke-static {p3, v4}, Lorg/apache/sshd/common/BuiltinFactory;->setUpFactories(ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 236
    .local v4, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/mac/Mac;>;>;"
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 237
    const-string v2, "No known/supported MAC(s): %s"

    invoke-static {v4, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 236
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setMacFactories(Ljava/util/List;)V

    .line 238
    return-object p0
.end method

.method public static configureMacs(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 2
    .param p1, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "ZZ)TM;"
        }
    .end annotation

    .line 218
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    const-string v0, "No properties to configure"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    nop

    .line 220
    const-string v0, "MACs"

    const-string v1, "hmac-md5,hmac-sha1,umac-64@openssh.com,hmac-ripemd160,hmac-sha1-96,hmac-md5-96,hmac-sha2-256,hmac-sha2-256-96,hmac-sha2-512,hmac-sha2-512-96"

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/common/PropertyResolver;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {p0, v0, p2, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureMacs(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Ljava/lang/String;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method public static configureSignatures(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Ljava/lang/String;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Ljava/lang/String;",
            "ZZ)TM;"
        }
    .end annotation

    .line 202
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    const-string v0, "No manager to configure"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    invoke-static {p1}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->parseSignatureList(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;

    move-result-object v0

    .line 205
    .local v0, "result":Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;
    invoke-virtual {v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v1

    .line 206
    .local v1, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object p1, v5, v3

    const-string v6, "Unsupported signatures (%s) in %s"

    invoke-static {v4, v6, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 209
    nop

    .line 210
    invoke-virtual {v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v4

    invoke-static {p3, v4}, Lorg/apache/sshd/common/BuiltinFactory;->setUpFactories(ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 211
    .local v4, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 212
    const-string v2, "No known/supported signatures: %s"

    invoke-static {v4, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 211
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setSignatureFactories(Ljava/util/List;)V

    .line 213
    return-object p0
.end method

.method public static configureSignatures(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Lorg/apache/sshd/common/PropertyResolver;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 2
    .param p1, "props"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "lenient"    # Z
    .param p3, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
            ">(TM;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "ZZ)TM;"
        }
    .end annotation

    .line 193
    .local p0, "manager":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TM;"
    const-string v0, "No properties to configure"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    nop

    .line 195
    const-string v0, "HostKeyAlgorithms"

    const-string v1, "ssh-rsa,ssh-dss"

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/common/PropertyResolver;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {p0, v0, p2, p3}, Lorg/apache/sshd/common/config/SshConfigFileReader;->configureSignatures(Lorg/apache/sshd/common/helpers/AbstractFactoryManager;Ljava/lang/String;ZZ)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method public static getCiphers(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;
    .locals 1
    .param p0, "props"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 73
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "Ciphers"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/PropertyResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->parseCiphersList(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static getCompression(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/common/compression/CompressionFactory;
    .locals 1
    .param p0, "props"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 130
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_0
    const-string v0, "Compression"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/PropertyResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/config/CompressionConfigValue;->fromName(Ljava/lang/String;)Lorg/apache/sshd/common/config/CompressionConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public static getKexFactories(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;
    .locals 1
    .param p0, "props"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 119
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_0
    const-string v0, "KexAlgorithms"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/PropertyResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->parseDHFactoriesList(Ljava/lang/String;)Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static getMacs(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;
    .locals 1
    .param p0, "props"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 89
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_0
    const-string v0, "MACs"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/PropertyResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->parseMacsList(Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static getSignatures(Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;
    .locals 1
    .param p0, "props"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 104
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_0
    const-string v0, "HostKeyAlgorithms"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/PropertyResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->parseSignatureList(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;

    move-result-object v0

    return-object v0
.end method
