.class final Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;
.super Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
.source "OpenSslCachingKeyMaterialProvider.java"


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lio/netty/handler/ssl/OpenSslKeyMaterial;",
            ">;"
        }
    .end annotation
.end field

.field private volatile full:Z

.field private final maxCachedEntries:I


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;I)V
    .locals 1
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "maxCachedEntries"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 37
    iput p3, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->maxCachedEntries:I

    .line 38
    return-void
.end method


# virtual methods
.method chooseKeyMaterial(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 3
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/OpenSslKeyMaterial;

    .line 43
    .local v0, "material":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    if-nez v0, :cond_3

    .line 44
    invoke-super {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->chooseKeyMaterial(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 47
    const/4 v1, 0x0

    return-object v1

    .line 50
    :cond_0
    iget-boolean v1, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->full:Z

    if-eqz v1, :cond_1

    .line 51
    return-object v0

    .line 53
    :cond_1
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    iget v2, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->maxCachedEntries:I

    if-le v1, v2, :cond_2

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->full:Z

    .line 56
    return-object v0

    .line 58
    :cond_2
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/OpenSslKeyMaterial;

    .line 59
    .local v1, "old":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    if-eqz v1, :cond_3

    .line 60
    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->release()Z

    .line 61
    move-object v0, v1

    .line 65
    .end local v1    # "old":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    :cond_3
    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->retain()Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object v1

    return-object v1
.end method

.method destroy()V
    .locals 2

    .line 72
    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/ssl/OpenSslKeyMaterial;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/OpenSslKeyMaterial;

    invoke-interface {v1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->release()Z

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 77
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/ssl/OpenSslKeyMaterial;>;"
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    return-void

    .line 77
    :cond_1
    goto :goto_0
.end method
