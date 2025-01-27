.class public abstract Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;
.super Lorg/apache/sshd/common/keyprovider/AbstractKeyPairProvider;
.source "AbstractResourceKeyPairProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/sshd/common/keyprovider/AbstractKeyPairProvider;"
    }
.end annotation


# instance fields
.field private final cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;>;"
        }
    .end annotation
.end field

.field private passwordFinder:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 59
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/keyprovider/AbstractKeyPairProvider;-><init>()V

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method protected doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "TR;)",
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

    .line 129
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    .local p2, "resource":Ljava/lang/Object;, "TR;"
    nop

    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->getIoResource(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Object;)Lorg/apache/sshd/common/util/io/resource/IoResource;

    move-result-object v0

    const-string v1, "No I/O resource available for %s"

    invoke-static {v0, v1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/io/resource/IoResource;

    .line 131
    .local v0, "ioResource":Lorg/apache/sshd/common/util/io/resource/IoResource;, "Lorg/apache/sshd/common/util/io/resource/IoResource<*>;"
    nop

    .line 132
    invoke-interface {v0}, Lorg/apache/sshd/common/util/io/resource/IoResource;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No resource string value for %s"

    invoke-static {v1, v2, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "resourceKey":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v3, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 137
    .local v3, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    if-eqz v3, :cond_1

    .line 140
    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    const-string v4, "doLoadKeys({}) using cached identifiers"

    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-object v3

    .line 146
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->getPasswordFinder()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    move-result-object v2

    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/Object;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;

    move-result-object v2

    .line 147
    .end local v3    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    .local v2, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    if-eqz v2, :cond_5

    .line 149
    iget-object v3, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    monitor-enter v3

    .line 151
    :try_start_1
    iget-object v4, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 152
    .local v4, "reusedKey":Z
    if-eqz v4, :cond_2

    .line 153
    iget-object v5, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    move-object v2, v5

    goto :goto_0

    .line 155
    :cond_2
    iget-object v5, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iget-object v3, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    iget-object v3, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    const-string v5, "doLoadKeys({}) {}"

    if-eqz v4, :cond_3

    const-string v6, "re-loaded"

    goto :goto_1

    :cond_3
    const-string v6, "loaded"

    :goto_1
    invoke-interface {v3, v5, v1, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .end local v4    # "reusedKey":Z
    :cond_4
    goto :goto_2

    .line 157
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 163
    :cond_5
    iget-object v3, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 164
    iget-object v3, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    const-string v4, "doLoadKeys({}) no key loaded"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :cond_6
    :goto_2
    return-object v2

    .line 137
    .end local v2    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method protected doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/io/InputStream;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
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

    .line 192
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    invoke-static {p1, p2, p3, p4}, Lorg/apache/sshd/common/util/security/SecurityUtils;->loadKeyPairIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/Object;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p4, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "TR;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
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

    .line 174
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    .local p3, "resource":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->openKeyPairResource(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 175
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_0
    return-object v1

    .line 174
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "resource":Ljava/lang/Object;, "TR;"
    .end local p4    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "resource":Ljava/lang/Object;, "TR;"
    .restart local p4    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method protected getIoResource(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Object;)Lorg/apache/sshd/common/util/io/resource/IoResource;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "TR;)",
            "Lorg/apache/sshd/common/util/io/resource/IoResource<",
            "*>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    .local p2, "resource":Ljava/lang/Object;, "TR;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/io/resource/IoResource;->forResource(Ljava/lang/Object;)Lorg/apache/sshd/common/util/io/resource/IoResource;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordFinder()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .locals 1

    .line 63
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->passwordFinder:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    return-object v0
.end method

.method synthetic lambda$loadKeys$0$org-apache-sshd-common-keyprovider-AbstractResourceKeyPairProvider(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resources"    # Ljava/util/Collection;

    .line 119
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    new-instance v0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;-><init>(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)V

    return-object v0
.end method

.method protected loadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/util/Collection<",
            "+TR;>;)",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    .local p2, "resources":Ljava/util/Collection;, "Ljava/util/Collection<+TR;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)V

    return-object v0
.end method

.method protected openKeyPairResource(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "TR;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    .local p3, "resource":Ljava/lang/Object;, "TR;"
    instance-of v0, p2, Lorg/apache/sshd/common/util/io/resource/ResourceStreamProvider;

    if-eqz v0, :cond_0

    .line 183
    move-object v0, p2

    check-cast v0, Lorg/apache/sshd/common/util/io/resource/ResourceStreamProvider;

    invoke-interface {v0}, Lorg/apache/sshd/common/util/io/resource/ResourceStreamProvider;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open resource data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected resetCacheMap(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    .local p1, "resources":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 80
    .local v0, "toDelete":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 82
    monitor-exit v1

    return-void

    .line 85
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 87
    monitor-exit v1

    return-void

    .line 90
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 91
    .local v3, "r":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "No resource key value"

    invoke-static {v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "resourceKey":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    new-instance v5, Ljava/util/TreeSet;

    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v0, v5

    .line 100
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_0

    .line 105
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "resourceKey":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-lez v2, :cond_5

    .line 106
    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->cacheMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 108
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v1, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    iget-object v1, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetCacheMap("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") removed previous cached keys for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 113
    :cond_6
    return-void

    .line 108
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setPasswordFinder(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)V
    .locals 0
    .param p1, "passwordFinder"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 67
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->passwordFinder:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 68
    return-void
.end method
