.class public Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;
.super Lorg/apache/sshd/common/keyprovider/AbstractKeyPairProvider;
.source "ClientIdentitiesWatcher.java"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyPairProvider;


# instance fields
.field private final providers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "providers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/keyprovider/AbstractKeyPairProvider;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->providers:Ljava/util/Collection;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)V
    .locals 1
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            ")V"
        }
    .end annotation

    .line 47
    .local p1, "paths":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/nio/file/Path;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;-><init>(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V
    .locals 2
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Z)V"
        }
    .end annotation

    .line 52
    .local p1, "paths":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/nio/file/Path;>;"
    nop

    .line 53
    const-string v0, "No client identity loader"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    invoke-static {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;->loaderHolderOf(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    move-result-object v0

    .line 54
    const-string v1, "No password provider"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;->providerHolderOf(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    move-result-object v1

    .line 52
    invoke-direct {p0, p1, v0, v1, p4}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;-><init>(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;)V
    .locals 1
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;",
            ")V"
        }
    .end annotation

    .line 60
    .local p1, "paths":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/nio/file/Path;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;-><init>(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V
    .locals 1
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .param p4, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;",
            "Z)V"
        }
    .end annotation

    .line 65
    .local p1, "paths":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/nio/file/Path;>;"
    invoke-static {p1, p2, p3, p4}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->buildProviders(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;-><init>(Ljava/util/Collection;)V

    .line 66
    return-void
.end method

.method public static buildProviders(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)Ljava/util/List;
    .locals 2
    .param p1, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p2, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            ">;"
        }
    .end annotation

    .line 104
    .local p0, "paths":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/nio/file/Path;>;"
    nop

    .line 105
    const-string v0, "No client identity loader"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    invoke-static {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;->loaderHolderOf(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    move-result-object v0

    .line 106
    const-string v1, "No password provider"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;->providerHolderOf(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    move-result-object v1

    .line 104
    invoke-static {p0, v0, v1, p3}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->buildProviders(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static buildProviders(Ljava/util/Collection;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)Ljava/util/List;
    .locals 1
    .param p1, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p2, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            ">;"
        }
    .end annotation

    .line 113
    .local p0, "paths":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/nio/file/Path;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$buildProviders$1(Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;ZLjava/nio/file/Path;)Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;
    .locals 1
    .param p0, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p1, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .param p2, "strict"    # Z
    .param p3, "p"    # Ljava/nio/file/Path;

    .line 117
    new-instance v0, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;

    invoke-direct {v0, p3, p0, p1, p2}, Lorg/apache/sshd/client/config/keys/ClientIdentityFileWatcher;-><init>(Ljava/nio/file/Path;Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    return-object v0
.end method


# virtual methods
.method protected doGetKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;)Ljava/lang/Iterable;
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "p"    # Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 83
    :try_start_0
    invoke-interface {p2, p1}, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;->getClientIdentities(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object v0

    .line 84
    .local v0, "kp":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    if-nez v0, :cond_0

    .line 85
    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->log:Lorg/slf4j/Logger;

    const-string v2, "loadKeys({}) no key loaded"

    invoke-interface {v1, v2, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    return-object v0

    .line 91
    .end local v0    # "kp":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 92
    const-string v3, "loadKeys({}) failed ({}) to load key: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadKeys("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") key load failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$loadKeys$0$org-apache-sshd-client-config-keys-ClientIdentitiesWatcher(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "p"    # Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;

    .line 78
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->doGetKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
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
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected loadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/security/KeyPair;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 78
    .local p2, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/security/KeyPair;>;"
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->providers:Ljava/util/Collection;

    new-instance v1, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;Lorg/apache/sshd/common/session/SessionContext;)V

    invoke-static {v0, v1, p2}, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;->lazyKeysLoader(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
