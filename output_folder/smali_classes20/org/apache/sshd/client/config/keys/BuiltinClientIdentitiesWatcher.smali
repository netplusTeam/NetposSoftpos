.class public Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;
.super Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;
.source "BuiltinClientIdentitiesWatcher.java"


# instance fields
.field private final supportedOnly:Z


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/Collection;ZLorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V
    .locals 8
    .param p1, "keysFolder"    # Ljava/nio/file/Path;
    .param p3, "supportedOnly"    # Z
    .param p4, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p5, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p6, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Z)V"
        }
    .end annotation

    .line 51
    .local p2, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 52
    const-string v0, "No client identity loader"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    invoke-static {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;->loaderHolderOf(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    move-result-object v5

    .line 53
    const-string v0, "No password provider"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;->providerHolderOf(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    move-result-object v6

    .line 51
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;-><init>(Ljava/nio/file/Path;Ljava/util/Collection;ZLorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/Collection;ZLorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V
    .locals 1
    .param p1, "keysFolder"    # Ljava/nio/file/Path;
    .param p3, "supportedOnly"    # Z
    .param p4, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p5, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .param p6, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;",
            "Z)V"
        }
    .end annotation

    .line 64
    .local p2, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->getBuiltinIdentitiesPaths(Ljava/nio/file/Path;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5, p6}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;-><init>(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 65
    iput-boolean p3, p0, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->supportedOnly:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;ZLorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V
    .locals 8
    .param p1, "keysFolder"    # Ljava/nio/file/Path;
    .param p2, "supportedOnly"    # Z
    .param p3, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p4, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p5, "strict"    # Z

    .line 46
    sget-object v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->VALUES:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;-><init>(Ljava/nio/file/Path;Ljava/util/Collection;ZLorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;ZLorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V
    .locals 8
    .param p1, "keysFolder"    # Ljava/nio/file/Path;
    .param p2, "supportedOnly"    # Z
    .param p3, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p4, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .param p5, "strict"    # Z

    .line 59
    sget-object v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->VALUES:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;-><init>(Ljava/nio/file/Path;Ljava/util/Collection;ZLorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 60
    return-void
.end method

.method public static getBuiltinIdentitiesPaths(Ljava/nio/file/Path;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p0, "keysFolder"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 96
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "No keys folder"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/client/config/keys/ClientIdentity;->getIdentityFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "fileName":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 107
    :cond_1
    return-object v0
.end method

.method public static getDefaultBuiltinIdentitiesPaths(Ljava/nio/file/Path;)Ljava/util/List;
    .locals 1
    .param p0, "keysFolder"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->VALUES:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->getBuiltinIdentitiesPaths(Ljava/nio/file/Path;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected isSupported(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/KeyPair;)Z
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "kp"    # Ljava/security/KeyPair;

    .line 80
    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->fromKeyPair(Ljava/security/KeyPair;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    move-result-object v0

    .line 81
    .local v0, "id":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    return v1

    .line 84
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 86
    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 85
    const-string v1, "loadKeys - remove unsupported identity={}, key-type={}, key={}"

    invoke-interface {v2, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_1
    return v3
.end method

.method public final isSupportedOnly()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->supportedOnly:Z

    return v0
.end method

.method synthetic lambda$loadKeys$0$org-apache-sshd-client-config-keys-BuiltinClientIdentitiesWatcher(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/KeyPair;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "p"    # Ljava/security/KeyPair;

    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->isSupported(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/KeyPair;)Z

    move-result v0

    return v0
.end method

.method public loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->isSupportedOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;Lorg/apache/sshd/common/session/SessionContext;)V

    .line 75
    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0
.end method
