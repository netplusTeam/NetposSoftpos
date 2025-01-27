.class public Lch/qos/logback/classic/selector/ContextJNDISelector;
.super Ljava/lang/Object;
.source "ContextJNDISelector.java"

# interfaces
.implements Lch/qos/logback/classic/selector/ContextSelector;


# static fields
.field private static final threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lch/qos/logback/classic/LoggerContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultContext:Lch/qos/logback/classic/LoggerContext;

.field private final synchronizedContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/qos/logback/classic/LoggerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lch/qos/logback/classic/selector/ContextJNDISelector;->threadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->synchronizedContextMap:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->defaultContext:Lch/qos/logback/classic/LoggerContext;

    .line 62
    return-void
.end method

.method private configureLoggerContextByURL(Lch/qos/logback/classic/LoggerContext;Ljava/net/URL;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;
    .param p2, "url"    # Ljava/net/URL;

    .line 155
    :try_start_0
    new-instance v0, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v0}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    .line 156
    .local v0, "configurator":Lch/qos/logback/classic/joran/JoranConfigurator;
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 157
    invoke-virtual {v0, p1}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 158
    invoke-virtual {v0, p2}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/net/URL;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "configurator":Lch/qos/logback/classic/joran/JoranConfigurator;
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    :goto_0
    invoke-static {p1}, Lch/qos/logback/core/util/StatusPrinter;->printInCaseOfErrorsOrWarnings(Lch/qos/logback/core/Context;)V

    .line 162
    return-void
.end method

.method private conventionalConfigFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "contextName"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logback-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findConfigFileURL(Ljavax/naming/Context;Lch/qos/logback/classic/LoggerContext;)Ljava/net/URL;
    .locals 5
    .param p1, "ctx"    # Ljavax/naming/Context;
    .param p2, "loggerContext"    # Lch/qos/logback/classic/LoggerContext;

    .line 125
    invoke-virtual {p2}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 127
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    const-string v1, "java:comp/env/logback/configuration-resource"

    invoke-static {p1, v1}, Lch/qos/logback/classic/util/JNDIUtil;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "jndiEntryForConfigResource":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 130
    new-instance v2, Lch/qos/logback/core/status/InfoStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Searching for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 131
    invoke-direct {p0, v0, v1}, Lch/qos/logback/classic/selector/ContextJNDISelector;->urlByResourceName(Lch/qos/logback/core/status/StatusManager;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 132
    .local v2, "url":Ljava/net/URL;
    if-nez v2, :cond_0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The jndi resource ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for context ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] does not lead to a valid file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Lch/qos/logback/core/status/WarnStatus;

    invoke-direct {v4, v3, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 137
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 139
    .end local v2    # "url":Ljava/net/URL;
    :cond_1
    invoke-virtual {p2}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/qos/logback/classic/selector/ContextJNDISelector;->conventionalConfigFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "resourceByConvention":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lch/qos/logback/classic/selector/ContextJNDISelector;->urlByResourceName(Lch/qos/logback/core/status/StatusManager;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    return-object v3
.end method

.method private urlByResourceName(Lch/qos/logback/core/status/StatusManager;Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "sm"    # Lch/qos/logback/core/status/StatusManager;
    .param p2, "resourceName"    # Ljava/lang/String;

    .line 145
    new-instance v0, Lch/qos/logback/core/status/InfoStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Searching for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 146
    invoke-static {}, Lch/qos/logback/core/util/Loader;->getTCL()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p2, v0}, Lch/qos/logback/core/util/Loader;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v0

    .line 147
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_0

    .line 148
    return-object v0

    .line 150
    :cond_0
    invoke-static {p2}, Lch/qos/logback/core/util/Loader;->getResourceBySelfClassLoader(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public detachLoggerContext(Ljava/lang/String;)Lch/qos/logback/classic/LoggerContext;
    .locals 1
    .param p1, "loggerContextName"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->synchronizedContextMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public getContextNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->synchronizedContextMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 180
    iget-object v0, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->synchronizedContextMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getDefaultLoggerContext()Lch/qos/logback/classic/LoggerContext;
    .locals 1

    .line 65
    iget-object v0, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->defaultContext:Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public getLoggerContext()Lch/qos/logback/classic/LoggerContext;
    .locals 6

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "contextName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 77
    .local v1, "ctx":Ljavax/naming/Context;
    sget-object v2, Lch/qos/logback/classic/selector/ContextJNDISelector;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/LoggerContext;

    .line 78
    .local v2, "lc":Lch/qos/logback/classic/LoggerContext;
    if-eqz v2, :cond_0

    .line 79
    return-object v2

    .line 85
    :cond_0
    :try_start_0
    invoke-static {}, Lch/qos/logback/classic/util/JNDIUtil;->getInitialContext()Ljavax/naming/Context;

    move-result-object v3

    move-object v1, v3

    .line 86
    const-string v3, "java:comp/env/logback/context-name"

    invoke-static {v1, v3}, Lch/qos/logback/classic/util/JNDIUtil;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v3

    .line 91
    :goto_0
    if-nez v0, :cond_1

    .line 93
    iget-object v3, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->defaultContext:Lch/qos/logback/classic/LoggerContext;

    return-object v3

    .line 96
    :cond_1
    iget-object v3, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->synchronizedContextMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/LoggerContext;

    .line 98
    .local v3, "loggerContext":Lch/qos/logback/classic/LoggerContext;
    if-nez v3, :cond_3

    .line 100
    new-instance v4, Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v4}, Lch/qos/logback/classic/LoggerContext;-><init>()V

    move-object v3, v4

    .line 101
    invoke-virtual {v3, v0}, Lch/qos/logback/classic/LoggerContext;->setName(Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->synchronizedContextMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0, v1, v3}, Lch/qos/logback/classic/selector/ContextJNDISelector;->findConfigFileURL(Ljavax/naming/Context;Lch/qos/logback/classic/LoggerContext;)Ljava/net/URL;

    move-result-object v4

    .line 104
    .local v4, "url":Ljava/net/URL;
    if-eqz v4, :cond_2

    .line 105
    invoke-direct {p0, v3, v4}, Lch/qos/logback/classic/selector/ContextJNDISelector;->configureLoggerContextByURL(Lch/qos/logback/classic/LoggerContext;Ljava/net/URL;)V

    goto :goto_1

    .line 108
    :cond_2
    :try_start_1
    new-instance v5, Lch/qos/logback/classic/util/ContextInitializer;

    invoke-direct {v5, v3}, Lch/qos/logback/classic/util/ContextInitializer;-><init>(Lch/qos/logback/classic/LoggerContext;)V

    invoke-virtual {v5}, Lch/qos/logback/classic/util/ContextInitializer;->autoConfig()V
    :try_end_1
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    goto :goto_1

    .line 109
    :catch_1
    move-exception v5

    .line 113
    :goto_1
    invoke-static {v3}, Lch/qos/logback/core/status/StatusUtil;->contextHasStatusListener(Lch/qos/logback/core/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 114
    invoke-static {v3}, Lch/qos/logback/core/util/StatusPrinter;->printInCaseOfErrorsOrWarnings(Lch/qos/logback/core/Context;)V

    .line 116
    .end local v4    # "url":Ljava/net/URL;
    :cond_3
    return-object v3
.end method

.method public getLoggerContext(Ljava/lang/String;)Lch/qos/logback/classic/LoggerContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lch/qos/logback/classic/selector/ContextJNDISelector;->synchronizedContextMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public removeLocalContext()V
    .locals 1

    .line 196
    sget-object v0, Lch/qos/logback/classic/selector/ContextJNDISelector;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 197
    return-void
.end method

.method public setLocalContext(Lch/qos/logback/classic/LoggerContext;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 192
    sget-object v0, Lch/qos/logback/classic/selector/ContextJNDISelector;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 193
    return-void
.end method
