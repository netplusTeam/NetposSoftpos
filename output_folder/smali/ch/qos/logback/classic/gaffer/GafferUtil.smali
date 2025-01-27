.class public Lch/qos/logback/classic/gaffer/GafferUtil;
.super Ljava/lang/Object;
.source "GafferUtil.java"


# static fields
.field private static ERROR_MSG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "Failed to instantiate ch.qos.logback.classic.gaffer.GafferConfigurator"

    sput-object v0, Lch/qos/logback/classic/gaffer/GafferUtil;->ERROR_MSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addError(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Lch/qos/logback/classic/LoggerContext;
    .param p1, "origin"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lch/qos/logback/classic/gaffer/GafferUtil;->addError(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method private static addError(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/classic/LoggerContext;
    .param p1, "origin"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 72
    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 73
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    if-nez v0, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    invoke-direct {v1, p2, p1, p3}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 77
    return-void
.end method

.method private static newGafferConfiguratorInstance(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;)Lch/qos/logback/classic/gaffer/GafferConfigurator;
    .locals 5
    .param p0, "loggerContext"    # Lch/qos/logback/classic/LoggerContext;
    .param p1, "origin"    # Ljava/lang/Object;

    .line 50
    :try_start_0
    const-string v0, "ch.qos.logback.classic.gaffer.GafferConfigurator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "gcClass":Ljava/lang/Class;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lch/qos/logback/classic/LoggerContext;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 52
    .local v2, "c":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/gaffer/GafferConfigurator;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 61
    .end local v0    # "gcClass":Ljava/lang/Class;
    .end local v2    # "c":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lch/qos/logback/classic/gaffer/GafferUtil;->ERROR_MSG:Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lch/qos/logback/classic/gaffer/GafferUtil;->addError(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 59
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-object v1, Lch/qos/logback/classic/gaffer/GafferUtil;->ERROR_MSG:Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lch/qos/logback/classic/gaffer/GafferUtil;->addError(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lch/qos/logback/classic/gaffer/GafferUtil;->ERROR_MSG:Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lch/qos/logback/classic/gaffer/GafferUtil;->addError(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 55
    :catch_3
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lch/qos/logback/classic/gaffer/GafferUtil;->ERROR_MSG:Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lch/qos/logback/classic/gaffer/GafferUtil;->addError(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 53
    :catch_4
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lch/qos/logback/classic/gaffer/GafferUtil;->ERROR_MSG:Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lch/qos/logback/classic/gaffer/GafferUtil;->addError(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 64
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static runGafferConfiguratorOn(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/io/File;)V
    .locals 1
    .param p0, "loggerContext"    # Lch/qos/logback/classic/LoggerContext;
    .param p1, "origin"    # Ljava/lang/Object;
    .param p2, "configFile"    # Ljava/io/File;

    .line 34
    invoke-static {p0, p1}, Lch/qos/logback/classic/gaffer/GafferUtil;->newGafferConfiguratorInstance(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;)Lch/qos/logback/classic/gaffer/GafferConfigurator;

    move-result-object v0

    .line 35
    .local v0, "gafferConfigurator":Lch/qos/logback/classic/gaffer/GafferConfigurator;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p2}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->run(Ljava/io/File;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static runGafferConfiguratorOn(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/net/URL;)V
    .locals 1
    .param p0, "loggerContext"    # Lch/qos/logback/classic/LoggerContext;
    .param p1, "origin"    # Ljava/lang/Object;
    .param p2, "configFile"    # Ljava/net/URL;

    .line 41
    invoke-static {p0, p1}, Lch/qos/logback/classic/gaffer/GafferUtil;->newGafferConfiguratorInstance(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;)Lch/qos/logback/classic/gaffer/GafferConfigurator;

    move-result-object v0

    .line 42
    .local v0, "gafferConfigurator":Lch/qos/logback/classic/gaffer/GafferConfigurator;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p2}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->run(Ljava/net/URL;)V

    .line 45
    :cond_0
    return-void
.end method
