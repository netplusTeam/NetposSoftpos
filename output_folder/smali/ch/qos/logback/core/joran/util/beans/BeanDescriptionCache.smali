.class public Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "BeanDescriptionCache.java"


# instance fields
.field private beanDescriptionFactory:Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;

.field private classToBeanDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lch/qos/logback/core/joran/util/beans/BeanDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 25
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->classToBeanDescription:Ljava/util/Map;

    .line 26
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->setContext(Lch/qos/logback/core/Context;)V

    .line 27
    return-void
.end method

.method private getBeanDescriptionFactory()Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;
    .locals 2

    .line 30
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->beanDescriptionFactory:Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;-><init>(Lch/qos/logback/core/Context;)V

    iput-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->beanDescriptionFactory:Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;

    .line 33
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->beanDescriptionFactory:Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;

    return-object v0
.end method


# virtual methods
.method public getBeanDescription(Ljava/lang/Class;)Lch/qos/logback/core/joran/util/beans/BeanDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lch/qos/logback/core/joran/util/beans/BeanDescription;"
        }
    .end annotation

    .line 46
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->classToBeanDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->getBeanDescriptionFactory()Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionFactory;->create(Ljava/lang/Class;)Lch/qos/logback/core/joran/util/beans/BeanDescription;

    move-result-object v0

    .line 48
    .local v0, "beanDescription":Lch/qos/logback/core/joran/util/beans/BeanDescription;
    iget-object v1, p0, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->classToBeanDescription:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v0    # "beanDescription":Lch/qos/logback/core/joran/util/beans/BeanDescription;
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;->classToBeanDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/util/beans/BeanDescription;

    return-object v0
.end method
