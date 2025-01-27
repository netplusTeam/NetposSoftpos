.class public abstract Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractSecurityProviderRegistrar.java"

# interfaces
.implements Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;


# instance fields
.field private final name:Ljava/lang/String;

.field protected final props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final providerHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field protected final supportedEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->props:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->supportedEntities:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->providerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    const-string v0, "No name provided"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->name:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic lambda$isSecurityEntitySupported$0(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .param p0, "k"    # Ljava/lang/Class;

    .line 63
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method protected createProviderInstance(Ljava/lang/String;)Ljava/security/Provider;
    .locals 1
    .param p1, "providerClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->createProviderInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getOrCreateProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 6
    .param p1, "providerClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "created":Z
    iget-object v1, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->providerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->providerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider;

    .line 100
    .local v2, "provider":Ljava/security/Provider;
    if-eqz v2, :cond_0

    .line 101
    monitor-exit v1

    return-object v2

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    move-object v2, v3

    .line 105
    if-nez v2, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->createProviderInstance(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    move-object v2, v3

    .line 107
    const/4 v0, 0x1

    .line 109
    :cond_1
    iget-object v3, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->providerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 110
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    iget-object v1, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->log:Lorg/slf4j/Logger;

    const-string v3, "getOrCreateProvider({}) created instance of {}"

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->log:Lorg/slf4j/Logger;

    const-string v3, "getOrCreateProvider({}) resolved instance of {}"

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :goto_0
    return-object v2

    .line 110
    .end local v2    # "provider":Ljava/security/Provider;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 93
    .end local v0    # "created":Z
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Provider not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->props:Ljava/util/Map;

    return-object v0
.end method

.method public isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 61
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->supportedEntities:Ljava/util/Map;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->supportedEntities:Ljava/util/Map;

    new-instance v2, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 64
    .local v1, "supportMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    monitor-enter v1

    .line 68
    :try_start_1
    new-instance v0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 70
    .local v0, "supportFlag":Ljava/lang/Boolean;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 70
    .end local v0    # "supportFlag":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 64
    .end local v1    # "supportMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method synthetic lambda$isSecurityEntitySupported$1$org-apache-sshd-common-util-security-AbstractSecurityProviderRegistrar(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "entityType"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "k"    # Ljava/lang/String;

    .line 69
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
