.class public abstract Lio/netty/handler/ssl/SslMasterKeyHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SslMasterKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;
    }
.end annotation


# static fields
.field private static final SSL_SESSIONIMPL_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SSL_SESSIONIMPL_MASTER_SECRET_FIELD:Ljava/lang/reflect/Field;

.field public static final SYSTEM_PROP_KEY:Ljava/lang/String; = "io.netty.ssl.masterKeyHandler"

.field private static final UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    const-class v0, Lio/netty/handler/ssl/SslMasterKeyHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 67
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 69
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-string v3, "sun.security.ssl.SSLSessionImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 70
    const-string v3, "masterSecret"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v2, v3

    .line 71
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/netty/util/internal/ReflectionUtil;->trySetAccessible(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 75
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Throwable;
    move-object v0, v3

    .line 74
    sget-object v4, Lio/netty/handler/ssl/SslMasterKeyHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "sun.security.ssl.SSLSessionImpl is unavailable."

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    sput-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 77
    sput-object v1, Lio/netty/handler/ssl/SslMasterKeyHandler;->SSL_SESSIONIMPL_CLASS:Ljava/lang/Class;

    .line 78
    sput-object v2, Lio/netty/handler/ssl/SslMasterKeyHandler;->SSL_SESSIONIMPL_MASTER_SECRET_FIELD:Ljava/lang/reflect/Field;

    .line 79
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 85
    return-void
.end method

.method public static ensureSunSslEngineAvailability()V
    .locals 3

    .line 92
    sget-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find SSLSessionImpl on classpath"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isSunSslEngineAvailable()Z
    .locals 1

    .line 110
    sget-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newWireSharkSslMasterKeyHandler()Lio/netty/handler/ssl/SslMasterKeyHandler;
    .locals 2

    .line 159
    new-instance v0, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;-><init>(Lio/netty/handler/ssl/SslMasterKeyHandler$1;)V

    return-object v0
.end method

.method public static sunSslEngineUnavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 104
    sget-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method protected abstract accept(Ljavax/crypto/SecretKey;Ljavax/net/ssl/SSLSession;)V
.end method

.method public final userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;

    .line 123
    sget-object v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-ne p2, v0, :cond_1

    .line 124
    const/4 v0, 0x0

    const-string v1, "io.netty.ssl.masterKeyHandler"

    invoke-static {v1, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    .local v0, "shouldHandle":Z
    if-eqz v0, :cond_1

    .line 127
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-class v2, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/SslHandler;

    .line 128
    .local v1, "handler":Lio/netty/handler/ssl/SslHandler;
    invoke-virtual {v1}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    .line 129
    .local v2, "engine":Ljavax/net/ssl/SSLEngine;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 132
    .local v3, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-static {}, Lio/netty/handler/ssl/SslMasterKeyHandler;->isSunSslEngineAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lio/netty/handler/ssl/SslMasterKeyHandler;->SSL_SESSIONIMPL_CLASS:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    :try_start_0
    sget-object v4, Lio/netty/handler/ssl/SslMasterKeyHandler;->SSL_SESSIONIMPL_MASTER_SECRET_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    nop

    .line 140
    invoke-virtual {p0, v4, v3}, Lio/netty/handler/ssl/SslMasterKeyHandler;->accept(Ljavax/crypto/SecretKey;Ljavax/net/ssl/SSLSession;)V

    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 136
    :catch_0
    move-exception v4

    .line 137
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Failed to access the field \'masterSecret\' via reflection."

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 141
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    if-eqz v4, :cond_1

    .line 142
    move-object v4, v2

    check-cast v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->masterKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    .line 143
    .local v4, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {p0, v4, v3}, Lio/netty/handler/ssl/SslMasterKeyHandler;->accept(Ljavax/crypto/SecretKey;Ljavax/net/ssl/SSLSession;)V

    nop

    .line 148
    .end local v0    # "shouldHandle":Z
    .end local v1    # "handler":Lio/netty/handler/ssl/SslHandler;
    .end local v2    # "engine":Ljavax/net/ssl/SSLEngine;
    .end local v3    # "sslSession":Ljavax/net/ssl/SSLSession;
    .end local v4    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    :goto_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 149
    return-void
.end method
