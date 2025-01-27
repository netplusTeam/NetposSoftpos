.class public Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;
.super Ljava/lang/Object;
.source "DefaultNestedComponentRegistry.java"


# instance fields
.field defaultComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->defaultComponentMap:Ljava/util/Map;

    return-void
.end method

.method private oneShotFind(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 47
    .local p1, "hostClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;

    invoke-direct {v0, p1, p2}, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 48
    .local v0, "hpDouble":Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->defaultComponentMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    return-object v1
.end method


# virtual methods
.method public add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 30
    .local p1, "hostClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 31
    .local v0, "hpDouble":Lch/qos/logback/core/joran/spi/HostClassAndPropertyDouble;
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->defaultComponentMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public findDefaultComponentType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 35
    .local p1, "hostClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 36
    :goto_0
    if-eqz p1, :cond_1

    .line 37
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->oneShotFind(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    .local v0, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 39
    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 42
    .end local v0    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
