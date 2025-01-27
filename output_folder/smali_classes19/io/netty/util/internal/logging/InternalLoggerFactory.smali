.class public abstract Lio/netty/util/internal/logging/InternalLoggerFactory;
.super Ljava/lang/Object;
.source "InternalLoggerFactory.java"


# static fields
.field private static volatile defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFactory()Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 1

    .line 68
    sget-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    if-nez v0, :cond_0

    .line 69
    const-class v0, Lio/netty/util/internal/logging/InternalLoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newDefaultFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 71
    :cond_0
    sget-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/netty/util/internal/logging/InternalLogger;"
        }
    .end annotation

    .line 85
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 92
    invoke-static {}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getDefaultFactory()Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    return-object v0
.end method

.method private static newDefaultFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    :try_start_0
    new-instance v0, Lio/netty/util/internal/logging/Slf4JLoggerFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/util/internal/logging/Slf4JLoggerFactory;-><init>(Z)V

    .line 45
    .local v0, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    invoke-virtual {v0, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Using SLF4J as the default logging framework"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_0

    .line 46
    .end local v0    # "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    :catchall_0
    move-exception v0

    .line 48
    .local v0, "ignore1":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lio/netty/util/internal/logging/Log4J2LoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 49
    .local v1, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    invoke-virtual {v1, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Using Log4J2 as the default logging framework"

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    move-object v0, v1

    goto :goto_0

    .line 50
    .end local v1    # "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    :catchall_1
    move-exception v1

    .line 52
    .local v1, "ignore2":Ljava/lang/Throwable;
    :try_start_2
    sget-object v2, Lio/netty/util/internal/logging/Log4JLoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 53
    .local v2, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    invoke-virtual {v2, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    const-string v4, "Using Log4J as the default logging framework"

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 57
    move-object v0, v2

    goto :goto_0

    .line 54
    .end local v2    # "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    :catchall_2
    move-exception v2

    .line 55
    .local v2, "ignore3":Ljava/lang/Throwable;
    sget-object v3, Lio/netty/util/internal/logging/JdkLoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 56
    .local v3, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    invoke-virtual {v3, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    const-string v5, "Using java.util.logging as the default logging framework"

    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    move-object v0, v3

    .line 60
    .end local v1    # "ignore2":Ljava/lang/Throwable;
    .end local v2    # "ignore3":Ljava/lang/Throwable;
    .end local v3    # "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    .local v0, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    :goto_0
    return-object v0
.end method

.method public static setDefaultFactory(Lio/netty/util/internal/logging/InternalLoggerFactory;)V
    .locals 1
    .param p0, "defaultFactory"    # Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 78
    const-string v0, "defaultFactory"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/logging/InternalLoggerFactory;

    sput-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 79
    return-void
.end method


# virtual methods
.method protected abstract newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;
.end method
