.class public Lch/qos/logback/core/util/ContextUtil;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "ContextUtil.java"


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 36
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lch/qos/logback/core/util/ContextUtil;->setContext(Lch/qos/logback/core/Context;)V

    .line 38
    return-void
.end method

.method private static acceptableAddress(Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 64
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getFilenameCollisionMap(Lch/qos/logback/core/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    const-string v0, "FA_FILENAME_COLLISION_MAP"

    invoke-interface {p0, v0}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 101
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public static getFilenamePatternCollisionMap(Lch/qos/logback/core/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/rolling/helper/FileNamePattern;",
            ">;"
        }
    .end annotation

    .line 105
    if-nez p0, :cond_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    const-string v0, "RFA_FILENAME_PATTERN_COLLISION_MAP"

    invoke-interface {p0, v0}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 109
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lch/qos/logback/core/rolling/helper/FileNamePattern;>;"
    return-object v0
.end method

.method private static getLocalAddressAsString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 50
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 51
    .local v0, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 53
    .local v1, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 55
    .local v2, "address":Ljava/net/InetAddress;
    invoke-static {v2}, Lch/qos/logback/core/util/ContextUtil;->acceptableAddress(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 58
    .end local v2    # "address":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 59
    .end local v1    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    goto :goto_0

    .line 60
    :cond_2
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    throw v1
.end method

.method public static getLocalHostName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 43
    .local v0, "localhost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 44
    .end local v0    # "localhost":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {}, Lch/qos/logback/core/util/ContextUtil;->getLocalAddressAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addFrameworkPackage(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    .local p1, "frameworkPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-void
.end method

.method public addGroovyPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "frameworkPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "org.codehaus.groovy.runtime"

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/util/ContextUtil;->addFrameworkPackage(Ljava/util/List;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public addProperties(Ljava/util/Properties;)V
    .locals 4
    .param p1, "props"    # Ljava/util/Properties;

    .line 85
    if-nez p1, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lch/qos/logback/core/util/ContextUtil;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lch/qos/logback/core/Context;->putProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method

.method public safelyGetLocalHostName()Ljava/lang/String;
    .locals 2

    .line 72
    const-string v0, "Failed to get local hostname"

    :try_start_0
    invoke-static {}, Lch/qos/logback/core/util/ContextUtil;->getLocalHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v0, "localhostName":Ljava/lang/String;
    return-object v0

    .line 78
    .end local v0    # "localhostName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/util/ContextUtil;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 76
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/util/ContextUtil;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/net/SocketException;
    goto :goto_0

    .line 74
    :catch_2
    move-exception v1

    .line 75
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/util/ContextUtil;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_0
    nop

    .line 81
    :goto_1
    const-string v0, "UNKNOWN_LOCALHOST"

    return-object v0
.end method
