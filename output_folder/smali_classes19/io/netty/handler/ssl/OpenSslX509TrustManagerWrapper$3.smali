.class final Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;
.super Ljava/lang/Object;
.source "OpenSslX509TrustManagerWrapper.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$finalContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;->val$finalContext:Ljavax/net/ssl/SSLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 10

    .line 103
    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLContext;

    const-string v1, "contextSpi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 104
    .local v0, "contextSpiField":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    .line 105
    .local v1, "spiOffset":J
    iget-object v3, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;->val$finalContext:Ljavax/net/ssl/SSLContext;

    invoke-static {v3, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 106
    .local v3, "spi":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_1
    const-string v5, "trustManager"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 114
    .local v5, "trustManagerField":Ljava/lang/reflect/Field;
    invoke-static {v5}, Lio/netty/util/internal/PlatformDependent;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    .line 115
    .local v6, "tmOffset":J
    invoke-static {v3, v6, v7}, Lio/netty/util/internal/PlatformDependent;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 116
    .local v8, "trustManager":Ljava/lang/Object;
    instance-of v9, v8, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v9, :cond_0

    .line 117
    new-instance v9, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;

    invoke-direct {v9, v1, v2, v6, v7}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;-><init>(JJ)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v9

    .line 121
    .end local v5    # "trustManagerField":Ljava/lang/reflect/Field;
    .end local v6    # "tmOffset":J
    .end local v8    # "trustManager":Ljava/lang/Object;
    :cond_0
    goto :goto_1

    .line 119
    :catch_0
    move-exception v5

    .line 122
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    .line 123
    if-eqz v4, :cond_1

    goto :goto_0

    .line 125
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v4, Ljava/lang/NoSuchFieldException;

    invoke-direct {v4}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    .end local v0    # "contextSpiField":Ljava/lang/reflect/Field;
    .end local v1    # "spiOffset":J
    .end local v3    # "spi":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/SecurityException;
    return-object v0

    .line 126
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    return-object v0
.end method
