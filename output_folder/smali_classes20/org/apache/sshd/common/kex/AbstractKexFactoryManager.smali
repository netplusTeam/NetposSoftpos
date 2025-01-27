.class public abstract Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;
.super Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;
.source "AbstractKexFactoryManager.java"

# interfaces
.implements Lorg/apache/sshd/common/kex/KexFactoryManager;


# instance fields
.field private cipherFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;>;"
        }
    .end annotation
.end field

.field private compressionFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/compression/Compression;",
            ">;>;"
        }
    .end annotation
.end field

.field private final delegate:Lorg/apache/sshd/common/kex/KexFactoryManager;

.field private kexExtensionHandler:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

.field private keyExchangeFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private macFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;>;"
        }
    .end annotation
.end field

.field private signatureFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;-><init>(Lorg/apache/sshd/common/kex/KexFactoryManager;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lorg/apache/sshd/common/kex/KexFactoryManager;)V
    .locals 0
    .param p1, "delegate"    # Lorg/apache/sshd/common/kex/KexFactoryManager;

    .line 53
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->delegate:Lorg/apache/sshd/common/kex/KexFactoryManager;

    .line 55
    return-void
.end method


# virtual methods
.method public getCipherFactories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;>;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->getDelegate()Lorg/apache/sshd/common/kex/KexFactoryManager;

    move-result-object v0

    .line 76
    .local v0, "parent":Lorg/apache/sshd/common/kex/KexFactoryManager;
    iget-object v1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->cipherFactories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getCipherFactories()Ljava/util/List;

    move-result-object v2

    .line 76
    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->resolveEffectiveFactories(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public getCompressionFactories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/compression/Compression;",
            ">;>;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->getDelegate()Lorg/apache/sshd/common/kex/KexFactoryManager;

    move-result-object v0

    .line 88
    .local v0, "parent":Lorg/apache/sshd/common/kex/KexFactoryManager;
    iget-object v1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->compressionFactories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getCompressionFactories()Ljava/util/List;

    move-result-object v2

    .line 88
    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->resolveEffectiveFactories(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method protected getDelegate()Lorg/apache/sshd/common/kex/KexFactoryManager;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->delegate:Lorg/apache/sshd/common/kex/KexFactoryManager;

    return-object v0
.end method

.method public getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    .locals 4

    .line 123
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->getDelegate()Lorg/apache/sshd/common/kex/KexFactoryManager;

    move-result-object v0

    .line 124
    .local v0, "parent":Lorg/apache/sshd/common/kex/KexFactoryManager;
    const-class v1, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    iget-object v2, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->kexExtensionHandler:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v3

    .line 124
    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    return-object v1
.end method

.method public getKeyExchangeFactories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->getDelegate()Lorg/apache/sshd/common/kex/KexFactoryManager;

    move-result-object v0

    .line 64
    .local v0, "parent":Lorg/apache/sshd/common/kex/KexFactoryManager;
    iget-object v1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->keyExchangeFactories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getKeyExchangeFactories()Ljava/util/List;

    move-result-object v2

    .line 64
    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->resolveEffectiveFactories(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public getMacFactories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;>;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->getDelegate()Lorg/apache/sshd/common/kex/KexFactoryManager;

    move-result-object v0

    .line 100
    .local v0, "parent":Lorg/apache/sshd/common/kex/KexFactoryManager;
    iget-object v1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->macFactories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getMacFactories()Ljava/util/List;

    move-result-object v2

    .line 100
    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->resolveEffectiveFactories(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public getSignatureFactories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->getDelegate()Lorg/apache/sshd/common/kex/KexFactoryManager;

    move-result-object v0

    .line 112
    .local v0, "parent":Lorg/apache/sshd/common/kex/KexFactoryManager;
    iget-object v1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->signatureFactories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/kex/KexFactoryManager;->getSignatureFactories()Ljava/util/List;

    move-result-object v2

    .line 112
    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->resolveEffectiveFactories(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method protected resolveEffectiveFactories(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TV;>;>(TC;TC;)TC;"
        }
    .end annotation

    .line 134
    .local p1, "local":Ljava/util/Collection;, "TC;"
    .local p2, "inherited":Ljava/util/Collection;, "TC;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    return-object p2

    .line 137
    :cond_0
    return-object p1
.end method

.method protected resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;TV;TV;)TV;"
        }
    .end annotation

    .line 142
    .local p1, "providerType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    .local p2, "local":Ljava/lang/Object;, "TV;"
    .local p3, "inherited":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 143
    return-object p3

    .line 145
    :cond_0
    return-object p2
.end method

.method public setCipherFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;>;)V"
        }
    .end annotation

    .line 82
    .local p1, "cipherFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/cipher/Cipher;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->cipherFactories:Ljava/util/List;

    .line 83
    return-void
.end method

.method public setCompressionFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/compression/Compression;",
            ">;>;)V"
        }
    .end annotation

    .line 94
    .local p1, "compressionFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/compression/Compression;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->compressionFactories:Ljava/util/List;

    .line 95
    return-void
.end method

.method public setKexExtensionHandler(Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;)V
    .locals 0
    .param p1, "kexExtensionHandler"    # Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    .line 130
    iput-object p1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->kexExtensionHandler:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    .line 131
    return-void
.end method

.method public setKeyExchangeFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "keyExchangeFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/kex/KeyExchangeFactory;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->keyExchangeFactories:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setMacFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;>;)V"
        }
    .end annotation

    .line 106
    .local p1, "macFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/mac/Mac;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->macFactories:Ljava/util/List;

    .line 107
    return-void
.end method

.method public setSignatureFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 118
    .local p1, "signatureFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;->signatureFactories:Ljava/util/List;

    .line 119
    return-void
.end method
