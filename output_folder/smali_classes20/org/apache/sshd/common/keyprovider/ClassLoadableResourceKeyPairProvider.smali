.class public Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;
.super Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;
.source "ClassLoadableResourceKeyPairProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private resources:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;-><init>(Ljava/util/Collection;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;-><init>(Ljava/lang/ClassLoader;Ljava/util/Collection;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "res"    # Ljava/lang/String;

    .line 56
    const-string v0, "No resource specified"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;-><init>(Ljava/lang/ClassLoader;Ljava/util/Collection;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p2, "resources":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->classLoader:Ljava/lang/ClassLoader;

    .line 66
    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->resources:Ljava/util/Collection;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "res"    # Ljava/lang/String;

    .line 52
    const-string v0, "No resource specified"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;-><init>(Ljava/util/Collection;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "resources":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->resolveDefaultClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->classLoader:Ljava/lang/ClassLoader;

    .line 61
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->resources:Ljava/util/Collection;

    .line 62
    return-void
.end method


# virtual methods
.method protected bridge synthetic getIoResource(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Object;)Lorg/apache/sshd/common/util/io/resource/IoResource;
    .locals 0

    .line 39
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->getIoResource(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;)Lorg/apache/sshd/common/util/io/resource/IoResource;

    move-result-object p1

    return-object p1
.end method

.method protected getIoResource(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;)Lorg/apache/sshd/common/util/io/resource/IoResource;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/util/io/resource/IoResource<",
            "*>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/ClassLoaderResource;

    invoke-virtual {p0}, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->resolveClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/sshd/common/util/io/resource/ClassLoaderResource;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-object v0
.end method

.method public getResourceLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getResources()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->resources:Ljava/util/Collection;

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

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->getResources()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected resolveClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->getResourceLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 97
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->resolveDefaultClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 100
    :cond_0
    return-object v0
.end method

.method public setResourceLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 82
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->classLoader:Ljava/lang/ClassLoader;

    .line 83
    return-void
.end method

.method public setResources(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "resources":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/ClassLoadableResourceKeyPairProvider;->resources:Ljava/util/Collection;

    .line 75
    return-void
.end method
