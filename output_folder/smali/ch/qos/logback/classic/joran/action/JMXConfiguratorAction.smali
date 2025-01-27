.class public Lch/qos/logback/classic/joran/action/JMXConfiguratorAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "JMXConfiguratorAction.java"


# static fields
.field static final CONTEXT_NAME_ATTRIBUTE_NAME:Ljava/lang/String; = "contextName"

.field static final JMX_NAME_SEPARATOR:C = ','

.field static final OBJECT_NAME_ATTRIBUTE_NAME:Ljava/lang/String; = "objectName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 39
    const-string v0, "begin"

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/joran/action/JMXConfiguratorAction;->addInfo(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lch/qos/logback/classic/joran/action/JMXConfiguratorAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "contextName":Ljava/lang/String;
    const-string v1, "contextName"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "contextNameAttributeVal":Ljava/lang/String;
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    move-object v0, v1

    .line 48
    :cond_0
    const-string v2, "objectName"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "objectNameAttributeVal":Ljava/lang/String;
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const-class v3, Lch/qos/logback/classic/jmx/JMXConfigurator;

    invoke-static {v0, v3}, Lch/qos/logback/classic/jmx/MBeanUtil;->getObjectNameFor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .local v3, "objectNameAsStr":Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v3    # "objectNameAsStr":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    .line 55
    .restart local v3    # "objectNameAsStr":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lch/qos/logback/classic/joran/action/JMXConfiguratorAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v4, p0, v3}, Lch/qos/logback/classic/jmx/MBeanUtil;->string2ObjectName(Lch/qos/logback/core/Context;Ljava/lang/Object;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v4

    .line 56
    .local v4, "objectName":Ljavax/management/ObjectName;
    if-nez v4, :cond_2

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed construct ObjectName for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/classic/joran/action/JMXConfiguratorAction;->addError(Ljava/lang/String;)V

    .line 58
    return-void

    .line 61
    :cond_2
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v5

    .line 62
    .local v5, "mbs":Ljavax/management/MBeanServer;
    invoke-static {v5, v4}, Lch/qos/logback/classic/jmx/MBeanUtil;->isRegistered(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 67
    new-instance v6, Lch/qos/logback/classic/jmx/JMXConfigurator;

    iget-object v7, p0, Lch/qos/logback/classic/joran/action/JMXConfiguratorAction;->context:Lch/qos/logback/core/Context;

    check-cast v7, Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v6, v7, v5, v4}, Lch/qos/logback/classic/jmx/JMXConfigurator;-><init>(Lch/qos/logback/classic/LoggerContext;Ljavax/management/MBeanServer;Ljavax/management/ObjectName;)V

    .line 69
    .local v6, "jmxConfigurator":Lch/qos/logback/classic/jmx/JMXConfigurator;
    :try_start_0
    invoke-interface {v5, v6, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 70
    :catch_0
    move-exception v7

    .line 71
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "Failed to create mbean"

    invoke-virtual {p0, v8, v7}, Lch/qos/logback/classic/joran/action/JMXConfiguratorAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v6    # "jmxConfigurator":Lch/qos/logback/classic/jmx/JMXConfigurator;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 80
    return-void
.end method
