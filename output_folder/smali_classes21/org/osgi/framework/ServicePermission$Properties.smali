.class final Lorg/osgi/framework/ServicePermission$Properties;
.super Ljava/util/AbstractMap;
.source "ServicePermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/ServicePermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osgi/framework/ServicePermission$Properties$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile transient entries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/osgi/framework/ServiceReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;)V"
        }
    .end annotation

    .line 588
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "service":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<*>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 589
    iput-object p1, p0, Lorg/osgi/framework/ServicePermission$Properties;->properties:Ljava/util/Map;

    .line 590
    iput-object p2, p0, Lorg/osgi/framework/ServicePermission$Properties;->service:Lorg/osgi/framework/ServiceReference;

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/ServicePermission$Properties;->entries:Ljava/util/Set;

    .line 592
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission$Properties;->entries:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission$Properties;->entries:Ljava/util/Set;

    return-object v0

    .line 614
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/osgi/framework/ServicePermission$Properties;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 615
    .local v0, "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lorg/osgi/framework/ServicePermission$Properties;->service:Lorg/osgi/framework/ServiceReference;

    invoke-interface {v1}, Lorg/osgi/framework/ServiceReference;->getPropertyKeys()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 616
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lorg/osgi/framework/ServicePermission$Properties;->properties:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 617
    .local v6, "k":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 618
    goto :goto_2

    .end local v6    # "k":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 621
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v5, Lorg/osgi/framework/ServicePermission$Properties$Entry;

    iget-object v6, p0, Lorg/osgi/framework/ServicePermission$Properties;->service:Lorg/osgi/framework/ServiceReference;

    invoke-interface {v6, v4}, Lorg/osgi/framework/ServiceReference;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/osgi/framework/ServicePermission$Properties$Entry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 615
    .end local v4    # "key":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/osgi/framework/ServicePermission$Properties;->entries:Ljava/util/Set;

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "k"    # Ljava/lang/Object;

    .line 596
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 597
    const/4 v0, 0x0

    return-object v0

    .line 599
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 600
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 601
    iget-object v1, p0, Lorg/osgi/framework/ServicePermission$Properties;->service:Lorg/osgi/framework/ServiceReference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/osgi/framework/ServiceReference;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 603
    :cond_1
    iget-object v1, p0, Lorg/osgi/framework/ServicePermission$Properties;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 604
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 605
    return-object v1

    .line 607
    :cond_2
    iget-object v2, p0, Lorg/osgi/framework/ServicePermission$Properties;->service:Lorg/osgi/framework/ServiceReference;

    invoke-interface {v2, v0}, Lorg/osgi/framework/ServiceReference;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
