.class public Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;
.super Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;
.source "EdDSASecurityProviderRegistrar.java"


# static fields
.field public static final PROVIDER_CLASS:Ljava/lang/String; = "net.i2p.crypto.eddsa.EdDSASecurityProvider"


# instance fields
.field private final supportHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    const-string v0, "EdDSA"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->supportHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    return-void
.end method


# virtual methods
.method public getSecurityProvider()Ljava/security/Provider;
    .locals 7

    .line 59
    const-string v0, "net.i2p.crypto.eddsa.EdDSASecurityProvider"

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->getOrCreateProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "t":Ljava/lang/ReflectiveOperationException;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 62
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 63
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v0, 0x3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 62
    const-string v0, "getSecurityProvider({}) failed ({}) to instantiate {}: {}"

    invoke-interface {v3, v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    instance-of v0, v2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, v2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 48
    invoke-super {p0}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x1

    const-string v1, "org.apache.sshd.eddsaSupport"

    invoke-virtual {p0, v1, v0}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
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

    .line 74
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    return v1

    .line 78
    :cond_0
    const-class v0, Ljava/security/KeyPairGenerator;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-class v0, Ljava/security/KeyFactory;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    const-class v0, Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v3, "NONEwithEdDSA"

    invoke-static {v3, p2, v0}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 84
    :cond_3
    return v1

    .line 80
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {p2, v0, v3}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public isSupported()Z
    .locals 4

    .line 91
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->supportHolder:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->supportHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 93
    .local v1, "supported":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->resolveDefaultClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 98
    .local v2, "cl":Ljava/lang/ClassLoader;
    const-string v3, "net.i2p.crypto.eddsa.EdDSAKey"

    invoke-static {v2, v3}, Lorg/apache/sshd/common/util/ReflectionUtils;->isClassAvailable(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v1, v3

    .line 99
    iget-object v3, p0, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderRegistrar;->supportHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 100
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 100
    .end local v1    # "supported":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
