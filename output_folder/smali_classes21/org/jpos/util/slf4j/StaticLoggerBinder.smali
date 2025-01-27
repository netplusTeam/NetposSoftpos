.class public Lorg/jpos/util/slf4j/StaticLoggerBinder;
.super Ljava/lang/Object;
.source "StaticLoggerBinder.java"

# interfaces
.implements Lorg/slf4j/spi/LoggerFactoryBinder;


# static fields
.field public static REQUESTED_API_VERSION:Ljava/lang/String;

.field private static final SINGLETON:Lorg/jpos/util/slf4j/StaticLoggerBinder;

.field private static final loggerFactoryClassStr:Ljava/lang/String;


# instance fields
.field private final loggerFactory:Lorg/slf4j/ILoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "1.6.99"

    sput-object v0, Lorg/jpos/util/slf4j/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 30
    const-class v0, Lorg/jpos/util/slf4j/JPOSLoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jpos/util/slf4j/StaticLoggerBinder;->loggerFactoryClassStr:Ljava/lang/String;

    .line 31
    new-instance v0, Lorg/jpos/util/slf4j/StaticLoggerBinder;

    invoke-direct {v0}, Lorg/jpos/util/slf4j/StaticLoggerBinder;-><init>()V

    sput-object v0, Lorg/jpos/util/slf4j/StaticLoggerBinder;->SINGLETON:Lorg/jpos/util/slf4j/StaticLoggerBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/jpos/util/slf4j/JPOSLoggerFactory;

    invoke-direct {v0}, Lorg/jpos/util/slf4j/JPOSLoggerFactory;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/slf4j/StaticLoggerBinder;->loggerFactory:Lorg/slf4j/ILoggerFactory;

    .line 41
    return-void
.end method

.method public static final getSingleton()Lorg/jpos/util/slf4j/StaticLoggerBinder;
    .locals 1

    .line 35
    sget-object v0, Lorg/jpos/util/slf4j/StaticLoggerBinder;->SINGLETON:Lorg/jpos/util/slf4j/StaticLoggerBinder;

    return-object v0
.end method


# virtual methods
.method public getLoggerFactory()Lorg/slf4j/ILoggerFactory;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jpos/util/slf4j/StaticLoggerBinder;->loggerFactory:Lorg/slf4j/ILoggerFactory;

    return-object v0
.end method

.method public getLoggerFactoryClassStr()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lorg/jpos/util/slf4j/StaticLoggerBinder;->loggerFactoryClassStr:Ljava/lang/String;

    return-object v0
.end method
