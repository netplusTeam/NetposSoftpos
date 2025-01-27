.class public Lorg/jpos/q2/QFactory;
.super Ljava/lang/Object;
.source "QFactory.java"


# instance fields
.field classMapping:Ljava/util/ResourceBundle;

.field defaultConfigurationFactory:Lorg/jpos/q2/ConfigurationFactory;

.field loaderName:Ljavax/management/ObjectName;

.field q2:Lorg/jpos/q2/Q2;


# direct methods
.method public constructor <init>(Ljavax/management/ObjectName;Lorg/jpos/q2/Q2;)V
    .locals 1
    .param p1, "loaderName"    # Ljavax/management/ObjectName;
    .param p2, "q2"    # Lorg/jpos/q2/Q2;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/jpos/q2/SimpleConfigurationFactory;

    invoke-direct {v0}, Lorg/jpos/q2/SimpleConfigurationFactory;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/QFactory;->defaultConfigurationFactory:Lorg/jpos/q2/ConfigurationFactory;

    .line 53
    iput-object p1, p0, Lorg/jpos/q2/QFactory;->loaderName:Ljavax/management/ObjectName;

    .line 54
    iput-object p2, p0, Lorg/jpos/q2/QFactory;->q2:Lorg/jpos/q2/Q2;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/QFactory;->classMapping:Ljava/util/ResourceBundle;

    .line 56
    return-void
.end method

.method public static getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Lorg/jdom2/Element;
    .param p1, "name"    # Ljava/lang/String;

    .line 365
    invoke-virtual {p0, p1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "s":Ljava/lang/String;
    invoke-static {}, Lorg/jpos/core/Environment;->getEnvironment()Lorg/jpos/core/Environment;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lorg/jpos/core/Environment;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnabledAttribute(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Lorg/jdom2/Element;

    .line 437
    const-string v0, "enabled"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExtraPath(Lorg/jpos/q2/QClassLoader;Lorg/jdom2/Element;)V
    .locals 7
    .param p1, "loader"    # Lorg/jpos/q2/QClassLoader;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 130
    const-string v0, "classpath"

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 131
    .local v0, "classpathElement":Lorg/jdom2/Element;
    if-eqz v0, :cond_0

    .line 133
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/jpos/q2/QClassLoader;->scan(Z)Lorg/jpos/q2/QClassLoader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    .line 136
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    .line 135
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/jpos/q2/QFactory;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 137
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Element;

    .line 140
    .local v3, "u":Lorg/jdom2/Element;
    :try_start_1
    invoke-virtual {v3}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jpos/q2/QClassLoader;->addURL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    goto :goto_2

    .line 141
    :catch_0
    move-exception v4

    .line 142
    .local v4, "ex":Ljava/net/MalformedURLException;
    iget-object v5, p0, Lorg/jpos/q2/QFactory;->q2:Lorg/jpos/q2/Q2;

    invoke-virtual {v5}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "u":Lorg/jdom2/Element;
    .end local v4    # "ex":Ljava/net/MalformedURLException;
    :goto_2
    goto :goto_1

    .line 146
    :cond_0
    return-void
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 391
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/jpos/q2/QFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 392
    return-void
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/Object;
    .param p3, "pc"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 408
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 409
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    aput-object p3, v2, v0

    .line 410
    .local v2, "paramTemplate":[Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 411
    .local v3, "method":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    .line 412
    .local v1, "param":[Ljava/lang/Object;
    aput-object p2, v1, v0

    .line 413
    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    nop

    .end local v1    # "param":[Ljava/lang/Object;
    .end local v2    # "paramTemplate":[Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 416
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 420
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    goto :goto_0

    .line 419
    :catch_2
    move-exception v0

    goto :goto_0

    .line 418
    :catch_3
    move-exception v0

    .line 426
    :goto_0
    nop

    .line 427
    return-void
.end method

.method public static isEnabled(Lorg/jdom2/Element;)Z
    .locals 2
    .param p0, "e"    # Lorg/jdom2/Element;

    .line 430
    invoke-static {p0}, Lorg/jpos/q2/QFactory;->getEnabledAttribute(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "enabledAttribute":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    invoke-static {}, Lorg/jpos/core/Environment;->getEnvironment()Lorg/jpos/core/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/core/Environment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 431
    :goto_1
    return v1
.end method


# virtual methods
.method public configureQBean(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Lorg/jdom2/Element;)V
    .locals 4
    .param p1, "server"    # Ljavax/management/MBeanServer;
    .param p2, "objectName"    # Ljavax/management/ObjectName;
    .param p3, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 195
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/jpos/q2/QFactory;->getAttributeList(Lorg/jdom2/Element;)Ljavax/management/AttributeList;

    move-result-object v0

    .line 196
    .local v0, "attributeList":Ljavax/management/AttributeList;
    invoke-virtual {v0}, Ljavax/management/AttributeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "anAttributeList":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljavax/management/Attribute;

    invoke-interface {p1, p2, v3}, Ljavax/management/MBeanServer;->setAttribute(Ljavax/management/ObjectName;Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "anAttributeList":Ljava/lang/Object;
    goto :goto_0

    .line 200
    .end local v0    # "attributeList":Ljavax/management/AttributeList;
    :cond_0
    nop

    .line 202
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e1":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createQBean(Lorg/jpos/q2/Q2;Lorg/jdom2/Element;Ljava/lang/Object;)Ljavax/management/ObjectInstance;
    .locals 8
    .param p1, "server"    # Lorg/jpos/q2/Q2;
    .param p2, "e"    # Lorg/jdom2/Element;
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MalformedObjectNameException;,
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/InstanceNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/NotCompliantMBeanException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/ReflectionException;,
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 89
    const-string v0, "name"

    invoke-static {p2, v0}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p2}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    new-instance v1, Ljavax/management/ObjectName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Q2:type=qbean,service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "objectName":Ljavax/management/ObjectName;
    invoke-virtual {p1}, Lorg/jpos/q2/Q2;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v2

    .line 95
    .local v2, "mserver":Ljavax/management/MBeanServer;
    invoke-interface {v2, v1}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 98
    invoke-interface {v2, p3, v1}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    move-result-object v3

    .line 102
    .local v3, "instance":Ljavax/management/ObjectInstance;
    :try_start_0
    const-string v4, "Name"

    invoke-virtual {p0, v2, v1, v4, v0}, Lorg/jpos/q2/QFactory;->setAttribute(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v4, "logger"

    invoke-static {p2, v4}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "logger":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 105
    const-string v5, "Logger"

    invoke-virtual {p0, v2, v1, v5, v4}, Lorg/jpos/q2/QFactory;->setAttribute(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_1
    const-string v5, "realm"

    invoke-static {p2, v5}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "realm":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 108
    const-string v6, "Realm"

    invoke-virtual {p0, v2, v1, v6, v5}, Lorg/jpos/q2/QFactory;->setAttribute(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_2
    const-string v6, "Server"

    invoke-virtual {p0, v2, v1, v6, p1}, Lorg/jpos/q2/QFactory;->setAttribute(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v6, "Persist"

    invoke-virtual {p0, v2, v1, v6, p2}, Lorg/jpos/q2/QFactory;->setAttribute(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0, v2, v1, p2}, Lorg/jpos/q2/QFactory;->configureQBean(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Lorg/jdom2/Element;)V

    .line 112
    invoke-virtual {p0, p3, p2}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 114
    instance-of v6, p3, Lorg/jpos/q2/QBean;

    if-eqz v6, :cond_3

    .line 115
    const-string v6, "init"

    const/4 v7, 0x0

    invoke-interface {v2, v1, v6, v7, v7}, Ljavax/management/MBeanServer;->invoke(Ljavax/management/ObjectName;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v4    # "logger":Ljava/lang/String;
    .end local v5    # "realm":Ljava/lang/String;
    :cond_3
    nop

    .line 123
    return-object v3

    .line 117
    :catchall_0
    move-exception v4

    .line 118
    .local v4, "t":Ljava/lang/Throwable;
    invoke-interface {v2, v1}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 119
    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 120
    throw v4

    .line 96
    .end local v3    # "instance":Ljavax/management/ObjectInstance;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v3, Ljavax/management/InstanceAlreadyExistsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has already been deployed in another file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/management/InstanceAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public destroyQBean(Lorg/jpos/q2/Q2;Ljavax/management/ObjectName;Ljava/lang/Object;)V
    .locals 3
    .param p1, "server"    # Lorg/jpos/q2/Q2;
    .param p2, "objectName"    # Ljavax/management/ObjectName;
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Lorg/jpos/q2/Q2;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 183
    .local v0, "mserver":Ljavax/management/MBeanServer;
    instance-of v1, p3, Lorg/jpos/q2/QBean;

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "stop"

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2, v2}, Ljavax/management/MBeanServer;->invoke(Ljavax/management/ObjectName;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const-string v1, "destroy"

    invoke-interface {v0, p2, v1, v2, v2}, Ljavax/management/MBeanServer;->invoke(Ljavax/management/ObjectName;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    :cond_0
    if-eqz p2, :cond_1

    .line 188
    invoke-interface {v0, p2}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 189
    :cond_1
    return-void
.end method

.method public getAttributeList(Lorg/jdom2/Element;)Ljavax/management/AttributeList;
    .locals 8
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljavax/management/AttributeList;

    invoke-direct {v0}, Ljavax/management/AttributeList;-><init>()V

    .line 207
    .local v0, "attributeList":Ljavax/management/AttributeList;
    const-string v1, "attr"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "childs":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 209
    .local v3, "child":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/jdom2/Element;

    .line 210
    .local v4, "childElement":Lorg/jdom2/Element;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/jpos/q2/QFactory;->getAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    new-instance v6, Ljavax/management/Attribute;

    invoke-virtual {p0, v4}, Lorg/jpos/q2/QFactory;->getObject(Lorg/jdom2/Element;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    .local v6, "attr":Ljavax/management/Attribute;
    invoke-virtual {v0, v6}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V

    .line 214
    .end local v3    # "child":Ljava/lang/Object;
    .end local v4    # "childElement":Lorg/jdom2/Element;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "attr":Ljavax/management/Attribute;
    goto :goto_0

    .line 215
    :cond_0
    return-object v0
.end method

.method public getAttributeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 290
    if-eqz p1, :cond_1

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "tmp":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 295
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 291
    .end local v0    # "tmp":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attribute name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCollection(Ljava/lang/Class;Lorg/jdom2/Element;)Ljava/util/Collection;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 274
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 275
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const-string v1, "item"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 276
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Element;

    invoke-virtual {p0, v3}, Lorg/jpos/q2/QFactory;->getObject(Lorg/jdom2/Element;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    nop

    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 278
    :cond_0
    return-object v0

    .line 279
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e1":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConfiguration(Lorg/jdom2/Element;)Lorg/jpos/core/Configuration;
    .locals 10
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 318
    const-string v0, "configuration-factory"

    invoke-static {p1, v0}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "configurationFactoryClazz":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0, v0}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/q2/ConfigurationFactory;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jpos/q2/QFactory;->defaultConfigurationFactory:Lorg/jpos/q2/ConfigurationFactory;

    .line 322
    .local v1, "cf":Lorg/jpos/q2/ConfigurationFactory;
    :goto_0
    invoke-interface {v1, p1}, Lorg/jpos/q2/ConfigurationFactory;->getConfiguration(Lorg/jdom2/Element;)Lorg/jpos/core/Configuration;

    move-result-object v2

    .line 323
    .local v2, "cfg":Lorg/jpos/core/Configuration;
    const-string v3, "merge-configuration"

    invoke-static {p1, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "merge":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 325
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ", "

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 328
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jpos/q2/qbean/QConfig;->getConfiguration(Ljava/lang/String;)Lorg/jpos/core/Configuration;

    move-result-object v5

    .line 329
    .local v5, "c":Lorg/jpos/core/Configuration;
    invoke-interface {v5}, Lorg/jpos/core/Configuration;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 330
    .local v7, "k":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 331
    invoke-interface {v5, v7}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, "v":[Ljava/lang/String;
    array-length v9, v8

    packed-switch v9, :pswitch_data_0

    .line 339
    invoke-interface {v2, v7, v8}, Lorg/jpos/core/Configuration;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 336
    :pswitch_0
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-interface {v2, v7, v9}, Lorg/jpos/core/Configuration;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    nop

    .line 342
    .end local v7    # "k":Ljava/lang/String;
    .end local v8    # "v":[Ljava/lang/String;
    :cond_1
    :goto_3
    :pswitch_1
    goto :goto_2

    .line 345
    .end local v5    # "c":Lorg/jpos/core/Configuration;
    :cond_2
    goto :goto_1

    .line 343
    :catch_0
    move-exception v5

    .line 344
    .local v5, "ex":Lorg/jpos/util/NameRegistrar$NotFoundException;
    new-instance v6, Lorg/jpos/core/ConfigurationException;

    invoke-virtual {v5}, Lorg/jpos/util/NameRegistrar$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 348
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "ex":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :cond_3
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getObject(Lorg/jdom2/Element;)Ljava/lang/Object;
    .locals 7
    .param p1, "childElement"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 231
    const-string v0, "type"

    const-string v1, "java.lang.String"

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "type":Ljava/lang/String;
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const-string v0, "java.lang.Integer"

    goto :goto_0

    .line 234
    :cond_0
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    const-string v0, "java.lang.Long"

    goto :goto_0

    .line 236
    :cond_1
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    const-string v0, "java.lang.Boolean"

    .line 239
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "value":Ljava/lang/String;
    invoke-static {}, Lorg/jpos/core/Environment;->getEnvironment()Lorg/jpos/core/Environment;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lorg/jpos/core/Environment;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 243
    .local v2, "attributeType":Ljava/lang/Class;
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 244
    invoke-virtual {p0, v2, p1}, Lorg/jpos/q2/QFactory;->getCollection(Ljava/lang/Class;Lorg/jdom2/Element;)Ljava/util/Collection;

    move-result-object v3

    return-object v3

    .line 246
    :cond_3
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 247
    .local v4, "parameterTypes":[Ljava/lang/Class;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    .line 248
    .local v3, "parameterValues":[Ljava/lang/Object;
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 250
    .end local v2    # "attributeType":Ljava/lang/Class;
    .end local v3    # "parameterValues":[Ljava/lang/Object;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e1":Ljava/lang/Exception;
    new-instance v3, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v3, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getQ2()Lorg/jpos/q2/Q2;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jpos/q2/QFactory;->q2:Lorg/jpos/q2/Q2;

    return-object v0
.end method

.method public instantiate(Lorg/jpos/q2/Q2;Lorg/jdom2/Element;)Ljava/lang/Object;
    .locals 3
    .param p1, "server"    # Lorg/jpos/q2/Q2;
    .param p2, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/ReflectionException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/InstanceNotFoundException;
        }
    .end annotation

    .line 64
    const-string v0, "class"

    invoke-static {p2, v0}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "clazz":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/QFactory;->classMapping:Ljava/util/ResourceBundle;

    invoke-virtual {p2}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/jpos/q2/Q2;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    .line 74
    .local v1, "mserver":Ljavax/management/MBeanServer;
    iget-object v2, p0, Lorg/jpos/q2/QFactory;->q2:Lorg/jpos/q2/Q2;

    invoke-virtual {v2}, Lorg/jpos/q2/Q2;->isDisableDynamicClassloader()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {p1}, Lorg/jpos/q2/Q2;->getLoader()Lorg/jpos/q2/QClassLoader;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/jpos/q2/QFactory;->getExtraPath(Lorg/jpos/q2/QClassLoader;Lorg/jdom2/Element;)V

    .line 76
    :cond_1
    iget-object v2, p0, Lorg/jpos/q2/QFactory;->loaderName:Ljavax/management/ObjectName;

    invoke-interface {v1, v0, v2}, Ljavax/management/MBeanServer;->instantiate(Ljava/lang/String;Ljavax/management/ObjectName;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 312
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 302
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/QFactory;->q2:Lorg/jpos/q2/Q2;

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 303
    .local v0, "mserver":Ljavax/management/MBeanServer;
    iget-object v1, p0, Lorg/jpos/q2/QFactory;->loaderName:Ljavax/management/ObjectName;

    invoke-interface {v0, p1, v1}, Ljavax/management/MBeanServer;->instantiate(Ljava/lang/String;Ljavax/management/ObjectName;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 304
    .end local v0    # "mserver":Ljavax/management/MBeanServer;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, p1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAttribute(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "server"    # Ljavax/management/MBeanServer;
    .param p2, "objectName"    # Ljavax/management/ObjectName;
    .param p3, "attribute"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .line 158
    :try_start_0
    new-instance v0, Ljavax/management/Attribute;

    invoke-direct {v0, p3, p4}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0}, Ljavax/management/MBeanServer;->setAttribute(Ljavax/management/ObjectName;Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljavax/management/AttributeNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/InvalidAttributeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    goto :goto_1

    .line 161
    :catch_1
    move-exception v0

    .line 165
    :goto_0
    nop

    .line 166
    :goto_1
    return-void
.end method

.method public setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 372
    :try_start_0
    instance-of v0, p1, Lorg/jpos/core/Configurable;

    if-eqz v0, :cond_0

    .line 373
    move-object v0, p1

    check-cast v0, Lorg/jpos/core/Configurable;

    invoke-virtual {p0, p2}, Lorg/jpos/q2/QFactory;->getConfiguration(Lorg/jdom2/Element;)Lorg/jpos/core/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 374
    :cond_0
    instance-of v0, p1, Lorg/jpos/core/XmlConfigurable;

    if-eqz v0, :cond_1

    .line 375
    move-object v0, p1

    check-cast v0, Lorg/jpos/core/XmlConfigurable;

    invoke-interface {v0, p2}, Lorg/jpos/core/XmlConfigurable;->setConfiguration(Lorg/jdom2/Element;)V
    :try_end_0
    .catch Lorg/jpos/core/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_1
    nop

    .line 379
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "ex":Lorg/jpos/core/ConfigurationException;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 352
    instance-of v0, p1, Lorg/jpos/util/LogSource;

    if-eqz v0, :cond_1

    .line 353
    const-string v0, "logger"

    invoke-static {p2, v0}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "loggerName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 355
    const-string v1, "realm"

    invoke-static {p2, v1}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "realm":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 357
    invoke-virtual {p2}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_0
    invoke-static {v0}, Lorg/jpos/util/Logger;->getLogger(Ljava/lang/String;)Lorg/jpos/util/Logger;

    move-result-object v2

    .line 359
    .local v2, "logger":Lorg/jpos/util/Logger;
    move-object v3, p1

    check-cast v3, Lorg/jpos/util/LogSource;

    invoke-interface {v3, v2, v1}, Lorg/jpos/util/LogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 362
    .end local v0    # "loggerName":Ljava/lang/String;
    .end local v1    # "realm":Ljava/lang/String;
    .end local v2    # "logger":Lorg/jpos/util/Logger;
    :cond_1
    return-void
.end method

.method public startQBean(Lorg/jpos/q2/Q2;Ljavax/management/ObjectName;)V
    .locals 3
    .param p1, "server"    # Lorg/jpos/q2/Q2;
    .param p2, "objectName"    # Ljavax/management/ObjectName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .line 173
    invoke-virtual {p1}, Lorg/jpos/q2/Q2;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 174
    .local v0, "mserver":Ljavax/management/MBeanServer;
    const-string v1, "start"

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2, v2}, Ljavax/management/MBeanServer;->invoke(Ljavax/management/ObjectName;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    return-void
.end method
