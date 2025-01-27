.class public interface abstract Lorg/apache/sshd/common/kex/KexFactoryManager;
.super Ljava/lang/Object;
.source "KexFactoryManager.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
.implements Lorg/apache/sshd/common/kex/extension/KexExtensionHandlerManager;


# virtual methods
.method public abstract getCipherFactories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;>;"
        }
    .end annotation
.end method

.method public getCipherFactoriesNameList()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-interface {p0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getCipherFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCipherFactoriesNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-interface {p0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getCipherFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCompressionFactories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/compression/Compression;",
            ">;>;"
        }
    .end annotation
.end method

.method public getCompressionFactoriesNameList()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-interface {p0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getCompressionFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompressionFactoriesNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getCompressionFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getKeyExchangeFactories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMacFactories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;>;"
        }
    .end annotation
.end method

.method public getMacFactoriesNameList()Ljava/lang/String;
    .locals 1

    .line 132
    invoke-interface {p0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getMacFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacFactoriesNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-interface {p0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getMacFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract setCipherFactories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public setCipherFactoriesNameList(Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # Ljava/lang/String;

    .line 72
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->setCipherFactoriesNames([Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setCipherFactoriesNames(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->parseCiphersList(Ljava/util/Collection;)Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;

    move-result-object v0

    .line 82
    .local v0, "result":Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;
    nop

    .line 83
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "No supported cipher factories: %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 84
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/cipher/Cipher;>;>;"
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    const-string v4, "Unsupported cipher factories found: %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-interface {p0, v1}, Lorg/apache/sshd/common/kex/KexFactoryManager;->setCipherFactories(Ljava/util/List;)V

    .line 87
    return-void
.end method

.method public varargs setCipherFactoriesNames([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 76
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->setCipherFactoriesNames(Ljava/util/Collection;)V

    .line 77
    return-void
.end method

.method public abstract setCompressionFactories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/compression/Compression;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public setCompressionFactoriesNameList(Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # Ljava/lang/String;

    .line 107
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->setCompressionFactoriesNames([Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setCompressionFactoriesNames(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/compression/BuiltinCompressions;->parseCompressionsList(Ljava/util/Collection;)Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;

    move-result-object v0

    .line 117
    .local v0, "result":Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;
    nop

    .line 118
    invoke-virtual {v0}, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "No supported compression factories: %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 119
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/compression/Compression;>;>;"
    invoke-virtual {v0}, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v2

    .line 120
    .local v2, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    const-string v4, "Unsupported compression factories found: %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-interface {p0, v1}, Lorg/apache/sshd/common/kex/KexFactoryManager;->setCompressionFactories(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method public varargs setCompressionFactoriesNames([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 111
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->setCompressionFactoriesNames(Ljava/util/Collection;)V

    .line 112
    return-void
.end method

.method public abstract setKeyExchangeFactories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMacFactories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public setMacFactoriesNameList(Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # Ljava/lang/String;

    .line 142
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->setMacFactoriesNames([Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setMacFactoriesNames(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/mac/BuiltinMacs;->parseMacsList(Ljava/util/Collection;)Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;

    move-result-object v0

    .line 152
    .local v0, "result":Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;
    nop

    .line 153
    invoke-virtual {v0}, Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "No supported MAC factories: %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 154
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/mac/Mac;>;>;"
    invoke-virtual {v0}, Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    const-string v4, "Unsupported MAC factories found: %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 156
    invoke-interface {p0, v1}, Lorg/apache/sshd/common/kex/KexFactoryManager;->setMacFactories(Ljava/util/List;)V

    .line 157
    return-void
.end method

.method public varargs setMacFactoriesNames([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 146
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->setMacFactoriesNames(Ljava/util/Collection;)V

    .line 147
    return-void
.end method
