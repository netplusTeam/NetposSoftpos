.class public Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;
.super Ljava/lang/Object;
.source "ConfigurationWatchListUtil.java"


# static fields
.field static final origin:Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;

    invoke-direct {v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;-><init>()V

    sput-object v0, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->origin:Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static addInfo(Lch/qos/logback/core/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .line 101
    new-instance v0, Lch/qos/logback/core/status/InfoStatus;

    sget-object v1, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->origin:Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->addStatus(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/Status;)V

    .line 102
    return-void
.end method

.method static addStatus(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/Status;)V
    .locals 3
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "s"    # Lch/qos/logback/core/status/Status;

    .line 90
    if-nez p0, :cond_0

    .line 91
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null context in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 95
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    if-nez v0, :cond_1

    .line 96
    return-void

    .line 97
    :cond_1
    invoke-interface {v0, p1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 98
    return-void
.end method

.method public static addToWatchList(Lch/qos/logback/core/Context;Ljava/net/URL;)V
    .locals 3
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "url"    # Ljava/net/URL;

    .line 63
    invoke-static {p0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v0

    .line 64
    .local v0, "cwl":Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    if-nez v0, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null ConfigurationWatchList. Cannot add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->addWarn(Lch/qos/logback/core/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to configuration watch list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->addInfo(Lch/qos/logback/core/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->addToWatchList(Ljava/net/URL;)V

    .line 70
    :goto_0
    return-void
.end method

.method static addWarn(Lch/qos/logback/core/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .line 105
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    sget-object v1, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->origin:Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->addStatus(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/Status;)V

    .line 106
    return-void
.end method

.method public static getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    .locals 1
    .param p0, "context"    # Lch/qos/logback/core/Context;

    .line 86
    const-string v0, "CONFIGURATION_WATCH_LIST"

    invoke-interface {p0, v0}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    return-object v0
.end method

.method public static getMainWatchURL(Lch/qos/logback/core/Context;)Ljava/net/URL;
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;

    .line 54
    invoke-static {p0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v0

    .line 55
    .local v0, "cwl":Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    return-object v1

    .line 58
    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->getMainURL()Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public static registerConfigurationWatchList(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/ConfigurationWatchList;)V
    .locals 1
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "cwl"    # Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    .line 38
    const-string v0, "CONFIGURATION_WATCH_LIST"

    invoke-interface {p0, v0, p1}, Lch/qos/logback/core/Context;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static setMainWatchURL(Lch/qos/logback/core/Context;Ljava/net/URL;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "url"    # Ljava/net/URL;

    .line 41
    invoke-static {p0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v0

    .line 42
    .local v0, "cwl":Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    if-nez v0, :cond_0

    .line 43
    new-instance v1, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    invoke-direct {v1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;-><init>()V

    move-object v0, v1

    .line 44
    invoke-virtual {v0, p0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->setContext(Lch/qos/logback/core/Context;)V

    .line 45
    const-string v1, "CONFIGURATION_WATCH_LIST"

    invoke-interface {p0, v1, v0}, Lch/qos/logback/core/Context;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->clear()V

    .line 50
    :goto_0
    invoke-virtual {v0, p1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->setMainURL(Ljava/net/URL;)V

    .line 51
    return-void
.end method
