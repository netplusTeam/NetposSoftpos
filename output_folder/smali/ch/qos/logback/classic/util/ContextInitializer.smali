.class public Lch/qos/logback/classic/util/ContextInitializer;
.super Ljava/lang/Object;
.source "ContextInitializer.java"


# static fields
.field public static final AUTOCONFIG_FILE:Ljava/lang/String; = "logback.xml"

.field public static final CONFIG_FILE_PROPERTY:Ljava/lang/String; = "logback.configurationFile"

.field public static final GROOVY_AUTOCONFIG_FILE:Ljava/lang/String; = "logback.groovy"

.field public static final TEST_AUTOCONFIG_FILE:Ljava/lang/String; = "logback-test.xml"


# instance fields
.field final loggerContext:Lch/qos/logback/classic/LoggerContext;


# direct methods
.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;)V
    .locals 0
    .param p1, "loggerContext"    # Lch/qos/logback/classic/LoggerContext;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    .line 56
    return-void
.end method

.method private findConfigFileURLFromSystemProperties(Ljava/lang/ClassLoader;Z)Ljava/net/URL;
    .locals 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "updateStatus"    # Z

    .line 88
    const-string v0, "logback.configurationFile"

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "logbackConfigFile":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "result":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 93
    nop

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-direct {p0, v0, p1, v1}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URL;)V

    :cond_0
    return-object v1

    .line 110
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-static {v0, p1}, Lch/qos/logback/core/util/Loader;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 98
    if-eqz v1, :cond_2

    .line 99
    nop

    .line 110
    if-eqz p2, :cond_1

    .line 111
    invoke-direct {p0, v0, p1, v1}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URL;)V

    :cond_1
    return-object v1

    .line 101
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    .line 104
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v4

    .line 105
    nop

    .line 110
    if-eqz p2, :cond_3

    .line 111
    invoke-direct {p0, v0, p1, v1}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URL;)V

    :cond_3
    return-object v1

    .line 106
    :catch_1
    move-exception v4

    .line 110
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v3    # "f":Ljava/io/File;
    :cond_4
    if-eqz p2, :cond_6

    .line 111
    invoke-direct {p0, v0, p1, v1}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URL;)V

    goto :goto_1

    .line 110
    :goto_0
    if-eqz p2, :cond_5

    .line 111
    invoke-direct {p0, v0, p1, v1}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URL;)V

    :cond_5
    throw v2

    .line 115
    .end local v1    # "result":Ljava/net/URL;
    :cond_6
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getResource(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/net/URL;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "myClassLoader"    # Ljava/lang/ClassLoader;
    .param p3, "updateStatus"    # Z

    .line 139
    invoke-static {p1, p2}, Lch/qos/logback/core/util/Loader;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v0

    .line 140
    .local v0, "url":Ljava/net/URL;
    if-eqz p3, :cond_0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URL;)V

    .line 143
    :cond_0
    return-object v0
.end method

.method private multiplicityWarning(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 9
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 180
    const-string v0, "]"

    const/4 v1, 0x0

    .line 181
    .local v1, "urlSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    iget-object v2, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v2}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v2

    .line 183
    .local v2, "sm":Lch/qos/logback/core/status/StatusManager;
    :try_start_0
    invoke-static {p1, p2}, Lch/qos/logback/core/util/Loader;->getResources(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get url list for resource ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v4, v5, v6, v3}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {v2, v4}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 187
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 188
    new-instance v3, Lch/qos/logback/core/status/WarnStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] occurs multiple times on the classpath."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v3, v4, v6}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 189
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    .line 190
    .local v4, "url":Ljava/net/URL;
    new-instance v6, Lch/qos/logback/core/status/WarnStatus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] occurs at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v6, v7, v8}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 191
    .end local v4    # "url":Ljava/net/URL;
    goto :goto_1

    .line 193
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .locals 5
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "url"    # Ljava/net/URL;

    .line 170
    iget-object v0, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 171
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    const-string v1, "]"

    if-nez p3, :cond_0

    .line 172
    new-instance v2, Lch/qos/logback/core/status/InfoStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could NOT find resource ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v2, v1, v3}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    goto :goto_0

    .line 174
    :cond_0
    new-instance v2, Lch/qos/logback/core/status/InfoStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found resource ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] at ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v2, v1, v3}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 175
    invoke-direct {p0, p1, p2}, Lch/qos/logback/classic/util/ContextInitializer;->multiplicityWarning(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 177
    :goto_0
    return-void
.end method


# virtual methods
.method public autoConfig()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-static {v0}, Lch/qos/logback/core/util/StatusListenerConfigHelper;->installIfAsked(Lch/qos/logback/core/Context;)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/util/ContextInitializer;->findURLOfDefaultConfigurationFile(Z)Ljava/net/URL;

    move-result-object v1

    .line 149
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Lch/qos/logback/classic/util/ContextInitializer;->configureByResource(Ljava/net/URL;)V

    goto :goto_1

    .line 152
    :cond_0
    const-class v2, Lch/qos/logback/classic/spi/Configurator;

    invoke-static {v2}, Lch/qos/logback/classic/util/EnvUtil;->loadFromServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/spi/Configurator;

    .line 153
    .local v2, "c":Lch/qos/logback/classic/spi/Configurator;
    if-eqz v2, :cond_2

    .line 155
    :try_start_0
    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v2, v3}, Lch/qos/logback/classic/spi/Configurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 156
    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v2, v3}, Lch/qos/logback/classic/spi/Configurator;->configure(Lch/qos/logback/classic/LoggerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_1

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lch/qos/logback/core/LogbackException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, "null"

    :goto_0
    aput-object v6, v0, v5

    const-string v5, "Failed to initialize Configurator: %s using ServiceLoader"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lch/qos/logback/core/LogbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 162
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Lch/qos/logback/classic/BasicConfigurator;

    invoke-direct {v0}, Lch/qos/logback/classic/BasicConfigurator;-><init>()V

    .line 163
    .local v0, "basicConfigurator":Lch/qos/logback/classic/BasicConfigurator;
    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0, v3}, Lch/qos/logback/classic/BasicConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 164
    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0, v3}, Lch/qos/logback/classic/BasicConfigurator;->configure(Lch/qos/logback/classic/LoggerContext;)V

    .line 167
    .end local v0    # "basicConfigurator":Lch/qos/logback/classic/BasicConfigurator;
    .end local v2    # "c":Lch/qos/logback/classic/spi/Configurator;
    :goto_1
    return-void
.end method

.method public configureByResource(Ljava/net/URL;)V
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 59
    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "urlString":Ljava/lang/String;
    const-string v1, "groovy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-static {}, Lch/qos/logback/classic/util/EnvUtil;->isGroovyAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-static {v1, p0, p1}, Lch/qos/logback/classic/gaffer/GafferUtil;->runGafferConfiguratorOn(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/net/URL;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v1}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v1

    .line 70
    .local v1, "sm":Lch/qos/logback/core/status/StatusManager;
    new-instance v2, Lch/qos/logback/core/status/ErrorStatus;

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    const-string v4, "Groovy classes are not available on the class path. ABORTING INITIALIZATION."

    invoke-direct {v2, v4, v3}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 71
    .end local v1    # "sm":Lch/qos/logback/core/status/StatusManager;
    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    new-instance v1, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    .line 74
    .local v1, "configurator":Lch/qos/logback/classic/joran/JoranConfigurator;
    iget-object v2, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v1, v2}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 75
    invoke-virtual {v1, p1}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/net/URL;)V

    .line 76
    .end local v1    # "configurator":Lch/qos/logback/classic/joran/JoranConfigurator;
    nop

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_2
    new-instance v1, Lch/qos/logback/core/LogbackException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected filename extension of file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. Should be either .groovy or .xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/qos/logback/core/LogbackException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v0    # "urlString":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findURLOfDefaultConfigurationFile(Z)Ljava/net/URL;
    .locals 3
    .param p1, "updateStatus"    # Z

    .line 119
    invoke-static {p0}, Lch/qos/logback/core/util/Loader;->getClassLoaderOfObject(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 120
    .local v0, "myClassLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v0, p1}, Lch/qos/logback/classic/util/ContextInitializer;->findConfigFileURLFromSystemProperties(Ljava/lang/ClassLoader;Z)Ljava/net/URL;

    move-result-object v1

    .line 121
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 122
    return-object v1

    .line 125
    :cond_0
    const-string v2, "logback-test.xml"

    invoke-direct {p0, v2, v0, p1}, Lch/qos/logback/classic/util/ContextInitializer;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/net/URL;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_1

    .line 127
    return-object v1

    .line 130
    :cond_1
    const-string v2, "logback.groovy"

    invoke-direct {p0, v2, v0, p1}, Lch/qos/logback/classic/util/ContextInitializer;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/net/URL;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_2

    .line 132
    return-object v1

    .line 135
    :cond_2
    const-string v2, "logback.xml"

    invoke-direct {p0, v2, v0, p1}, Lch/qos/logback/classic/util/ContextInitializer;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/net/URL;

    move-result-object v2

    return-object v2
.end method

.method joranConfigureByResource(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 82
    new-instance v0, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v0}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    .line 83
    .local v0, "configurator":Lch/qos/logback/classic/joran/JoranConfigurator;
    iget-object v1, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 84
    invoke-virtual {v0, p1}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/net/URL;)V

    .line 85
    return-void
.end method
