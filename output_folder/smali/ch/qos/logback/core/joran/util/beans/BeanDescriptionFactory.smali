.class public Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "BeanDescriptionFactory.java"


# direct methods
.method constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 22
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;->setContext(Lch/qos/logback/core/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Lch/qos/logback/core/joran/util/beans/BeanDescription;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lch/qos/logback/core/joran/util/beans/BeanDescription;"
        }
    .end annotation

    .line 32
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v1, "propertyNameToGetter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v2, "propertyNameToSetter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v3, "propertyNameToAdder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 36
    .local v4, "methods":[Ljava/lang/reflect/Method;
    move-object v5, v4

    .local v5, "arr$":[Ljava/lang/reflect/Method;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 37
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 39
    goto/16 :goto_2

    .line 41
    :cond_0
    invoke-static {v8}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->isGetter(Ljava/lang/reflect/Method;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_3

    .line 42
    invoke-static {v8}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getPropertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v9

    .line 43
    .local v9, "propertyName":Ljava/lang/String;
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    .line 44
    .local v13, "oldGetter":Ljava/lang/reflect/Method;
    if-eqz v13, :cond_2

    .line 45
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "is"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 46
    invoke-interface {v1, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v10

    aput-object v9, v11, v12

    const-string v10, "Class \'%s\' contains multiple getters for the same property \'%s\'."

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, "message":Ljava/lang/String;
    invoke-virtual {v0, v10}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;->addWarn(Ljava/lang/String;)V

    .line 51
    .end local v9    # "propertyName":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v13    # "oldGetter":Ljava/lang/reflect/Method;
    :cond_2
    goto :goto_2

    :cond_3
    invoke-static {v8}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->isSetter(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 52
    invoke-static {v8}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getPropertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v9

    .line 53
    .restart local v9    # "propertyName":Ljava/lang/String;
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    .line 54
    .local v13, "oldSetter":Ljava/lang/reflect/Method;
    if-eqz v13, :cond_5

    .line 55
    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v10

    aput-object v9, v11, v12

    const-string v10, "Class \'%s\' contains multiple setters for the same property \'%s\'."

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 56
    .restart local v10    # "message":Ljava/lang/String;
    invoke-virtual {v0, v10}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;->addWarn(Ljava/lang/String;)V

    goto :goto_1

    .line 58
    .end local v9    # "propertyName":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v13    # "oldSetter":Ljava/lang/reflect/Method;
    :cond_4
    invoke-static {v8}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->isAdder(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 59
    invoke-static {v8}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getPropertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v9

    .line 60
    .restart local v9    # "propertyName":Ljava/lang/String;
    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    .line 61
    .local v13, "oldAdder":Ljava/lang/reflect/Method;
    if-eqz v13, :cond_6

    .line 62
    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v10

    aput-object v9, v11, v12

    const-string v10, "Class \'%s\' contains multiple adders for the same property \'%s\'."

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 63
    .restart local v10    # "message":Ljava/lang/String;
    invoke-virtual {v0, v10}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;->addWarn(Ljava/lang/String;)V

    goto :goto_2

    .line 58
    .end local v9    # "propertyName":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v13    # "oldAdder":Ljava/lang/reflect/Method;
    :cond_5
    :goto_1
    nop

    .line 36
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 67
    .end local v5    # "arr$":[Ljava/lang/reflect/Method;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_7
    new-instance v5, Lch/qos/logback/core/joran/util/beans/BeanDescription;

    move-object/from16 v6, p1

    invoke-direct {v5, v6, v1, v2, v3}, Lch/qos/logback/core/joran/util/beans/BeanDescription;-><init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v5
.end method
