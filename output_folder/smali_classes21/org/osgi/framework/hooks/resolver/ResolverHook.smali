.class public interface abstract Lorg/osgi/framework/hooks/resolver/ResolverHook;
.super Ljava/lang/Object;
.source "ResolverHook.java"


# virtual methods
.method public abstract end()V
.end method

.method public abstract filterMatches(Lorg/osgi/framework/wiring/BundleRequirement;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/wiring/BundleRequirement;",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/wiring/BundleCapability;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract filterResolvable(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/wiring/BundleRevision;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract filterSingletonCollisions(Lorg/osgi/framework/wiring/BundleCapability;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/wiring/BundleCapability;",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/wiring/BundleCapability;",
            ">;)V"
        }
    .end annotation
.end method
