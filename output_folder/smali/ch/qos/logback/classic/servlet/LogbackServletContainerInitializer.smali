.class public Lch/qos/logback/classic/servlet/LogbackServletContainerInitializer;
.super Ljava/lang/Object;
.source "LogbackServletContainerInitializer.java"

# interfaces
.implements Ljavax/servlet/ServletContainerInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isDisabledByConfiguration(Ljavax/servlet/ServletContext;)Z
    .locals 4
    .param p1, "ctx"    # Ljavax/servlet/ServletContext;

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "disableAttributeStr":Ljava/lang/String;
    const-string v1, "logbackDisableServletContainerInitializer"

    invoke-interface {p1, v1}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "disableAttribute":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 48
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 51
    :cond_0
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_1
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_2
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    const/4 v1, 0x0

    return v1

    .line 62
    :cond_3
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onStartup(Ljava/util/Set;Ljavax/servlet/ServletContext;)V
    .locals 3
    .param p2, "ctx"    # Ljavax/servlet/ServletContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljavax/servlet/ServletContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 25
    .local p1, "c":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0, p2}, Lch/qos/logback/classic/servlet/LogbackServletContainerInitializer;->isDisabledByConfiguration(Ljavax/servlet/ServletContext;)Z

    move-result v0

    const-string v1, " to the current web-app"

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Due to deployment instructions will NOT register an instance of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lch/qos/logback/classic/servlet/LogbackServletContextListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lch/qos/logback/classic/util/StatusViaSLF4JLoggerFactory;->addInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding an instance of  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lch/qos/logback/classic/servlet/LogbackServletContextListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lch/qos/logback/classic/util/StatusViaSLF4JLoggerFactory;->addInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lch/qos/logback/classic/servlet/LogbackServletContextListener;

    invoke-direct {v0}, Lch/qos/logback/classic/servlet/LogbackServletContextListener;-><init>()V

    .line 34
    .local v0, "lscl":Lch/qos/logback/classic/servlet/LogbackServletContextListener;
    invoke-interface {p2, v0}, Ljavax/servlet/ServletContext;->addListener(Ljava/util/EventListener;)V

    .line 35
    return-void
.end method
