.class final Lorg/osgi/framework/FrameworkUtil$ServiceReferenceMap;
.super Ljava/util/AbstractMap;
.source "FrameworkUtil.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/FrameworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceReferenceMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final reference:Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/osgi/framework/ServiceReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;)V"
        }
    .end annotation

    .line 1647
    .local p1, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<*>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1648
    iput-object p1, p0, Lorg/osgi/framework/FrameworkUtil$ServiceReferenceMap;->reference:Lorg/osgi/framework/ServiceReference;

    .line 1649
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
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

    .line 1660
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 1653
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$ServiceReferenceMap;->reference:Lorg/osgi/framework/ServiceReference;

    if-nez v0, :cond_0

    .line 1654
    const/4 v0, 0x0

    return-object v0

    .line 1656
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/osgi/framework/ServiceReference;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
