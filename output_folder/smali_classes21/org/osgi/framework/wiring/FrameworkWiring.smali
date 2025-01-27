.class public interface abstract Lorg/osgi/framework/wiring/FrameworkWiring;
.super Ljava/lang/Object;
.source "FrameworkWiring.java"

# interfaces
.implements Lorg/osgi/framework/BundleReference;


# virtual methods
.method public abstract findProviders(Lorg/osgi/resource/Requirement;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/resource/Requirement;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/wiring/BundleCapability;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDependencyClosure(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/Bundle;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemovalPendingBundles()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract refreshBundles(Ljava/util/Collection;[Lorg/osgi/framework/FrameworkListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/Bundle;",
            ">;[",
            "Lorg/osgi/framework/FrameworkListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resolveBundles(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method
