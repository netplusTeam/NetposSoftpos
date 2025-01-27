.class final Lio/netty/handler/ssl/Conscrypt;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# static fields
.field private static final CAN_INSTANCE_PROVIDER:Z

.field private static final IS_CONSCRYPT_SSLENGINE:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Lio/netty/handler/ssl/Conscrypt;->loadIsConscryptEngine()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/Conscrypt;->IS_CONSCRYPT_SSLENGINE:Ljava/lang/reflect/Method;

    .line 31
    invoke-static {}, Lio/netty/handler/ssl/Conscrypt;->canInstanceProvider()Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/Conscrypt;->CAN_INSTANCE_PROVIDER:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canInstanceProvider()Z
    .locals 3

    .line 46
    :try_start_0
    const-string v0, "org.conscrypt.OpenSSLProvider"

    const-class v1, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 46
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    return v2

    .line 50
    .end local v0    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "ignore":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method static isAvailable()Z
    .locals 2

    .line 59
    sget-boolean v0, Lio/netty/handler/ssl/Conscrypt;->CAN_INSTANCE_PROVIDER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/ssl/Conscrypt;->IS_CONSCRYPT_SSLENGINE:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isConscryptEngine(Ljavax/net/ssl/SSLEngine;)Z
    .locals 4
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 68
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lio/netty/handler/ssl/Conscrypt;->IS_CONSCRYPT_SSLENGINE:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 69
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "ignore":Ljava/lang/IllegalAccessException;
    return v0
.end method

.method static isEngineSupported(Ljavax/net/ssl/SSLEngine;)Z
    .locals 1
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 63
    invoke-static {}, Lio/netty/handler/ssl/Conscrypt;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/netty/handler/ssl/Conscrypt;->isConscryptEngine(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static loadIsConscryptEngine()Ljava/lang/reflect/Method;
    .locals 5

    .line 35
    :try_start_0
    const-string v0, "org.conscrypt.Conscrypt"

    const-class v1, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 35
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    .local v0, "conscryptClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "isConscrypt"

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljavax/net/ssl/SSLEngine;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 38
    .end local v0    # "conscryptClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    .line 40
    .local v0, "ignore":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method
