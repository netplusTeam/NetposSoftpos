.class public abstract Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;
.source "AbstractKeyEntryResolver.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/KeyEntryResolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        "PRV::",
        "Ljava/security/PrivateKey;",
        ">",
        "Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader<",
        "TPUB;TPRV;>;",
        "Lorg/apache/sshd/common/config/keys/KeyEntryResolver<",
        "TPUB;TPRV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TPUB;>;",
            "Ljava/lang/Class<",
            "TPRV;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;, "Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver<TPUB;TPRV;>;"
    .local p1, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<TPUB;>;"
    .local p2, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<TPRV;>;"
    .local p3, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 41
    return-void
.end method


# virtual methods
.method public generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/spec/KeySpec;",
            ")TPRV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;, "Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver<TPUB;TPRV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;->getKeyFactoryInstance()Ljava/security/KeyFactory;

    move-result-object v0

    .line 51
    .local v0, "factory":Ljava/security/KeyFactory;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;->getPrivateKeyType()Ljava/lang/Class;

    move-result-object v1

    .line 52
    .local v1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TPRV;>;"
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    return-object v2
.end method

.method public generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/spec/KeySpec;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;, "Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver<TPUB;TPRV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;->getKeyFactoryInstance()Ljava/security/KeyFactory;

    move-result-object v0

    .line 45
    .local v0, "factory":Ljava/security/KeyFactory;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;->getPublicKeyType()Ljava/lang/Class;

    move-result-object v1

    .line 46
    .local v1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TPUB;>;"
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    .local p0, "this":Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;, "Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver<TPUB;TPRV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;->getPublicKeyType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;->getSupportedKeyTypes()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
