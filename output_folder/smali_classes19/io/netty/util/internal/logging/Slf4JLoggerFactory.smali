.class public Lio/netty/util/internal/logging/Slf4JLoggerFactory;
.super Lio/netty/util/internal/logging/InternalLoggerFactory;
.source "Slf4JLoggerFactory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    nop

    .line 31
    new-instance v0, Lio/netty/util/internal/logging/Slf4JLoggerFactory;

    invoke-direct {v0}, Lio/netty/util/internal/logging/Slf4JLoggerFactory;-><init>()V

    sput-object v0, Lio/netty/util/internal/logging/Slf4JLoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "failIfNOP"    # Z

    .line 40
    invoke-direct {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;-><init>()V

    .line 41
    if-eqz p1, :cond_1

    .line 42
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    instance-of v0, v0, Lorg/slf4j/helpers/NOPLoggerFactory;

    if-nez v0, :cond_0

    .line 45
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    const-string v1, "NOPLoggerFactory not supported"

    invoke-direct {v0, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static wrapLogger(Lorg/slf4j/Logger;)Lio/netty/util/internal/logging/InternalLogger;
    .locals 2
    .param p0, "logger"    # Lorg/slf4j/Logger;

    .line 54
    instance-of v0, p0, Lorg/slf4j/spi/LocationAwareLogger;

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;

    move-object v1, p0

    check-cast v1, Lorg/slf4j/spi/LocationAwareLogger;

    invoke-direct {v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/logging/Slf4JLogger;

    invoke-direct {v0, p0}, Lio/netty/util/internal/logging/Slf4JLogger;-><init>(Lorg/slf4j/Logger;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/Slf4JLoggerFactory;->wrapLogger(Lorg/slf4j/Logger;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    return-object v0
.end method
