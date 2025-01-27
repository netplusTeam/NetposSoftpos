.class public Lorg/jpos/q2/qbean/QBeanFactory;
.super Lorg/jpos/q2/QBeanSupport;
.source "QBeanFactory.java"

# interfaces
.implements Lorg/jpos/q2/qbean/QBeanFactoryMBean;


# static fields
.field private static beanMap:Ljava/util/Map;


# instance fields
.field private privateList:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jpos/q2/qbean/QBeanFactory;->beanMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    return-void
.end method

.method private newBean(Lorg/jdom2/Element;Z)Ljava/lang/Object;
    .locals 12
    .param p1, "bean"    # Lorg/jdom2/Element;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 112
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "id":Ljava/lang/String;
    if-eqz p2, :cond_0

    sget-object v1, Lorg/jpos/q2/qbean/QBeanFactory;->beanMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lorg/jpos/q2/qbean/QBeanFactory;->beanMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 118
    :cond_0
    const-string v1, "class"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QBeanFactory;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 120
    .local v2, "beanInstance":Ljava/lang/Object;
    const-string v3, "property"

    invoke-virtual {p1, v3}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 121
    .local v3, "propertyList":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 122
    .local v5, "aPropertyList":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lorg/jdom2/Element;

    .line 123
    .local v6, "propertyElement":Lorg/jdom2/Element;
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "pName":Ljava/lang/String;
    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "pValue":Ljava/lang/String;
    const-string v9, "ref"

    invoke-virtual {v6, v9}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "pRef":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    .line 127
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    .line 128
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "methodName":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 130
    invoke-virtual {p0, v9}, Lorg/jpos/q2/qbean/QBeanFactory;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v2, v10, v11}, Lorg/jpos/q2/QFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    :cond_1
    invoke-static {v2, v10, v8}, Lorg/jpos/q2/QFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    .end local v5    # "aPropertyList":Ljava/lang/Object;
    .end local v6    # "propertyElement":Lorg/jdom2/Element;
    .end local v7    # "pName":Ljava/lang/String;
    .end local v8    # "pValue":Ljava/lang/String;
    .end local v9    # "pRef":Ljava/lang/String;
    .end local v10    # "methodName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 135
    :cond_2
    const-string v4, "start-method"

    invoke-virtual {p1, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "startMethod":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 137
    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lorg/jpos/q2/QFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    :cond_3
    if-eqz p2, :cond_4

    .line 140
    sget-object v5, Lorg/jpos/q2/qbean/QBeanFactory;->beanMap:Ljava/util/Map;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_4
    return-object v2
.end method


# virtual methods
.method public getBean(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lorg/jpos/q2/qbean/QBeanFactory;->privateList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    .line 93
    .local v0, "bean":Lorg/jdom2/Element;
    if-nez v0, :cond_0

    .line 94
    sget-object v1, Lorg/jpos/q2/qbean/QBeanFactory;->beanMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 98
    :cond_0
    const-string v1, "singleton"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "singleton":Ljava/lang/String;
    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/jpos/q2/qbean/QBeanFactory;->newBean(Lorg/jdom2/Element;Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 103
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/jpos/q2/qbean/QBeanFactory;->newBean(Lorg/jdom2/Element;Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jpos/q2/qbean/QBeanFactory;->log:Lorg/jpos/util/Log;

    invoke-virtual {v3, v2}, Lorg/jpos/util/Log;->fatal(Ljava/lang/Object;)V

    .line 107
    const/4 v3, 0x0

    return-object v3
.end method

.method public initService()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QBeanFactory;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 37
    .local v0, "e":Lorg/jdom2/Element;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jpos/q2/qbean/QBeanFactory;->privateList:Ljava/util/Map;

    .line 38
    const-string v1, "bean"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, "beans":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 40
    .local v3, "bean1":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/jdom2/Element;

    .line 41
    .local v4, "bean":Lorg/jdom2/Element;
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "id":Ljava/lang/String;
    iget-object v6, p0, Lorg/jpos/q2/qbean/QBeanFactory;->privateList:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .end local v3    # "bean1":Ljava/lang/Object;
    .end local v4    # "bean":Lorg/jdom2/Element;
    .end local v5    # "id":Ljava/lang/String;
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 48
    invoke-super {p0}, Lorg/jpos/q2/QBeanSupport;->start()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QBeanFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QBeanFactory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public startService()V
    .locals 5

    .line 58
    iget-object v0, p0, Lorg/jpos/q2/qbean/QBeanFactory;->privateList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    .local v0, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lorg/jpos/q2/qbean/QBeanFactory;->privateList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 61
    .local v1, "bean":Lorg/jdom2/Element;
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "id":Ljava/lang/String;
    const-string v3, "lazy"

    invoke-virtual {v1, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "lazy":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {p0, v2}, Lorg/jpos/q2/qbean/QBeanFactory;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .end local v1    # "bean":Lorg/jdom2/Element;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "lazy":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 53
    invoke-super {p0}, Lorg/jpos/q2/QBeanSupport;->stop()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QBeanFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QBeanFactory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public stopService()V
    .locals 7

    .line 71
    iget-object v0, p0, Lorg/jpos/q2/qbean/QBeanFactory;->privateList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    .local v0, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lorg/jpos/q2/qbean/QBeanFactory;->privateList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 74
    .local v1, "bean":Lorg/jdom2/Element;
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "id":Ljava/lang/String;
    sget-object v3, Lorg/jpos/q2/qbean/QBeanFactory;->beanMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 76
    .local v3, "beanInstance":Ljava/lang/Object;
    const-string v4, "stop-method"

    invoke-virtual {v1, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "stopMethod":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 79
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v4, v5}, Lorg/jpos/q2/QFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_1

    .line 80
    :catch_0
    move-exception v5

    .line 81
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/jpos/q2/qbean/QBeanFactory;->log:Lorg/jpos/util/Log;

    invoke-virtual {v6, v5}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 84
    .end local v1    # "bean":Lorg/jdom2/Element;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "beanInstance":Ljava/lang/Object;
    .end local v4    # "stopMethod":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method
