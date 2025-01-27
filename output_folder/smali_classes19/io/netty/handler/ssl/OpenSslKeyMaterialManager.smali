.class final Lio/netty/handler/ssl/OpenSslKeyMaterialManager;
.super Ljava/lang/Object;
.source "OpenSslKeyMaterialManager.java"


# static fields
.field private static final KEY_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY_TYPE_DH_RSA:Ljava/lang/String; = "DH_RSA"

.field static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field static final KEY_TYPE_EC_EC:Ljava/lang/String; = "EC_EC"

.field static final KEY_TYPE_EC_RSA:Ljava/lang/String; = "EC_RSA"

.field static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"


# instance fields
.field private final provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->KEY_TYPES:Ljava/util/Map;

    .line 51
    const-string v1, "RSA"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v2, "DHE_RSA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "ECDHE_RSA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "ECDHE_ECDSA"

    const-string v2, "EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "ECDH_RSA"

    const-string v2, "EC_RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "ECDH_ECDSA"

    const-string v2, "EC_EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "DH_RSA"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V
    .locals 0
    .param p1, "provider"    # Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    .line 64
    return-void
.end method

.method private chooseClientAlias(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 2
    .param p1, "engine"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuer"    # [Ljavax/security/auth/x500/X500Principal;

    .line 113
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->keyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 114
    .local v0, "manager":Ljavax/net/ssl/X509KeyManager;
    instance-of v1, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_0

    .line 115
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v1, p2, p3, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private chooseServerAlias(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "engine"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p2, "type"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->keyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 122
    .local v0, "manager":Ljavax/net/ssl/X509KeyManager;
    instance-of v1, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 123
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v1, p2, v2, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 125
    :cond_0
    invoke-interface {v0, p2, v2, v2}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setKeyMaterial(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Z
    .locals 3
    .param p1, "engine"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "keyMaterial":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    iget-object v2, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {v1, v2, p2}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->chooseKeyMaterial(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object v1

    move-object v0, v1

    .line 100
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setKeyMaterial(Lio/netty/handler/ssl/OpenSslKeyMaterial;)Z

    move-result v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 106
    :goto_1
    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->release()Z

    .line 100
    :cond_2
    return v1

    .line 106
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljavax/net/ssl/SSLException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "keyMaterial":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .end local p1    # "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .end local p2    # "alias":Ljava/lang/String;
    throw v2

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "keyMaterial":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .restart local p1    # "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .restart local p2    # "alias":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Ljavax/net/ssl/SSLException;
    nop

    .end local v0    # "keyMaterial":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .end local p1    # "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .end local p2    # "alias":Ljava/lang/String;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    .restart local v0    # "keyMaterial":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .restart local p1    # "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .restart local p2    # "alias":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->release()Z

    .line 109
    :cond_3
    throw v1
.end method


# virtual methods
.method setKeyMaterialClientSide(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "engine"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuer"    # [Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->chooseClientAlias(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->setKeyMaterial(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Z

    .line 94
    :cond_0
    return-void
.end method

.method setKeyMaterialServerSide(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V
    .locals 8
    .param p1, "engine"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->authMethods()[Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "authMethods":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 72
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 73
    .local v4, "authMethod":Ljava/lang/String;
    sget-object v5, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->KEY_TYPES:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 74
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 75
    invoke-direct {p0, p1, v5}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->chooseServerAlias(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "alias":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    invoke-direct {p0, p1, v6}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->setKeyMaterial(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 78
    return-void

    .line 72
    .end local v4    # "authMethod":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "alias":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method
