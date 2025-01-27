.class final Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;
.super Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
.source "OpenSslX509KeyManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenSslPopulatedKeyMaterialProvider"
.end annotation


# instance fields
.field private final materialMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/X509KeyManager;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p3, "aliases":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->materialMap:Ljava/util/Map;

    .line 187
    const/4 v0, 0x0

    .line 189
    .local v0, "initComplete":Z
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, "alias":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->materialMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 192
    :try_start_1
    iget-object v3, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->materialMap:Ljava/util/Map;

    sget-object v4, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-super {p0, v4, v2}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->chooseKeyMaterial(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    goto :goto_1

    .line 194
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->materialMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    goto :goto_0

    .line 201
    :cond_1
    const/4 v0, 0x1

    .line 203
    if-nez v0, :cond_2

    .line 204
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->destroy()V

    .line 207
    :cond_2
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->materialMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    return-void

    .line 208
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "aliases must be non-empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :catchall_0
    move-exception v1

    if-nez v0, :cond_4

    .line 204
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->destroy()V

    .line 206
    :cond_4
    throw v1
.end method


# virtual methods
.method chooseKeyMaterial(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 2
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->materialMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    return-object v1

    .line 219
    :cond_0
    instance-of v1, v0, Lio/netty/handler/ssl/OpenSslKeyMaterial;

    if-eqz v1, :cond_1

    .line 220
    move-object v1, v0

    check-cast v1, Lio/netty/handler/ssl/OpenSslKeyMaterial;

    invoke-interface {v1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->retain()Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object v1

    return-object v1

    .line 222
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    throw v1
.end method

.method destroy()V
    .locals 2

    .line 227
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->materialMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 228
    .local v1, "material":Ljava/lang/Object;
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 229
    .end local v1    # "material":Ljava/lang/Object;
    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;->materialMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 231
    return-void
.end method
