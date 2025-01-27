.class final Lio/netty/handler/ssl/Java9SslUtils;
.super Ljava/lang/Object;
.source "Java9SslUtils.java"


# static fields
.field private static final GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

.field private static final GET_HANDSHAKE_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

.field private static final GET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

.field private static final SET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

.field private static final SET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 36
    const-class v0, Lio/netty/handler/ssl/Java9SslUtils;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/Java9SslUtils;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "getHandshakeApplicationProtocol":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 46
    .local v1, "getApplicationProtocol":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 47
    .local v2, "setApplicationProtocols":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 48
    .local v3, "setHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 51
    .local v4, "getHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 52
    .local v5, "context":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 53
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v6

    .line 54
    .local v6, "engine":Ljavax/net/ssl/SSLEngine;
    new-instance v7, Lio/netty/handler/ssl/Java9SslUtils$1;

    invoke-direct {v7}, Lio/netty/handler/ssl/Java9SslUtils$1;-><init>()V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    move-object v0, v7

    .line 60
    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v8, Lio/netty/handler/ssl/Java9SslUtils$2;

    invoke-direct {v8}, Lio/netty/handler/ssl/Java9SslUtils$2;-><init>()V

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    move-object v1, v8

    .line 67
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v8, Lio/netty/handler/ssl/Java9SslUtils$3;

    invoke-direct {v8}, Lio/netty/handler/ssl/Java9SslUtils$3;-><init>()V

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    move-object v2, v8

    .line 75
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    sget-object v11, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    aput-object v11, v10, v7

    invoke-virtual {v2, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v8, Lio/netty/handler/ssl/Java9SslUtils$4;

    invoke-direct {v8}, Lio/netty/handler/ssl/Java9SslUtils$4;-><init>()V

    .line 78
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    move-object v3, v8

    .line 84
    new-array v8, v9, [Ljava/lang/Object;

    new-instance v9, Lio/netty/handler/ssl/Java9SslUtils$5;

    invoke-direct {v9}, Lio/netty/handler/ssl/Java9SslUtils$5;-><init>()V

    aput-object v9, v8, v7

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v8, Lio/netty/handler/ssl/Java9SslUtils$6;

    invoke-direct {v8}, Lio/netty/handler/ssl/Java9SslUtils$6;-><init>()V

    .line 92
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    move-object v4, v8

    .line 98
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    nop

    .end local v5    # "context":Ljavax/net/ssl/SSLContext;
    .end local v6    # "engine":Ljavax/net/ssl/SSLEngine;
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v5

    .line 100
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lio/netty/handler/ssl/Java9SslUtils;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 101
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 100
    const-string v8, "Unable to initialize Java9SslUtils, but the detected javaVersion was: {}"

    invoke-interface {v6, v8, v7, v5}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    const/4 v2, 0x0

    .line 105
    const/4 v3, 0x0

    .line 106
    const/4 v4, 0x0

    .line 108
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_0
    sput-object v0, Lio/netty/handler/ssl/Java9SslUtils;->GET_HANDSHAKE_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    .line 109
    sput-object v1, Lio/netty/handler/ssl/Java9SslUtils;->GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    .line 110
    sput-object v2, Lio/netty/handler/ssl/Java9SslUtils;->SET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

    .line 111
    sput-object v3, Lio/netty/handler/ssl/Java9SslUtils;->SET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

    .line 112
    sput-object v4, Lio/netty/handler/ssl/Java9SslUtils;->GET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

    .line 113
    .end local v0    # "getHandshakeApplicationProtocol":Ljava/lang/reflect/Method;
    .end local v1    # "getApplicationProtocol":Ljava/lang/reflect/Method;
    .end local v2    # "setApplicationProtocols":Ljava/lang/reflect/Method;
    .end local v3    # "setHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    .end local v4    # "getHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method static getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p0, "sslEngine"    # Ljavax/net/ssl/SSLEngine;

    .line 124
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/Java9SslUtils;->GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 125
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    throw v0
.end method

.method static getHandshakeApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p0, "sslEngine"    # Ljavax/net/ssl/SSLEngine;

    .line 134
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/Java9SslUtils;->GET_HANDSHAKE_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 135
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    throw v0
.end method

.method static getHandshakeApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;)Ljava/util/function/BiFunction;
    .locals 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/Java9SslUtils;->GET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 170
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 171
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    throw v0
.end method

.method static setApplicationProtocols(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)V
    .locals 5
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "supportedProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 145
    .local v0, "parameters":Ljavax/net/ssl/SSLParameters;
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 147
    .local v1, "protocolArray":[Ljava/lang/String;
    :try_start_0
    sget-object v2, Lio/netty/handler/ssl/Java9SslUtils;->SET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .line 153
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 154
    return-void

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 148
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 149
    .local v2, "ex":Ljava/lang/UnsupportedOperationException;
    throw v2
.end method

.method static setHandshakeApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/function/BiFunction;)V
    .locals 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLEngine;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/Java9SslUtils;->SET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    nop

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 160
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    throw v0
.end method

.method static supportsAlpn()Z
    .locals 1

    .line 119
    sget-object v0, Lio/netty/handler/ssl/Java9SslUtils;->GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
