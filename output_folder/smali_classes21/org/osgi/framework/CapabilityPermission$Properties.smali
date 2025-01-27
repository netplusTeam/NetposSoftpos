.class final Lorg/osgi/framework/CapabilityPermission$Properties;
.super Ljava/util/AbstractMap;
.source "CapabilityPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/CapabilityPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Properties"
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
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 532
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 533
    iput-object p1, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->properties:Ljava/util/Map;

    .line 534
    iput-object p2, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->attributes:Ljava/util/Map;

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->entries:Ljava/util/Set;

    .line 536
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 3
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

    .line 555
    iget-object v0, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->entries:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->entries:Ljava/util/Set;

    return-object v0

    .line 558
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 559
    .local v0, "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 560
    iget-object v1, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 561
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->entries:Ljava/util/Set;

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "k"    # Ljava/lang/Object;

    .line 540
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x0

    return-object v0

    .line 543
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 544
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 545
    iget-object v1, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->attributes:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 547
    :cond_1
    iget-object v1, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->properties:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 548
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 549
    return-object v1

    .line 551
    :cond_2
    iget-object v2, p0, Lorg/osgi/framework/CapabilityPermission$Properties;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
