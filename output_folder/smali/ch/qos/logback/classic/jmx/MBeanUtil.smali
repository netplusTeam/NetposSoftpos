.class public Lch/qos/logback/classic/jmx/MBeanUtil;
.super Ljava/lang/Object;
.source "MBeanUtil.java"


# static fields
.field static final DOMAIN:Ljava/lang/String; = "ch.qos.logback.classic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAndRegisterJMXConfigurator(Ljavax/management/MBeanServer;Lch/qos/logback/classic/LoggerContext;Lch/qos/logback/classic/jmx/JMXConfigurator;Ljavax/management/ObjectName;Ljava/lang/Object;)V
    .locals 3
    .param p0, "mbs"    # Ljavax/management/MBeanServer;
    .param p1, "loggerContext"    # Lch/qos/logback/classic/LoggerContext;
    .param p2, "jmxConfigurator"    # Lch/qos/logback/classic/jmx/JMXConfigurator;
    .param p3, "objectName"    # Ljavax/management/ObjectName;
    .param p4, "caller"    # Ljava/lang/Object;

    .line 56
    :try_start_0
    invoke-interface {p0, p2, p3}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    invoke-direct {v1, p1}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 59
    .local v1, "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    const-string v2, "Failed to create mbean"

    invoke-virtual {v1, p4, v2, v0}, Lch/qos/logback/core/status/StatusUtil;->addError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    :goto_0
    return-void
.end method

.method public static getObjectNameFor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/Class;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch.qos.logback.classic:Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isRegistered(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;)Z
    .locals 1
    .param p0, "mbs"    # Ljavax/management/MBeanServer;
    .param p1, "objectName"    # Ljavax/management/ObjectName;

    .line 50
    invoke-interface {p0, p1}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v0

    return v0
.end method

.method public static string2ObjectName(Lch/qos/logback/core/Context;Ljava/lang/Object;Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 4
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "objectNameAsStr"    # Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to convert ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] to ObjectName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    invoke-direct {v1, p0}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 39
    .local v1, "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljavax/management/ObjectName;

    invoke-direct {v3, p2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 43
    :catch_0
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1, p1, v0, v3}, Lch/qos/logback/core/status/StatusUtil;->addError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-object v2

    .line 40
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 41
    .local v3, "e":Ljavax/management/MalformedObjectNameException;
    invoke-virtual {v1, p1, v0, v3}, Lch/qos/logback/core/status/StatusUtil;->addError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-object v2
.end method

.method public static unregister(Lch/qos/logback/classic/LoggerContext;Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Ljava/lang/Object;)V
    .locals 4
    .param p0, "loggerContext"    # Lch/qos/logback/classic/LoggerContext;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .param p2, "objectName"    # Ljavax/management/ObjectName;
    .param p3, "caller"    # Ljava/lang/Object;

    .line 65
    const-string v0, "Failed to unregister mbean"

    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    invoke-direct {v1, p0}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 66
    .local v1, "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    invoke-interface {p1, p2}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistering mbean ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lch/qos/logback/core/status/StatusUtil;->addInfo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p1, p2}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljavax/management/MBeanRegistrationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p3, v0, v2}, Lch/qos/logback/core/status/StatusUtil;->addError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljavax/management/MBeanRegistrationException;
    goto :goto_0

    .line 70
    :catch_1
    move-exception v2

    .line 72
    .local v2, "e":Ljavax/management/InstanceNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p3, v0, v2}, Lch/qos/logback/core/status/StatusUtil;->addError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v2    # "e":Ljavax/management/InstanceNotFoundException;
    :goto_0
    goto :goto_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mbean ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] does not seem to be registered"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Lch/qos/logback/core/status/StatusUtil;->addInfo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    :goto_1
    return-void
.end method
