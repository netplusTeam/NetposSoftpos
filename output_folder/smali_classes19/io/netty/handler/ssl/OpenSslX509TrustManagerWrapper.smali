.class final Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;
.super Ljava/lang/Object;
.source "OpenSslX509TrustManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;,
        Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;
    }
.end annotation


# static fields
.field private static final LOGGER:Lio/netty/util/internal/logging/InternalLogger;

.field private static final WRAPPER:Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 45
    const-class v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;

    .line 46
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    .line 51
    new-instance v1, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$1;

    invoke-direct {v1}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$1;-><init>()V

    .line 58
    .local v1, "wrapper":Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;
    const/4 v2, 0x0

    .line 59
    .local v2, "cause":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getUnsafeUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 60
    .local v3, "unsafeCause":Ljava/lang/Throwable;
    const-string v4, "Unable to access wrapped TrustManager"

    if-nez v3, :cond_2

    .line 63
    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->newSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 71
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    new-instance v7, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$2;

    invoke-direct {v7}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$2;-><init>()V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_0

    .line 91
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "error":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 93
    .local v5, "context":Ljavax/net/ssl/SSLContext;
    move-object v2, v0

    move-object v0, v5

    .line 95
    .end local v5    # "context":Ljavax/net/ssl/SSLContext;
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :goto_0
    if-eqz v2, :cond_0

    .line 96
    sget-object v5, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 98
    :cond_0
    move-object v5, v0

    .line 99
    .local v5, "finalContext":Ljavax/net/ssl/SSLContext;
    new-instance v6, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;

    invoke-direct {v6, v5}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    .line 133
    .local v6, "maybeWrapper":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 134
    sget-object v7, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    invoke-interface {v7, v4, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 136
    :cond_1
    move-object v1, v6

    check-cast v1, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;

    .line 139
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    .end local v5    # "finalContext":Ljavax/net/ssl/SSLContext;
    .end local v6    # "maybeWrapper":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 140
    :cond_2
    invoke-interface {v0, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_2
    sput-object v1, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->WRAPPER:Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;

    .line 143
    .end local v1    # "wrapper":Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v3    # "unsafeCause":Ljava/lang/Throwable;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 44
    invoke-static {}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->newSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method private static newSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 156
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method static wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 148
    sget-object v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->WRAPPER:Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;

    invoke-interface {v0, p0}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;->wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method
