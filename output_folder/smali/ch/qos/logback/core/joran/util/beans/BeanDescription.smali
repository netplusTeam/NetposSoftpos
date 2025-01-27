.class public Lch/qos/logback/core/joran/util/beans/BeanDescription;
.super Ljava/lang/Object;
.source "BeanDescription.java"


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final propertyNameToAdder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyNameToGetter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyNameToSetter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "propertyNameToGetter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p3, "propertyNameToSetter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p4, "propertyNameToAdder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->clazz:Ljava/lang/Class;

    .line 38
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->propertyNameToGetter:Ljava/util/Map;

    .line 39
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->propertyNameToSetter:Ljava/util/Map;

    .line 40
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->propertyNameToAdder:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public getAdder(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->propertyNameToAdder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getGetter(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->propertyNameToGetter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getPropertyNameToAdder()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->propertyNameToAdder:Ljava/util/Map;

    return-object v0
.end method

.method public getPropertyNameToGetter()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->propertyNameToGetter:Ljava/util/Map;

    return-object v0
.end method

.method public getPropertyNameToSetter()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->propertyNameToSetter:Ljava/util/Map;

    return-object v0
.end method

.method public getSetter(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lch/qos/logback/core/joran/util/beans/BeanDescription;->propertyNameToSetter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method
