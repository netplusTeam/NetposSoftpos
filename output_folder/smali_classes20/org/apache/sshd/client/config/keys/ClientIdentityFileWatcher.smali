.class public Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;
.super Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;
.source "ClientIdentityFileWatcher.java"

# interfaces
.implements Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;
.implements Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
.implements Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;


# instance fields
.field private final identitiesHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loaderHolder:Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

.field private final providerHolder:Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

.field private final strict:Z


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;-><init>(Ljava/nio/file/Path;Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "strict"    # Z

    .line 58
    nop

    .line 59
    const-string v0, "No client identity loader"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    invoke-static {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;->loaderHolderOf(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    move-result-object v0

    .line 60
    const-string v1, "No password provider"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;->providerHolderOf(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    move-result-object v1

    .line 58
    invoke-direct {p0, p1, v0, v1, p4}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;-><init>(Ljava/nio/file/Path;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;-><init>(Ljava/nio/file/Path;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .param p4, "strict"    # Z

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;-><init>(Ljava/nio/file/Path;)V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->identitiesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    const-string v0, "No client identity loader"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    iput-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->loaderHolder:Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    .line 73
    const-string v0, "No password provider"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    iput-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->providerHolder:Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    .line 74
    iput-boolean p4, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->strict:Z

    .line 75
    return-void
.end method


# virtual methods
.method public getClientIdentities(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->checkReloadRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->identitiesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->identitiesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 99
    .local v0, "kp":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 100
    .local v1, "path":Ljava/nio/file/Path;
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    iget-object v2, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->identitiesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    return-object v2

    .line 104
    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->reloadClientIdentities(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->updateReloadAttributes()V

    .line 106
    iget-object v2, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->identitiesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 107
    return-object v0
.end method

.method public getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->loaderHolder:Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    invoke-interface {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;->getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->providerHolder:Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    invoke-interface {v0}, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;->getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    move-result-object v0

    return-object v0
.end method

.method public isStrict()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->strict:Z

    return v0
.end method

.method protected reloadClientIdentities(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 11
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->isStrict()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    .line 114
    invoke-static {p2, v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->validateStrictKeyFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 115
    .local v0, "violation":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    .line 116
    iget-object v2, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "reloadClientIdentity({}) ignore due to {}"

    invoke-interface {v2, v4, p2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-object v1

    .line 123
    .end local v0    # "violation":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-direct {v0, p2}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;)V

    .line 124
    .local v0, "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    move-result-object v2

    const-string v3, "No client identity loader"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 125
    .local v2, "idLoader":Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    invoke-interface {v2, v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;->isValidLocation(Lorg/apache/sshd/common/NamedResource;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 126
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    move-result-object v3

    invoke-interface {v2, p1, v0, v3}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;->loadClientIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;

    move-result-object v3

    .line 127
    .local v3, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    iget-object v4, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 128
    if-nez v3, :cond_2

    .line 129
    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->log:Lorg/slf4j/Logger;

    const-string v4, "reloadClientIdentity({}) no keys loaded"

    invoke-interface {v1, v4, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/KeyPair;

    .line 132
    .local v5, "kp":Ljava/security/KeyPair;
    if-nez v5, :cond_3

    move-object v6, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    .line 133
    .local v6, "key":Ljava/security/PublicKey;
    :goto_1
    if-eqz v6, :cond_4

    .line 134
    iget-object v7, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    .line 135
    invoke-static {v6}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v6}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 134
    const-string v9, "reloadClientIdentity({}) loaded {}-{}"

    invoke-interface {v7, v9, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .end local v5    # "kp":Ljava/security/KeyPair;
    .end local v6    # "key":Ljava/security/PublicKey;
    :cond_4
    goto :goto_0

    .line 141
    :cond_5
    :goto_2
    return-object v3

    .line 144
    .end local v3    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :cond_6
    iget-object v3, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 145
    iget-object v3, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;->log:Lorg/slf4j/Logger;

    const-string v4, "reloadClientIdentity({}) invalid location"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_7
    return-object v1
.end method
